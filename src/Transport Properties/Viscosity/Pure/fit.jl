using LsqFit    # Пакет для аппроксимации данных методом наименьших квадратов

function andrade_fit(T, p)
    return @. exp(p[1] + p[2] / T + p[3] * log(T))
end

function andrade_visc_fit(T, μ)
    p₀ = [1.0, 2.0, -3.0]    # Начальные приближения для эмпирических констант
    p = curve_fit(andrade_fit, T, μ, p₀).param
    return Andrade(p, minimum(T), maximum(T))
end

function DIPPR_fit(T, p)
    return @. exp(p[1] + p[2] / T + p[3] * log(T) + p[4] * T^p[5])
end

function DIPPR_visc_fit(T, μ)
    p₀ = [1.0, 2.0, -3.0, 4.0, 5.0]    # Начальные приближения для эмпирических констант
    p = curve_fit(DIPPR_fit, T, μ, p₀).param
    return DIPPR(p, minimum(T), maximum(T))
end

function IKCAPE_fit(T, p)
    return @. p[1] * exp(p[2] / T) + p[3]
end

function IKCAPE_visc_fit(T, μ)
    p₀ = [1.0, 2.0, 5.0]    # Начальные приближения для эмпирических констант
    p = curve_fit(IKCAPE_fit, T, μ, p₀).param
    return IKCAPE(p, minimum(T), maximum(T))
end
