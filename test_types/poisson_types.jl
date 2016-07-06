using Distributions
using ForwardDiff

integer = 2
float = 2.0
dualnum = ForwardDiff.GradientNumber(2.0)

poisson_integer = Poisson(integer)
poisson_float = Poisson(float)
poisson_dual = Poisson(dualnum)

println("____________________________")
println("ntrials")
println("____________________________")
println()
println("----integer----")
println()
@code_warntype ntrials(poisson_integer)
println()
println("----float----")
println()
@code_warntype ntrials(poisson_float)
println()
println("----dual----")
println()
@code_warntype ntrials(poisson_dual)
println()
println()
println()
println()

println("____________________________")
println("succprob")
println("____________________________")
println()
println("----integer----")
println()
@code_warntype succprob(poisson_integer)
println()
println("----float----")
println()
@code_warntype succprob(poisson_float)
println()
println("----dual----")
println()
@code_warntype succprob(poisson_dual)
println()
println()
println()
println()

println("____________________________")
println("failprob")
println("____________________________")
println()
println("----integer----")
println()
@code_warntype failprob(poisson_integer)
println()
println("----float----")
println()
@code_warntype failprob(poisson_float)
println()
println("----dual----")
println()
@code_warntype failprob(poisson_dual)
println()
println()
println()
println()

println("____________________________")
println("params")
println("____________________________")
println()
println("----integer----")
println()
@code_warntype params(poisson_integer)
println()
println("----float----")
println()
@code_warntype params(poisson_float)
println()
println("----dual----")
println()
@code_warntype params(poisson_dual)
println()
println()
println()
println()

println("____________________________")
println("mean")
println("____________________________")
println()
println("----integer----")
println()
@code_warntype mean(poisson_integer)
println()
println("----float----")
println()
@code_warntype mean(poisson_float)
println()
println("----dual----")
println()
@code_warntype mean(poisson_dual)
println()
println()
println()
println()

println("____________________________")
println("var")
println("____________________________")
println()
println("----integer----")
println()
@code_warntype var(poisson_integer)
println()
println("----float----")
println()
@code_warntype var(poisson_float)
println()
println("----dual----")
println()
@code_warntype var(poisson_dual)
println()
println()
println()
println()

println("____________________________")
println("mode")
println("____________________________")
println()
println("----integer----")
println()
@code_warntype mode(poisson_integer)
println()
println("----float----")
println()
@code_warntype mode(poisson_float)
println()
println("----dual----")
println()
@code_warntype mode(poisson_dual)
println()
println()
println()
println()

println("____________________________")
println("modes")
println("____________________________")
println()
println("----integer----")
println()
@code_warntype modes(poisson_integer)
println()
println("----float----")
println()
@code_warntype modes(poisson_float)
println()
println("----dual----")
println()
@code_warntype modes(poisson_dual)
println()
println()
println()
println()

println("____________________________")
println("median")
println("____________________________")
println()
println("----integer----")
println()
@code_warntype median(poisson_integer)
println()
println("----float----")
println()
@code_warntype median(poisson_float)
println()
println("----dual----")
println()
@code_warntype median(poisson_dual)
println()
println()
println()
println()

println("____________________________")
println("skewness")
println("____________________________")
println()
println("----integer----")
println()
@code_warntype skewness(poisson_integer)
println()
println("----float----")
println()
@code_warntype skewness(poisson_float)
println()
println("----dual----")
println()
@code_warntype skewness(poisson_dual)
println()
println()
println()
println()

println("____________________________")
println("kurtosis")
println("____________________________")
println()
println("----integer----")
println()
@code_warntype kurtosis(poisson_integer)
println()
println("----float----")
println()
@code_warntype kurtosis(poisson_float)
println()
println("----dual----")
println()
@code_warntype kurtosis(poisson_dual)
println()
println()
println()
println()

println("____________________________")
println("entropy")
println("____________________________")
println()
println("----integer----")
println()
@code_warntype entropy(poisson_integer)
println()
println("----float----")
println()
@code_warntype entropy(poisson_float)
println()
println("----dual----")
println()
@code_warntype entropy(poisson_dual)
println()
println()
println()
println()

println("____________________________")
println("rand")
println("____________________________")
println()
println("----integer----")
println()
@code_warntype rand(poisson_integer)
println()
println("----float----")
println()
@code_warntype rand(poisson_float)
println()
println("----dual----")
println()
@code_warntype rand(poisson_dual)
println()
println()
println()
println()

eval_at = 2

println("____________________________")
println("pdf")
println("____________________________")
println()
println("----integer----")
println()
@code_warntype pdf(poisson_integer, eval_at)
println()
println("----float----")
println()
@code_warntype pdf(poisson_float, eval_at)
println()
println("----dual----")
println()
@code_warntype pdf(poisson_dual, eval_at)
println()
println()
println()
println()

println("____________________________")
println("mgf")
println("____________________________")
println()
println("----integer----")
println()
@code_warntype mgf(poisson_integer, eval_at)
println()
println("----float----")
println()
@code_warntype mgf(poisson_float, eval_at)
println()
println("----dual----")
println()
@code_warntype mgf(poisson_dual, eval_at)
println()
println()
println()
println()

println("____________________________")
println("cf")
println("____________________________")
println()
println("----integer----")
println()
@code_warntype cf(poisson_integer, eval_at)
println()
println("----float----")
println()
@code_warntype cf(poisson_float, eval_at)
println()
println("----dual----")
println()
@code_warntype cf(poisson_dual, eval_at)
println()
println()
println()
println()

