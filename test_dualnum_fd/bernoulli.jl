function f1(p)
    d = Bernoulli(p[1])
    var(d)
end

grad(p) = [1 - 2p[1]]

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
