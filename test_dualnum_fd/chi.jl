function f1(p)
    d = Chi(p[1])
    mode(d)
end

function grad(p)
    p1 = p[1]
    [1/(2sqrt(p1 - 1))]
end

agrad = ForwardDiff.gradient(f1)

pts = Vector{Float64}[
    [1.0001],
    [1.001],
    [1.00234],
    [1.589],
    [1.999]
]
for p in pts
    @assert grad(p) ≈ agrad(p)
end
