function f1(a)
    b = 5
    d = Uniform(a[1], b)
    var(d)
end

function f2(b)
    a = 3
    d = Uniform(a, b[1])
    var(d)
end

function f3(x)
    d = Uniform(x[1], x[2])
    var(d)
end

function grad1(p)
    a = p[1]
    b = 5
    [(a-b)/6]
end

function grad2(p)
    a = 3
    b = p[1]
    [(b-a)/6]
end

function grad3(x)
    a = x[1]
    b = x[2]
    [(a-b)/6, (b-a)/6]
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

pts2 = Vector{Float64}[
    [5.],
    [5.15],
    [5.5],
    [5.588],
    [5.708]
]

vec_pts = Vector{Float64}[
    [1., 1.708],
    [1.15, 1.588],
    [1.5, 1.95],
    [1.588, 1.85],
    [1.708, 2.0]
]

for p in pts
    @assert grad1(p) ≈ agrad1(p)
end

for p in pts2
    @assert grad2(p) ≈ agrad2(p)
end

for vp in vec_pts
    @assert grad3(vp) ≈ agrad3(vp)
end
