using SQLite, DBInterface

db_path = joinpath(@__DIR__, "CEB_DB.db")

db = SQLite.DB(db_path)

# Безопасно возвращает первый элемент itr или default, если itr пуст
first_or(itr, default) = (r=first(itr, 1); isempty(r) ? default : r[1])

function ceb_params(substance, db)
    # 1. Ищем ID вещества по подстроке имени
    row = first_or(DBInterface.execute(db, "SELECT ID FROM Substances WHERE Name LIKE ? LIMIT 1", ("%" * substance * "%",)), nothing)

    if row === nothing
        error("Вещества «$substance» нет в базе")
    end

    fid = row.ID

    # 2. Параметры Леннарда-Джонса и Штокмайера из таблицы CEB
    ceb = first_or(DBInterface.execute(db, "SELECT Sigma, Epsilon, Mu FROM CEB WHERE ID = ?", (fid,)), nothing)

    if ceb === nothing
        error("Для вещества ID=$fid нет записи в таблице CEB")
    end

    σ₀, ε, μ = ceb.Sigma, ceb.Epsilon, ceb.Mu

    # 3. Молярная масса из таблицы Substances
    sub = first_or(DBInterface.execute(db, "SELECT M FROM Substances WHERE ID = ?", (fid,)), nothing)

    if sub === nothing
        error("Для вещества ID=$fid нет записи в substances")
    end

    M = sub.M

    return CEB_Visc([σ₀ * 1e-10, ε, μ, M / 1000], ε * 0.1, ε * 100)
end