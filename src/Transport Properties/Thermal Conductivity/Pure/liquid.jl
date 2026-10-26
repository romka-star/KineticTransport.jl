function thermal_conductivity(model::PPDS_Liq_Therm, T::Number)    # Коэффициент теплопроводности чистых жидкостей
    A = model.params[1]    # Эмпирические константы уравнения (A, B, C, D, E)
    B = model.params[2]
    C = model.params[3]
    D = model.params[4]
    E = model.params[5]
    return A + B * T + C * T^2 + D * T^3 + E * T^4
end