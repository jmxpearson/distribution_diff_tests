function f1(p)
    d = Rayleigh(p[1])
    mean(d)
end

grad(p) = [sqrt(pi/2)]

agrad = ForwardDiff.gradient(f1)

pts = Vector{Float64}[
    [1],
    [1.15],
    [1.5],
    [1.588],
    [2.708]
]
for p in pts
    @assert grad(p) ≈ agrad(p)
end
