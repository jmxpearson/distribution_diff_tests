function f1(ν1)
    ν2
    ν2 = 2
    d = FDist(ν1[1], ν2)
    mode(d)
end

function f2(ν2)
    ν1 = 3
    d = FDist(ν1, ν2[1])
    mode(d)
end

function f3(x)
    d = FDist(x[1], x[2])
    mode(d)
end

function grad1(p)
    ν1 = p[1]
    ν2 = 2
    [2ν2 / ((ν2+2)*ν1^2)]
end

function grad2(p)
    ν1 = 3
    ν2 = p[1]
    [2(ν1-2)/(ν1*(ν2+2)^2)]
end

function grad3(x)
    ν1 = x[1]
    ν2 = x[2]
    [2ν2 / ((ν2+2)*ν1^2), 2(ν1-2)/(ν1*(ν2+2)^2)]
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
