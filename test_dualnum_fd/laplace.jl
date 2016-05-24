function f1(p)
    Θ = 3.0
    d = Laplace(p[1], Θ)
    mean(d)
end

function f2(p)
    μ = 3.0
    d = Laplace(μ, p[1])
    var(d)
end

function f3(x)
    d = Laplace(x[1], x[2])
    mean(d)
end

function grad1(p)
    [1]
end

function grad2(p)
    [4p[1]]
end

function grad3(x)
    [1, 0]
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

pts = Vector{Float64}[
    [1.],
    [1.15],
    [1.5],
    [1.588],
    [1.708]
]

for p in pts
    @assert grad1(p) ≈ agrad1(p)
    @assert grad2(p) ≈ agrad2(p)
end

for vp in vec_pts
    @assert grad3(vp) ≈ agrad3(vp)
end
