using Distributions
using ForwardDiff
using Base.Test

tests = [
    "binomial",
    "betabinomial",
    "beta",
    "geometric",
    "bernoulli",
    "rayleigh",
    "erlang",
    "laplace",
    "logistic",
    "cosine",
    "arcsine",
    "betaprime",
    "cauchy",
    "chi",
    "exponential",
    "negativebinomial",
    "skellam",
    "categorical",
    #"poissonbinomial",
    "fdist",
    "fishernoncentralhypergeometric",
    "walleniusnoncentralhypergeometric",
    "epanechnikov",
    "frechet",
    "gamma",
    "poisson",
    "generalizedextremevalue",
    "generalizedpareto",
    "gumbel"
    ]

print_with_color(:blue, "Running tests:\n")

srand(12345)

include("utils.jl")

for t in tests
    test_fn = "$t.jl"
    print_with_color(:green, "* $test_fn\n")
    include(test_fn)
end
