function f1(μ)
    σ = 2
    ξ = 0
    d = GeneralizedExtremeValue(μ[1], σ, ξ)
    mean(d)
end

function f2(σ)
    μ = 0
    ξ = 0
    d = GeneralizedExtremeValue(μ, σ[1], ξ)
    mean(d)
end

function f3(ξ)
    μ = 0
    σ = 2
    d = GeneralizedExtremeValue(μ, σ, ξ[1])
    Distributions.testfd(d)
end

function f4(x)
    d = GeneralizedExtremeValue(x[1], x[2], x[3])
    mean(d)
end

function grad1(μ)
    [1]
end

function grad2(σ)
    const γ = 0.57721566490153286060
    [γ]
end

function grad3(ξ)
    [3ξ[1]^2]
end

function grad4(x)
    const γ = 0.57721566490153286060
    [1, γ, 0]
end

agrad1 = ForwardDiff.gradient(f1)
agrad2 = ForwardDiff.gradient(f2)
agrad3 = ForwardDiff.gradient(f3)
agrad4 = ForwardDiff.gradient(f4)

pts = Vector{Float64}[
    [2.1],
    [2.15],
    [2.5],
    [2.588],
    [2.708]
]

vec_pts = Vector{Float64}[
    [2.1, 2.708, 0],
    [2.15, 2.588, 0],
    [2.5, 2.15, 0],
    [2.588, 2.5, 0],
    [2.708, 2.1, 0]
]

for p in pts
    @assert grad1(p) ≈ agrad1(p)
    @assert grad2(p) ≈ agrad2(p)
    @assert grad3(p) ≈ agrad3(p)
end

for vp in vec_pts
    @assert grad4(vp) ≈ agrad4(vp)
end
