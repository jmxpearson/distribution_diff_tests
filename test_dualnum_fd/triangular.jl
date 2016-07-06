function f1(a)
    b = 3
    c = 2
    d = TriangularDist(a[1], b, c)
    mean(d)
end

function f2(b)
    a = 0
    c = 2
    d = TriangularDist(a, b[1], c)
    mean(d)
end

function f3(c)
    a = 0
    b = 3
    d = TriangularDist(a, b, c[1])
    mean(d)
end

function f4(x)
    d = TriangularDist(x[1], x[2], x[3])
    mean(d)
end

function grad1(a)
    [1/3]
end

function grad2(b)
    [1/3]
end

function grad3(c)
    [1/3]
end

function grad4(x)
    [1/3, 1/3, 1/3]
end

agrad1 = ForwardDiff.gradient(f1)
agrad2 = ForwardDiff.gradient(f2)
agrad3 = ForwardDiff.gradient(f3)
agrad4 = ForwardDiff.gradient(f4)

pts_a = Vector{Float64}[
    [0.1],
    [0.15],
    [0.5],
    [0.588],
    [0.708]
]

pts_b = Vector{Float64}[
    [3.1],
    [3.15],
    [3.5],
    [3.588],
    [3.708]
]

pts_c = Vector{Float64}[
    [2.1],
    [2.15],
    [2.5],
    [2.588],
    [2.708]
]

vec_pts = Vector{Float64}[
    [2.1, 3, 2.708],
    [2.15, 3, 2.588],
    [2.5, 3, 2.68],
    [2.588, 3, 2.59],
    [2.708, 3, 2.9]
]

for p in pts_a
    @assert grad1(p) ≈ agrad1(p)
end

for p in pts_b
    @assert grad2(p) ≈ agrad2(p)
end

for p in pts_c
    @assert grad3(p) ≈ agrad3(p)
end

for vp in vec_pts
    @assert grad4(vp) ≈ agrad4(vp)
end
