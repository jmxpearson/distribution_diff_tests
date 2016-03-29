# distribution_diff_tests
Integration tests of ForwardDiff.jl and Distributions.jl

I'm in the process of generalizing the types in [Distributions.jl](https://github.com/JuliaStats/Distributions.jl) to work with forward-mode automatic differentiation as implemented in [ForwardDiff.jl](https://github.com/JuliaStats/Distributions.jl). There's currently no clear place for the testing of this behavior to live, so right now, the tests live here.

To run, simply
```
julia runtests.jl
```
