using Distributions
using ForwardDiff

integer = 2
float = 2.0
dualnum = ForwardDiff.GradientNumber(2.0)

noncentralbeta_integer = NoncentralBeta(integer, integer, integer)
noncentralbeta_float = NoncentralBeta(float, float, float)
noncentralbeta_dual = NoncentralBeta(dualnum, dualnum, dualnum)

println("____________________________")
println("ntrials")
println("____________________________")
println()
println("----integer----")
println()
@code_warntype ntrials(noncentralbeta_integer)
println()
println("----float----")
println()
@code_warntype ntrials(noncentralbeta_float)
println()
println("----dual----")
println()
@code_warntype ntrials(noncentralbeta_dual)
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
@code_warntype succprob(noncentralbeta_integer)
println()
println("----float----")
println()
@code_warntype succprob(noncentralbeta_float)
println()
println("----dual----")
println()
@code_warntype succprob(noncentralbeta_dual)
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
@code_warntype failprob(noncentralbeta_integer)
println()
println("----float----")
println()
@code_warntype failprob(noncentralbeta_float)
println()
println("----dual----")
println()
@code_warntype failprob(noncentralbeta_dual)
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
@code_warntype params(noncentralbeta_integer)
println()
println("----float----")
println()
@code_warntype params(noncentralbeta_float)
println()
println("----dual----")
println()
@code_warntype params(noncentralbeta_dual)
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
@code_warntype mean(noncentralbeta_integer)
println()
println("----float----")
println()
@code_warntype mean(noncentralbeta_float)
println()
println("----dual----")
println()
@code_warntype mean(noncentralbeta_dual)
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
@code_warntype var(noncentralbeta_integer)
println()
println("----float----")
println()
@code_warntype var(noncentralbeta_float)
println()
println("----dual----")
println()
@code_warntype var(noncentralbeta_dual)
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
@code_warntype mode(noncentralbeta_integer)
println()
println("----float----")
println()
@code_warntype mode(noncentralbeta_float)
println()
println("----dual----")
println()
@code_warntype mode(noncentralbeta_dual)
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
@code_warntype modes(noncentralbeta_integer)
println()
println("----float----")
println()
@code_warntype modes(noncentralbeta_float)
println()
println("----dual----")
println()
@code_warntype modes(noncentralbeta_dual)
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
@code_warntype median(noncentralbeta_integer)
println()
println("----float----")
println()
@code_warntype median(noncentralbeta_float)
println()
println("----dual----")
println()
@code_warntype median(noncentralbeta_dual)
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
@code_warntype skewness(noncentralbeta_integer)
println()
println("----float----")
println()
@code_warntype skewness(noncentralbeta_float)
println()
println("----dual----")
println()
@code_warntype skewness(noncentralbeta_dual)
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
@code_warntype kurtosis(noncentralbeta_integer)
println()
println("----float----")
println()
@code_warntype kurtosis(noncentralbeta_float)
println()
println("----dual----")
println()
@code_warntype kurtosis(noncentralbeta_dual)
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
@code_warntype entropy(noncentralbeta_integer)
println()
println("----float----")
println()
@code_warntype entropy(noncentralbeta_float)
println()
println("----dual----")
println()
@code_warntype entropy(noncentralbeta_dual)
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
@code_warntype rand(noncentralbeta_integer)
println()
println("----float----")
println()
@code_warntype rand(noncentralbeta_float)
println()
println("----dual----")
println()
@code_warntype rand(noncentralbeta_dual)
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
@code_warntype pdf(noncentralbeta_integer, eval_at)
println()
println("----float----")
println()
@code_warntype pdf(noncentralbeta_float, eval_at)
println()
println("----dual----")
println()
@code_warntype pdf(noncentralbeta_dual, eval_at)
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
@code_warntype mgf(noncentralbeta_integer, eval_at)
println()
println("----float----")
println()
@code_warntype mgf(noncentralbeta_float, eval_at)
println()
println("----dual----")
println()
@code_warntype mgf(noncentralbeta_dual, eval_at)
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
@code_warntype cf(noncentralbeta_integer, eval_at)
println()
println("----float----")
println()
@code_warntype cf(noncentralbeta_float, eval_at)
println()
println("----dual----")
println()
@code_warntype cf(noncentralbeta_dual, eval_at)
println()
println()
println()
println()

