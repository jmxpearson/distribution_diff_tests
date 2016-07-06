function f1(μ)
    n = 10
    σ = 2
    d = LogNormal(μ[1], σ)
    mean(d)
end

function f2(σ)
    n = 10
    μ = 3
    d = LogNormal(μ, σ[1])
    mean(d)
end

function f3(x)
    n = 10
    d = LogNormal(x[1], x[2])
    mean(d)
end

function grad1(μ)
    n = 10
    σ = 2

    [exp(μ[1] + σ^2/2)]
end

function grad2(σ)
    n = 10
    μ = 3

    [exp(μ + σ[1]^2/2)*σ[1]]
end

function grad3(x)
    n = 10
    μ = x[1]
    σ = x[2]

    [exp(μ + σ^2/2), exp(μ + σ^2/2)*σ]
end

agrad1 = ForwardDiff.gradient(f1)
agrad2 = ForwardDiff.gradient(f2)
agrad3 = ForwardDiff.gradient(f3)

pts = Vector{Float64}[
    [1.],
    [1.15],
    [1.5],
    [1.588],
    [1.708]
]

vec_pts = Vector{Float64}[
    [1., 1.708],
    [1.15, 1.588],
    [1.5, 1.15],
    [1.588, 1.5],
    [1.708, 1.]
]

for p in pts
    @assert grad1(p) ≈ agrad1(p)
    @assert grad2(p) ≈ agrad2(p)
end

for vp in vec_pts
    @assert grad3(vp) ≈ agrad3(vp)
end
