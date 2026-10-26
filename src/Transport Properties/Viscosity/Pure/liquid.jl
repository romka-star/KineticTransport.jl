function viscosity(model::Andrade, T::Number)    # Динамическая вязкость чистых жидкостей
    A = model.params[1]    # Эмпирические константы уравнения (A, B, C)
    B = model.params[2]
    C = model.params[3]
    return exp(A + B / T + C * log(T))
end

function viscosity(model::DIPPR, T::Number)    # Динамическая вязкость чистых жидкостей
    C₁ = model.params[1]    # Эмпирические константы уравнения (C₁, C₂, C₃, C₄, C₅)
    C₂ = model.params[2]
    C₃ = model.params[3]
    C₄ = model.params[4]
    C₅ = model.params[5]
    return exp(C₁ + C₂ / T + C₃ * log(T) + C₄ * T^C₅)
end

function viscosity(model::IKCAPE, T::Number)    # Динамическая вязкость чистых жидкостей
    C₁ = model.params[1]    # Эмпирические константы уравнения (C₁, C₂, C₃)
    C₂ = model.params[2]
    C₃ = model.params[3]
    return C₁ * exp(C₂ / T) + C₃
end

function viscosity(model::PPDS_Liq_Visc, T::Number)    # Динамическая вязкость чистых жидкостей
    A = model.params[1]    # Эмпирические константы уравнения (A, B, C, D, E)
    B = model.params[2]
    C = model.params[3]
    D = model.params[4]
    E = model.params[5]
    return E * exp(A * ((C - T) / (T - D))^1/3 + B * ((C - T) / (T - D))^4/3)
end
