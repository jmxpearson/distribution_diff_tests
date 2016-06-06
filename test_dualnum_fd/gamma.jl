function f1(α)
    Θ = 2
    d = Gamma(α[1], Θ)
    mean(d)
end

function f2(Θ)
    α = 3
    d = Gamma(α, Θ[1])
    mean(d)
end

function f3(x)
    d = Gamma(x[1], x[2])
    mean(d)
end

function grad1(α)
    Θ = 2
    [Θ]
end

function grad2(Θ)
    α = 3
    [α]
end

function grad3(x)
    α = x[1]
    Θ = x[2]
    [Θ, α]
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
