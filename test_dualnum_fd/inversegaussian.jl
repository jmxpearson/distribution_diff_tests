function f1(μ)
    λ = 2
    d = InverseGaussian(μ[1], λ)
    var(d)
end

function f2(λ)
    μ = 3
    d = InverseGaussian(μ, λ[1])
    var(d)
end

function f3(x)
    d = InverseGaussian(x[1], x[2])
    var(d)
end

function grad1(μ)
    λ = 2
    [3μ[1]^2/λ]
end

function grad2(λ)
    μ = 3
    [-μ^3/λ[1]^2]
end

function grad3(x)
    μ = x[1]
    λ = x[2]
    [3μ[1]^2/λ, -μ^3/λ[1]^2]
end

agrad1 = ForwardDiff.gradient(f1)
agrad2 = ForwardDiff.gradient(f2)
agrad3 = ForwardDiff.gradient(f3)

pts = Vector{Float64}[
    [2.1],
    [2.15],
    [2.5],
    [2.588],
    [2.708]
]

vec_pts = Vector{Float64}[
    [2.1, 2.708],
    [2.15, 2.588],
    [2.5, 2.15],
    [2.588, 2.5],
    [2.708, 2.1]
]

for p in pts
    @assert grad1(p) ≈ agrad1(p)
    @assert grad2(p) ≈ agrad2(p)
end

for vp in vec_pts
    @assert grad3(vp) ≈ agrad3(vp)
end
