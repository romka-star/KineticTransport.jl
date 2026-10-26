abstract type Transport_Properties_Model end

abstract type Viscosity_Model <: Transport_Properties_Model end

abstract type Thermal_Conductivity_Model <: Transport_Properties_Model end

abstract type Diffusion_Coefficient_Model <: Transport_Properties_Model end

abstract type Viscosity_Model_Pure <: Viscosity_Model end

abstract type Viscosity_Model_Mixture <: Viscosity_Model end

abstract type Thermal_Conductivity_Model_Pure <: Thermal_Conductivity_Model end

abstract type Thermal_Conductivity_Model_Mixture <: Thermal_Conductivity_Model end

abstract type Diffusion_Coefficient_Model_Pure <: Diffusion_Coefficient_Model end

abstract type Diffusion_Coefficient_Model_Mixture <: Diffusion_Coefficient_Model end

abstract type Viscosity_Model_Pure_Liquid <: Viscosity_Model_Pure end

abstract type Viscosity_Model_Pure_Vapor <: Viscosity_Model_Pure end

abstract type Viscosity_Model_Mixture_Liquid <: Viscosity_Model_Mixture end

abstract type Viscosity_Model_Mixture_Vapor <: Viscosity_Model_Mixture end

abstract type Thermal_Conductivity_Model_Pure_Liquid <: Thermal_Conductivity_Model_Pure end

abstract type Thermal_Conductivity_Model_Pure_Vapor <: Thermal_Conductivity_Model_Pure end

abstract type Thermal_Conductivity_Model_Mixture_Liquid <: Thermal_Conductivity_Model_Mixture end

abstract type Thermal_Conductivity_Model_Mixture_Vapor <: Thermal_Conductivity_Model_Mixture end

abstract type Diffusion_Coefficient_Model_Pure_Liquid <: Diffusion_Coefficient_Model_Pure end

abstract type Diffusion_Coefficient_Model_Pure_Vapor <: Diffusion_Coefficient_Model_Pure end

abstract type Diffusion_Coefficient_Model_Mixture_Liquid <: Diffusion_Coefficient_Model_Mixture end

abstract type Diffusion_Coefficient_Model_Mixture_Vapor <: Diffusion_Coefficient_Model_Mixture end


mutable struct Andrade <: Viscosity_Model_Pure_Liquid
    params::Array{Float64}
    Tmin::Float64
    Tmax::Float64
end

mutable struct DIPPR <: Viscosity_Model_Pure_Liquid
    params::Array{Float64}
    Tmin::Float64
    Tmax::Float64
end

mutable struct IKCAPE <: Viscosity_Model_Pure_Liquid
    params::Array{Float64}
    Tmin::Float64
    Tmax::Float64
end

mutable struct PPDS_Liq_Visc <: Viscosity_Model_Pure_Liquid
    params::Array{Float64}
    Tmin::Float64
    Tmax::Float64
end

mutable struct CEB_Visc <: Viscosity_Model_Pure_Vapor
    params::Array{Float64}
    Tmin::Float64
    Tmax::Float64
end

mutable struct PPDS_Vap_Visc <: Viscosity_Model_Pure_Vapor
    params::Array{Float64}
    Tmin::Float64
    Tmax::Float64
end

mutable struct PPDS_Liq_Therm <: Thermal_Conductivity_Model_Pure_Liquid
    params::Array{Float64}
    Tmin::Float64
    Tmax::Float64
end

mutable struct CEB_Therm <: Thermal_Conductivity_Model_Pure_Vapor
    params::Array{Float64}
    Tmin::Float64
    Tmax::Float64
end

mutable struct PPDS_Vap_Therm <: Thermal_Conductivity_Model_Pure_Vapor
    params::Array{Float64}
    Tmin::Float64
    Tmax::Float64
end

mutable struct CEB_Diff <: Diffusion_Coefficient_Model_Pure_Vapor
    params::Array{Float64}
    Tmin::Float64
    Tmax::Float64
end