function viscosity_pure(model::Andrade, T::Number)
    A = model.params[1]
    B = model.params[2]
    C = model.params[3]
    return exp(A + B/T + C * log(T))
end

function viscosity_pure(model::DIPPR, T::Number)
    C1 = model.params[1]
    C2 = model.params[2]
    C3 = model.params[3]
    C4 = model.params[4]
    C5 = model.params[5]
    return exp(C1 + C2/T + C3*log(T) + C4*T^C5)
end

function viscosity_pure(model::IKCAPE, T::Number)
    C1 = model.params[1]
    C2 = model.params[2]
    C3 = model.params[3]
    return C1 * exp(C2/T) + C3
end

function viscosity_pure(model::PPDS, T::Number)
    A = model.params[1]
    B = model.params[2]
    C = model.params[3]
    D = model.params[4]
    E = model.params[5]
    return E * exp(A * ((C - T) / (T - D))^1/3 + B * ((C - T) / (T - D))^4/3)
end
