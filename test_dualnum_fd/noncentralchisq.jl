function f1(ν)
    λ = 2
    d = NoncentralChisq(ν[1], λ)
    mean(d)
end

function f2(λ)
    ν = 3
    d = NoncentralChisq(ν, λ[1])
    mean(d)
end

function f3(x)
    d = NoncentralChisq(x[1], x[2])
    mean(d)
end

function grad1(ν)
    [1]
end

function grad2(λ)
    [1]
end

function grad3(x)
    [1, 1]
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
