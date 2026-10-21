abstract type ViscosityModel end

abstract type ViscosityModelPure <: ViscosityModel end

abstract type ViscosityModelPureLiquid <: ViscosityModelPure end

abstract type ViscosityModelPureVapor <: ViscosityModelPure end

mutable struct Andrade <: ViscosityModelPureLiquid
    params::Array{Float64}
    Tmin::Float64 
    Tmax::Float64
end

mutable struct DIPPR <: ViscosityModelPureLiquid
    params::Array{Float64}
    Tmin::Float64 
    Tmax::Float64
end

mutable struct IKCAPE <: ViscosityModelPureLiquid
    params::Array{Float64}
    Tmin::Float64 
    Tmax::Float64
end

mutable struct PPDS <: ViscosityModelPureLiquid
    params::Array{Float64}
    Tmin::Float64 
    Tmax::Float64
end

mutable struct Chapman_Enskog_Brokaw <: ViscosityModelPureVapor
    params::Array{Float64}
    Tmin::Float64 
    Tmax::Float64
end