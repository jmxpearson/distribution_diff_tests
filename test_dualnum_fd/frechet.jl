function f1(α)
    Θ = 2
    d = Frechet(α[1], Θ)
    entropy(d)
end

function f2(Θ)
    α = 3
    d = Frechet(α, Θ[1])
    entropy(d)
end

function f3(x)
    d = Frechet(x[1], x[2])
    entropy(d)
end

function grad1(α)
    const γ = 0.57721566490153286060
    [-(γ + α[1]) / α[1]^2]
end

function grad2(Θ)
    [1/Θ[1]]
end

function grad3(x)
    const γ = 0.57721566490153286060
    α = x[1]
    Θ = x[2]
    [-(γ + α) / α^2, 1/Θ]
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
