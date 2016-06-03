function f1(x)
    d = PoissonBinomial(x)
    mean(d)
end

function grad(x)
    ones(Float64, length(x))
end


agrad = ForwardDiff.gradient(f1)

pts = Vector{Float64}[
    [.1, .2, .3, .4],
    [.4, .5],
    [.21, .34],
    [.2, .3134, .2]
]

for p in pts
    @assert grad(p) ≈ agrad(p)
end
