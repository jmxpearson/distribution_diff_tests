function f1(p)
    θ = 3.0
    d = Weibull(p[1], θ)
    mean(d)
end

function f2(p)
    α = 3.0
    d = Weibull(α, p[1])
    mean(d)
end

function f3(x)
    d = Weibull(x[1], x[2])
    mean(d)
end

h(α) = 1 + 1/α

function grad1(p)
    α = p[1]
    θ = 3.0
    [-θ*α^2*gamma(h(α))*digamma(h(α))]
end

function grad2(p)
    α = 3.0
    [gamma(h(α))]
end

function grad3(x)
    θ = x[1]
    α = x[2]
    [-θ*α^2*gamma(h(α))*digamma(h(α)), gamma(h(α))]
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
