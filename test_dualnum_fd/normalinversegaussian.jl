function f1(p)
    μ = p[1]
    α = 3
    β = 2
    δ = 4
    d = NormalInverseGaussian(μ, α, β, δ)
    mean(d)
end

function f2(p)
    μ = 1
    α = p[1]
    β = 2
    δ = 4
    d = NormalInverseGaussian(μ, α, β, δ)
    mean(d)
end

function f3(p)
    μ = 1
    α = 3
    β = p[1]
    δ = 4
    d = NormalInverseGaussian(μ, α, β, δ)
    mean(d)
end

function f4(p)
    μ = 1
    α = 3
    β = 2
    δ = p[1]
    d = NormalInverseGaussian(μ, α, β, δ)
    mean(d)
end

function f5(x)
    μ = x[1]
    α = x[2]
    β = x[3]
    δ = x[4]
    d = NormalInverseGaussian(μ[1], σ, ξ)
    mean(d)
end

function grad1(p)
    [1]
end

function grad2(p)
    α = p[1]
    β = 2
    δ = 4
    γ = sqrt(α^2 + β^2)
    [-δ*β*α/γ^3]
end

function grad3(p)
    α = 3
    β = p[1]
    δ = 4
    γ = sqrt(α^2 + β^2)
    [δ*(α^2/γ^3)]
end

function grad4(p)
    α = 3
    β = 2
    γ = sqrt(α^2 + β^2)
    [β/γ]
end

function grad5(p)
    α = 2
    β = 3
    δ = 4
    γ = sqrt(α^2 + β^2)
    [1, -δ*β*α/γ^3, δ*(α^2/γ^3), β/γ]
end

agrad1 = ForwardDiff.gradient(f1)
agrad2 = ForwardDiff.gradient(f2)
agrad3 = ForwardDiff.gradient(f3)
agrad4 = ForwardDiff.gradient(f4)
agrad5 = ForwardDiff.gradient(f5)

pts = Vector{Float64}[
    [0.1],
    [0.15],
    [0.5],
    [0.588],
    [0.708]
]

pts2 = Vector{Float64}[
    [5.1],
    [5.15],
    [5.5],
    [5.588],
    [5.708]
]

vec_pts = Vector{Float64}[
    [0.1, 0.708, 0.3, 0.342],
    [0.15, 0.588, 0.234, 0.234],
    [0.5, 0.15, 0.123, 0.892],
    [0.588, 0.5, 0.623, 0.234],
    [0.708, 0.1, 0.43, 0.781]
]

for p in pts
    @assert grad1(p) ≈ agrad1(p)
    @assert grad3(p) ≈ agrad3(p)
    @assert grad4(vp) ≈ agrad4(vp)
end

for p in pts2
    @assert grad2(p) ≈ agrad2(p)
end

for vp in vec_pts
    @assert grad5(vp) ≈ agrad5(vp)
end
