function f1(p)
    d = Exponential(p[1])
    mean(d)
end

function grad(p)
    [1]
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
