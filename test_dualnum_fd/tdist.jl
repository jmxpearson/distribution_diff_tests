function f1(p)
    d = TDist(p[1])
    var(d)
end

function grad(p)
    ν = p[1]
    [-2/(ν-2)^2]
end

agrad = ForwardDiff.gradient(f1)

pts = Vector{Float64}[
    [2.0001],
    [2.001],
    [2.00234],
    [2.589],
    [2.999]
]
for p in pts
    @assert grad(p) ≈ agrad(p)
end
