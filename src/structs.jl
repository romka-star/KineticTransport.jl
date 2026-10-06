abstract type ViscosityModel end

abstract type ViscosityModelPure <: ViscosityModel end

mutable struct Andrade <: ViscosityModelPure
    params::Array{Float64}
    Tmin::Float64 
    Tmax::Float64
end

mutable struct DIPPR <: ViscosityModelPure
    params::Array{Float64}
    Tmin::Float64 
    Tmax::Float64
end

mutable struct IKCAPE <: ViscosityModelPure
    params::Array{Float64}
    Tmin::Float64 
    Tmax::Float64
end