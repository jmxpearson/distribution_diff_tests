function f1(μ)
    σ = 2
    d = SymTriangularDist(μ[1], σ)
    x = 2
    Distributions.zval(d, x)
end

function f2(σ)
    μ = 3
    d = SymTriangularDist(μ, σ[1])
    x = 2
    Distributions.zval(d, x)
end

function f3(x)
    d = SymTriangularDist(x[1], x[2])
    x = 2
    Distributions.zval(d, x)
end

function grad1(p)
    σ = 2
    [-1/σ]
end

function grad2(p)
    μ = 3
    σ = p[1]
    x = 2
    [(μ-x)/σ^2]
end

function grad3(xvec)
    μ = xvec[1]
    σ = xvec[2]
    x = 2
    [-1/σ, (μ-x)/σ^2]
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
