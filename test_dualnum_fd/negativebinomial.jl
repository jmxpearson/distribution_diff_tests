function f1(r)
    p = 0.76
    d = NegativeBinomial(r[1], p)
    mean(d)
end

function f2(p)
    r = 0.76
    d = NegativeBinomial(r, p[1])
    mean(d)
end

function f3(x)
    d = NegativeBinomial(x[1], x[2])
    mean(d)
end

function grad1(r)
    p = 0.76
    [(1-p)/p]
end

function grad2(p)
    r = 0.76
    [-r/p[1]*(1 + (1-p[1])/p[1])]
end

function grad3(x)
    r = x[1]
    p = x[2]

    [(1-p)/p, -r/p*(1 + (1-p)/p)]
end

agrad1 = ForwardDiff.gradient(f1)
agrad2 = ForwardDiff.gradient(f2)
agrad3 = ForwardDiff.gradient(f3)

pts = Vector{Float64}[
    [0.99],
    [0.15],
    [0.5],
    [0.588],
    [0.708]
]

vec_pts = Vector{Float64}[
    [0.99, 0.708],
    [0.15, 0.588],
    [0.5, 0.15],
    [0.588, 0.99],
    [0.708, 0.5]
]

for p in pts
    @assert grad1(p) ≈ agrad1(p)
    @assert grad2(p) ≈ agrad2(p)
end

for vp in vec_pts
    @assert grad3(vp) ≈ agrad3(vp)
end
