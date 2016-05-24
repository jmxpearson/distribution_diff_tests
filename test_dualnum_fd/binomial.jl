function f1(p)
    n = 10
    d = Binomial(n, p[1])
    var(d)
end

n = 10
grad(p) = [n*(1 - 2p[1])]

agrad = ForwardDiff.gradient(f1)

pts = Vector{Float64}[
    [0.0001],
    [0.001],
    [0.00234],
    [0.589],
    [0.999]
]
for p in pts
    @assert grad(p) ≈ agrad(p)
end
