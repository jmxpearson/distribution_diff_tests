function f1(μ)
    σ = 2
    d = Cauchy(μ[1], σ)
    mode(d)
end

function f2(σ)
    μ = 2
    d = Cauchy(μ, σ[1])
    mode(d)
end

function f3(x)
    d = Cauchy(x[1], x[2])
    mode(d)
end

function grad1(μ)
    [1]
end

function grad2(σ)
    [0]
end

function grad3(x)
    [1, 0]
end

agrad1 = ForwardDiff.gradient(f1)
agrad2 = ForwardDiff.gradient(f2)
agrad3 = ForwardDiff.gradient(f3)

pts = Vector{Float64}[
    [1.1],
    [1.15],
    [1.5],
    [1.588],
    [1.708]
]

vec_pts = Vector{Float64}[
    [1.1, 1.708],
    [1.15, 1.588],
    [1.5, 1.15],
    [1.588, 1.5],
    [1.708, 1.1]
]

for p in pts
    @assert grad1(p) ≈ agrad1(p)
    @assert grad2(p) ≈ agrad2(p)
end

for vp in vec_pts
    @assert grad3(vp) ≈ agrad3(vp)
end
