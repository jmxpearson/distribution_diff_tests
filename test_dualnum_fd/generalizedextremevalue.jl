function f1(μ)
    σ = 2
    ξ = 0.1
    d = GeneralizedExtremeValue(μ[1], σ, ξ)
    mean(d)
end

function f2(σ)
    μ = 0
    ξ = 0.1
    d = GeneralizedExtremeValue(μ, σ[1], ξ)
    mean(d)
end

function f3(ξ)
    μ = 0
    σ = 2
    d = GeneralizedExtremeValue(μ, σ, ξ[1])
    mean(d)
end

function f4(x)
    d = GeneralizedExtremeValue(x[1], x[2], x[3])
    mean(d)
end

h(ξ) = 1/ξ
j(ξ) = gamma(1-ξ) - 1
h_der(ξ) = -1/ξ^2
j_der(ξ) = -gamma(1-ξ)*digamma(1-ξ)

function grad1(p)
    [1]
end

function grad2(p)
    ξ = 0.1
    [h(ξ)*j(ξ)]
end

function grad3(p)
    σ = 2
    ξ = p[1]
    [σ*(h_der(ξ)*j(ξ) + h(ξ)*j_der(ξ))]
end

function grad4(x)
    σ = x[2]
    ξ = x[3]
    [1, h(ξ)*j(ξ), σ*(h_der(ξ)*j(ξ) + h(ξ)*j_der(ξ))]
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
    [2.1, 2.708, 0.1],
    [2.15, 2.588, 0.1],
    [2.5, 2.15, 0.1],
    [2.588, 2.5, 0.1],
    [2.708, 2.1, 0.1]
]

for p in pts
    @assert grad1(p) ≈ agrad1(p)
    @assert grad2(p) ≈ agrad2(p)
    @assert grad3(p) ≈ agrad3(p)
end

for vp in vec_pts
    @assert grad4(vp) ≈ agrad4(vp)
end
