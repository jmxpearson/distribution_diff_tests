function f1(x)
    p = x / sum(x)
    d = Categorical([p...])
    mean(d)
end

function grad(x)
    g = zeros(Float64, length(x))
    n = sum(x)
    w_n = 0
    for i = 1:length(x)
        w_n += i*x[i]
    end
    for i = 1:length(x)
        g[i] = 1/n^2 * (i*n - w_n)
    end

    g
end


agrad = ForwardDiff.gradient(f1)

pts = Vector{Float64}[
    [1, 2, 3, 4],
    [4, 5],
    [2.1, 3.4],
    [2, 3.134, 2]
]

for p in pts
    @assert grad(p) ≈ agrad(p)
end
