function f1(ν1)
    ν2 = 3
    λ = 1
    d = NoncentralF(ν1[1], ν2, λ)
    mean(d)
end

function f2(ν2)
    ν1 = 1
    λ = 1
    d = NoncentralF(ν1, ν2[1], λ)
    mean(d)
end

function f3(λ)
    ν1 = 1
    ν2 = 3
    d = NoncentralF(ν1, ν2, λ[1])
    mean(d)
end

function f4(x)
    d = NoncentralF(x[1], x[2], x[3])
    mean(d)
end

function grad1(p)
    ν1 = p[1]
    ν2 = 3
    λ = 1
    [-ν2/(ν2-2) * λ/(ν1^2)]
end

function grad2(p)
    ν1 = 1
    ν2 = p[1]
    λ = 1
    [(ν1+λ)/ν1 * -2/(ν2-2)^2]
end

function grad3(p)
    ν1 = 1
    ν2 = 3
    λ = p[1]
    [ν2/(ν1*(ν2-2))]
end

function grad4(x)
    ν1 = x[1]
    ν2 = x[2]
    λ = x[3]
    [ν2/(ν2-2) * -λ/ν1^2, (ν1+λ)/ν1 * -2/(ν2-2)^2, ν2/(ν1*(ν2-2))]
end

agrad1 = ForwardDiff.gradient(f1)
agrad2 = ForwardDiff.gradient(f2)
agrad3 = ForwardDiff.gradient(f3)
agrad4 = ForwardDiff.gradient(f4)

pts = Vector{Float64}[
    [3],
    [2.15],
    [2.5],
    [2.588],
    [2.708]
]

vec_pts = Vector{Float64}[
    [2.1, 2.708, 0],
    [2.15, 2.588, 0],
    [2.5, 2.15, 0],
    [2.588, 2.5, 0],
    [2.708, 2.1, 0]
]

for p in pts
    @assert grad1(p) ≈ agrad1(p)
    @assert grad2(p) ≈ agrad2(p)
    @assert grad3(p) ≈ agrad3(p)
end

for vp in vec_pts
    @assert grad4(vp) ≈ agrad4(vp)
end
