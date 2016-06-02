function f1(p)
    μ2 = 1
    d = Skellam(p[1], μ2)
    var(d)
end

function f2(p)
    μ1 = 1
    d = Skellam(μ1, p[1])
    var(d)
end

function f3(x)
    d = Skellam(x[1], x[2])
    var(d)
end

function grad1(p)
    [1]
end

function grad2(p)
    [1]
end

function grad3(x)
    [1, 1]
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
