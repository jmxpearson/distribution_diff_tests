function f1(p)
    σ = 3.0
    d = Levy(p[1], σ)
    mode(d)
end

function f2(p)
    μ = 3.0
    d = Levy(μ, p[1])
    mode(d)
end

function f3(x)
    d = Levy(x[1], x[2])
    mode(d)
end

function grad1(p)
    [1]
end

function grad2(p)
    [1/3]
end

function grad3(x)
    [1, 1/3]
end

agrad1 = ForwardDiff.gradient(f1)
agrad2 = ForwardDiff.gradient(f2)
agrad3 = ForwardDiff.gradient(f3)

pts = Vector{Float64}[
    [1],
    [1.15],
    [1.5],
    [1.588],
    [2.708]
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
