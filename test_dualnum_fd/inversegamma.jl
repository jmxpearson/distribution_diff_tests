function f1(α)
    θ = 2
    d = InverseGamma(α[1], θ)
    mode(d)
end

function f2(θ)
    α = 3
    d = InverseGamma(α, θ[1])
    mode(d)
end

function f3(x)
    d = InverseGamma(x[1], x[2])
    mode(d)
end

function grad1(α)
    θ = 2
    [-θ/(α[1] + 1)^2]
end

function grad2(θ)
    α = 3
    [1/(α + 1)]
end

function grad3(x)
    α = x[1]
    θ = x[2]
    [-θ/(α + 1)^2, 1/(α + 1)]
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
