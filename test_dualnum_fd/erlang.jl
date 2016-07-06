function f1(p)
    n = 10
    d = Erlang(n, p[1])
    mean(d)
end

n = 10
grad(p) = [n]

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
