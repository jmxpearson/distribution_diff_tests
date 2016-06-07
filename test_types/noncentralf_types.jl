using Distributions
using ForwardDiff

integer = 2
float = 2.0
dualnum = ForwardDiff.GradientNumber(2.0)

noncentralf_integer = NoncentralF(integer, integer, integer)
noncentralf_float = NoncentralF(float, float, float)
noncentralf_dual = NoncentralF(dualnum, dualnum, dualnum)

println("____________________________")
println("ntrials")
println("____________________________")
println()
println("----integer----")
println()
@code_warntype ntrials(noncentralf_integer)
println()
println("----float----")
println()
@code_warntype ntrials(noncentralf_float)
println()
println("----dual----")
println()
@code_warntype ntrials(noncentralf_dual)
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
@code_warntype succprob(noncentralf_integer)
println()
println("----float----")
println()
@code_warntype succprob(noncentralf_float)
println()
println("----dual----")
println()
@code_warntype succprob(noncentralf_dual)
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
@code_warntype failprob(noncentralf_integer)
println()
println("----float----")
println()
@code_warntype failprob(noncentralf_float)
println()
println("----dual----")
println()
@code_warntype failprob(noncentralf_dual)
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
@code_warntype params(noncentralf_integer)
println()
println("----float----")
println()
@code_warntype params(noncentralf_float)
println()
println("----dual----")
println()
@code_warntype params(noncentralf_dual)
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
@code_warntype mean(noncentralf_integer)
println()
println("----float----")
println()
@code_warntype mean(noncentralf_float)
println()
println("----dual----")
println()
@code_warntype mean(noncentralf_dual)
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
@code_warntype var(noncentralf_integer)
println()
println("----float----")
println()
@code_warntype var(noncentralf_float)
println()
println("----dual----")
println()
@code_warntype var(noncentralf_dual)
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
@code_warntype mode(noncentralf_integer)
println()
println("----float----")
println()
@code_warntype mode(noncentralf_float)
println()
println("----dual----")
println()
@code_warntype mode(noncentralf_dual)
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
@code_warntype modes(noncentralf_integer)
println()
println("----float----")
println()
@code_warntype modes(noncentralf_float)
println()
println("----dual----")
println()
@code_warntype modes(noncentralf_dual)
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
@code_warntype median(noncentralf_integer)
println()
println("----float----")
println()
@code_warntype median(noncentralf_float)
println()
println("----dual----")
println()
@code_warntype median(noncentralf_dual)
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
@code_warntype skewness(noncentralf_integer)
println()
println("----float----")
println()
@code_warntype skewness(noncentralf_float)
println()
println("----dual----")
println()
@code_warntype skewness(noncentralf_dual)
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
@code_warntype kurtosis(noncentralf_integer)
println()
println("----float----")
println()
@code_warntype kurtosis(noncentralf_float)
println()
println("----dual----")
println()
@code_warntype kurtosis(noncentralf_dual)
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
@code_warntype entropy(noncentralf_integer)
println()
println("----float----")
println()
@code_warntype entropy(noncentralf_float)
println()
println("----dual----")
println()
@code_warntype entropy(noncentralf_dual)
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
@code_warntype rand(noncentralf_integer)
println()
println("----float----")
println()
@code_warntype rand(noncentralf_float)
println()
println("----dual----")
println()
@code_warntype rand(noncentralf_dual)
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
@code_warntype pdf(noncentralf_integer, eval_at)
println()
println("----float----")
println()
@code_warntype pdf(noncentralf_float, eval_at)
println()
println("----dual----")
println()
@code_warntype pdf(noncentralf_dual, eval_at)
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
@code_warntype mgf(noncentralf_integer, eval_at)
println()
println("----float----")
println()
@code_warntype mgf(noncentralf_float, eval_at)
println()
println("----dual----")
println()
@code_warntype mgf(noncentralf_dual, eval_at)
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
@code_warntype cf(noncentralf_integer, eval_at)
println()
println("----float----")
println()
@code_warntype cf(noncentralf_float, eval_at)
println()
println("----dual----")
println()
@code_warntype cf(noncentralf_dual, eval_at)
println()
println()
println()
println()

