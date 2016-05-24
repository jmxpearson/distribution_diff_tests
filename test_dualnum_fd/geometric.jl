function f1(p)
    d = Geometric(p[1])
    var(d)
end

function grad(p)
    p1 = p[1]
    [-2*(1 - p1) / p1^3 - 1 / p1^2]
end

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
