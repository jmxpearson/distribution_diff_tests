function f1(p)
    a = 1
    d = Arcsine(a, p[1])
    mean(d)
end

function f2(p)
    b = 2
    d = Arcsine(p[1], b)
    mean(d)
end

function f3(x)
    d = Arcsine(x[1], x[2])
    mean(d)
end

function grad1(p)
    [1/2]
end

function grad2(p)
    [1/2]
end

function grad3(x)
    [1/2, 1/2]
end

agrad1 = ForwardDiff.gradient(f1)
agrad2 = ForwardDiff.gradient(f2)
agrad3 = ForwardDiff.gradient(f3)

pts = Vector{Float64}[
    [1.02],
    [1.15],
    [1.5],
    [1.588],
    [1.708]
]

vec_pts = Vector{Float64}[
    [1.02, 1.708],
    [1.15, 1.588],
    [1.5, 1.57],
    [1.588, 1.89],
    [1.708, 1.89]
]

for p in pts
    @assert grad1(p) ≈ agrad1(p)
    @assert grad2(p) ≈ agrad2(p)
end

for vp in vec_pts
    @assert grad3(vp) ≈ agrad3(vp)
end
