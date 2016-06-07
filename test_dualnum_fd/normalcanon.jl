function f1(η)
    λ = 2
    d = NormalCanon(η[1], λ)
    mean(d)
end

function f2(λ)
    η = 1
    d = NormalCanon(η, λ[1])
    mean(d)
end

function f3(x)
    d = NormalCanon(x[1], x[2])
    mean(d)
end

function grad1(p)
    λ = 2
    [1/λ]
end

function grad2(p)
    η = 1
    λ = p[1]
    [-η/λ^2]
end

function grad3(p)
    η = p[1]
    λ = p[2]
    [1/λ, -η/λ^2]
end

agrad1 = ForwardDiff.gradient(f1)
agrad2 = ForwardDiff.gradient(f2)
agrad3 = ForwardDiff.gradient(f3)

pts = Vector{Float64}[
    [1., 2.],
    [1.15, 0.75],
    [0.5, 3.75]
]
for p in pts
    @assert grad1([p[1]]) ≈ agrad1([p[1]])
    @assert grad2([p[2]]) ≈ agrad2([p[2]])
    @assert grad3(p) ≈ agrad3(p)
end
