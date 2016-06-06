function f1(μ)
    σ = 2
    ξ = 0
    d = GeneralizedPareto(μ[1], σ, ξ)
    mean(d)
end

function f2(σ)
    μ = 0
    ξ = 0
    d = GeneralizedPareto(μ, σ[1], ξ)
    mean(d)
end

function f3(ξ)
    μ = 0
    σ = 2
    d = GeneralizedPareto(μ, σ, ξ[1])
    mean(d)
end

function f4(x)
    d = GeneralizedPareto(x[1], x[2], x[3])
    mean(d)
end

function grad1(μ)
    [1]
end

function grad2(σ)
    ξ = 0
    [1/(1-ξ)]
end

function grad3(ξ)
    σ = 2
    [σ/(1-ξ[1])^2]
end

function grad4(x)
    σ = x[2]
    ξ = x[3]
    [1, 1/(1-ξ), σ/(1-ξ)^2]
end

agrad1 = ForwardDiff.gradient(f1)
agrad2 = ForwardDiff.gradient(f2)
agrad3 = ForwardDiff.gradient(f3)
agrad4 = ForwardDiff.gradient(f4)

pts = Vector{Float64}[
    [0.1],
    [0.15],
    [0.5],
    [0.588],
    [0.708]
]

vec_pts = Vector{Float64}[
    [0.1, 0.708, 0],
    [0.15, 0.588, 0],
    [0.5, 0.15, 0],
    [0.588, 0.5, 0],
    [0.708, 0.1, 0]
]

for p in pts
    @assert grad1(p) ≈ agrad1(p)
    @assert grad2(p) ≈ agrad2(p)
    @assert grad3(p) ≈ agrad3(p)
end

for vp in vec_pts
    @assert grad4(vp) ≈ agrad4(vp)
end
