function f1(p)
    σ = 2
    d = Biweight(p[1], σ)
    mean(d)
end

function f2(p)
    μ = 3
    d = Biweight(μ, p[1])
    var(d)
end

function f3(x)
    d = Biweight(x[1], x[2])
    mean(d)
end

function grad1(p)
    [1]
end

function grad2(p)
    σ = p[1]
    [2σ/7]
end

function grad3(x)
    σ = x[2]
    [1, 0]
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
