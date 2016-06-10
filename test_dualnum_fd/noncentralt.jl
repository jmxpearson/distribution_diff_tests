function f1(p)
    λ = 3.0
    d = NoncentralT(p[1], λ)
    mean(d)
end

function f2(p)
    ν = 3.0
    d = NoncentralT(ν, p[1])
    mean(d)
end

function f3(x)
    d = NoncentralT(x[1], x[2])
    mean(d)
end

h(ν) = sqrt(ν/2)
j(ν) = gamma((ν - 1)/2)
k(ν) = gamma(ν/2)
l(ν) = j(ν)/k(ν)

grad1_func(ν, λ) = λ/sqrt(2)*(1/(2*sqrt(ν)) + (1/2)*(digamma((ν-1)/2) - digamma(ν/2))) * j(ν)/k(ν)

function grad1(p)
    ν = p[1]
    λ = 3.0
    [grad1_func(ν, λ)]
end

function grad2(p)
    ν = 3.0
    [h(ν)*l(ν)]
end

function grad3(x)
    λ = x[1]
    ν = x[2]
    [grad1_func(ν, λ), sqrt(ν/2)*j(ν)/k(ν)]
end

agrad1 = ForwardDiff.gradient(f1)
agrad2 = ForwardDiff.gradient(f2)
agrad3 = ForwardDiff.gradient(f3)

pts = Vector{Float64}[
    [1.3],
    [1.15],
    [1.5],
    [1.588],
    [2.708]
]

vec_pts = Vector{Float64}[
    [1.3, 1.708],
    [1.15, 1.588],
    [1.5, 1.15],
    [1.588, 1.5],
    [1.708, 1.3]
]

for p in pts
    @assert grad1(p) ≈ agrad1(p)
    @assert grad2(p) ≈ agrad2(p)
end

for vp in vec_pts
    @assert grad3(vp) ≈ agrad3(vp)
end
