function f1(μ)
    θ = 2
    d = Gumbel(μ[1], θ)
    mean(d)
end

function f2(θ)
    μ = 3
    d = Gumbel(μ, θ[1])
    mean(d)
end

function f3(x)
    d = Gumbel(x[1], x[2])
    mean(d)
end

function grad1(μ)
    [1]
end

function grad2(θ)
    const γ = 0.57721566490153286060
    [γ]
end

function grad3(x)
    const γ = 0.57721566490153286060
    [1, γ]
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
