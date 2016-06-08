using Distributions
using ForwardDiff

integer = 1
float = 0.5
dual = ForwardDiff.GradientNumber(0.5)

noncentralchisq_integer_integer = NoncentralChisq(integer, integer)
noncentralchisq_integer_float = NoncentralChisq(integer, float)
noncentralchisq_integer_dual = NoncentralChisq(integer, dual)
noncentralchisq_float_integer = NoncentralChisq(float, integer)
noncentralchisq_float_float = NoncentralChisq(float, float)
noncentralchisq_float_dual = NoncentralChisq(float, dual)
noncentralchisq_dual_integer = NoncentralChisq(dual, integer)
noncentralchisq_dual_float = NoncentralChisq(dual, float)
noncentralchisq_dual_dual = NoncentralChisq(dual, dual)

println("____________________________")
println("ntrials")
println("____________________________")
println()
println("---- integer, integer ----")
println()
@code_warntype ntrials(noncentralchisq_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype ntrials(noncentralchisq_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype ntrials(noncentralchisq_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype ntrials(noncentralchisq_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype ntrials(noncentralchisq_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype ntrials(noncentralchisq_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype ntrials(noncentralchisq_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype ntrials(noncentralchisq_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype ntrials(noncentralchisq_dual_dual)
println()
println()
println()
println()

println("____________________________")
println("succprob")
println("____________________________")
println()
println("---- integer, integer ----")
println()
@code_warntype succprob(noncentralchisq_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype succprob(noncentralchisq_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype succprob(noncentralchisq_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype succprob(noncentralchisq_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype succprob(noncentralchisq_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype succprob(noncentralchisq_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype succprob(noncentralchisq_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype succprob(noncentralchisq_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype succprob(noncentralchisq_dual_dual)
println()
println()
println()
println()

println("____________________________")
println("failprob")
println("____________________________")
println()
println("---- integer, integer ----")
println()
@code_warntype failprob(noncentralchisq_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype failprob(noncentralchisq_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype failprob(noncentralchisq_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype failprob(noncentralchisq_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype failprob(noncentralchisq_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype failprob(noncentralchisq_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype failprob(noncentralchisq_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype failprob(noncentralchisq_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype failprob(noncentralchisq_dual_dual)
println()
println()
println()
println()

println("____________________________")
println("params")
println("____________________________")
println()
println("---- integer, integer ----")
println()
@code_warntype params(noncentralchisq_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype params(noncentralchisq_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype params(noncentralchisq_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype params(noncentralchisq_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype params(noncentralchisq_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype params(noncentralchisq_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype params(noncentralchisq_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype params(noncentralchisq_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype params(noncentralchisq_dual_dual)
println()
println()
println()
println()

println("____________________________")
println("mean")
println("____________________________")
println()
println("---- integer, integer ----")
println()
@code_warntype mean(noncentralchisq_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype mean(noncentralchisq_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype mean(noncentralchisq_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype mean(noncentralchisq_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype mean(noncentralchisq_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype mean(noncentralchisq_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype mean(noncentralchisq_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype mean(noncentralchisq_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype mean(noncentralchisq_dual_dual)
println()
println()
println()
println()

println("____________________________")
println("var")
println("____________________________")
println()
println("---- integer, integer ----")
println()
@code_warntype var(noncentralchisq_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype var(noncentralchisq_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype var(noncentralchisq_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype var(noncentralchisq_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype var(noncentralchisq_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype var(noncentralchisq_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype var(noncentralchisq_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype var(noncentralchisq_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype var(noncentralchisq_dual_dual)
println()
println()
println()
println()

println("____________________________")
println("mode")
println("____________________________")
println()
println("---- integer, integer ----")
println()
@code_warntype mode(noncentralchisq_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype mode(noncentralchisq_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype mode(noncentralchisq_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype mode(noncentralchisq_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype mode(noncentralchisq_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype mode(noncentralchisq_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype mode(noncentralchisq_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype mode(noncentralchisq_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype mode(noncentralchisq_dual_dual)
println()
println()
println()
println()

println("____________________________")
println("modes")
println("____________________________")
println()
println("---- integer, integer ----")
println()
@code_warntype modes(noncentralchisq_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype modes(noncentralchisq_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype modes(noncentralchisq_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype modes(noncentralchisq_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype modes(noncentralchisq_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype modes(noncentralchisq_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype modes(noncentralchisq_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype modes(noncentralchisq_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype modes(noncentralchisq_dual_dual)
println()
println()
println()
println()

println("____________________________")
println("median")
println("____________________________")
println()
println("---- integer, integer ----")
println()
@code_warntype median(noncentralchisq_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype median(noncentralchisq_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype median(noncentralchisq_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype median(noncentralchisq_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype median(noncentralchisq_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype median(noncentralchisq_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype median(noncentralchisq_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype median(noncentralchisq_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype median(noncentralchisq_dual_dual)
println()
println()
println()
println()

println("____________________________")
println("skewness")
println("____________________________")
println()
println("---- integer, integer ----")
println()
@code_warntype skewness(noncentralchisq_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype skewness(noncentralchisq_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype skewness(noncentralchisq_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype skewness(noncentralchisq_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype skewness(noncentralchisq_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype skewness(noncentralchisq_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype skewness(noncentralchisq_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype skewness(noncentralchisq_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype skewness(noncentralchisq_dual_dual)
println()
println()
println()
println()

println("____________________________")
println("kurtosis")
println("____________________________")
println()
println("---- integer, integer ----")
println()
@code_warntype kurtosis(noncentralchisq_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype kurtosis(noncentralchisq_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype kurtosis(noncentralchisq_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype kurtosis(noncentralchisq_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype kurtosis(noncentralchisq_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype kurtosis(noncentralchisq_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype kurtosis(noncentralchisq_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype kurtosis(noncentralchisq_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype kurtosis(noncentralchisq_dual_dual)
println()
println()
println()
println()

println("____________________________")
println("entropy")
println("____________________________")
println()
println("---- integer, integer ----")
println()
@code_warntype entropy(noncentralchisq_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype entropy(noncentralchisq_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype entropy(noncentralchisq_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype entropy(noncentralchisq_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype entropy(noncentralchisq_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype entropy(noncentralchisq_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype entropy(noncentralchisq_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype entropy(noncentralchisq_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype entropy(noncentralchisq_dual_dual)
println()
println()
println()
println()

println("____________________________")
println("rand")
println("____________________________")
println()
println("---- integer, integer ----")
println()
@code_warntype rand(noncentralchisq_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype rand(noncentralchisq_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype rand(noncentralchisq_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype rand(noncentralchisq_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype rand(noncentralchisq_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype rand(noncentralchisq_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype rand(noncentralchisq_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype rand(noncentralchisq_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype rand(noncentralchisq_dual_dual)
println()
println()
println()
println()

eval_at = 2

println("____________________________")
println("pdf")
println("____________________________")
println()
println("---- integer, integer ----")
println()
@code_warntype pdf(noncentralchisq_integer_integer, eval_at)
println()
println("---- integer, float ----")
println()
@code_warntype pdf(noncentralchisq_integer_float, eval_at)
println()
println("---- integer, dual ----")
println()
@code_warntype pdf(noncentralchisq_integer_dual, eval_at)
println()
println("---- float, integer ----")
println()
@code_warntype pdf(noncentralchisq_float_integer, eval_at)
println()
println("---- float, float ----")
println()
@code_warntype pdf(noncentralchisq_float_float, eval_at)
println()
println("---- float, dual ----")
println()
@code_warntype pdf(noncentralchisq_float_dual, eval_at)
println()
println("---- dual, integer ----")
println()
@code_warntype pdf(noncentralchisq_dual_integer, eval_at)
println()
println("---- dual, float ----")
println()
@code_warntype pdf(noncentralchisq_dual_float, eval_at)
println()
println("---- dual, dual ----")
println()
@code_warntype pdf(noncentralchisq_dual_dual, eval_at)
println()
println()
println()
println()

println("____________________________")
println("mgf")
println("____________________________")
println()
println("---- integer, integer ----")
println()
@code_warntype mgf(noncentralchisq_integer_integer, eval_at)
println()
println("---- integer, float ----")
println()
@code_warntype mgf(noncentralchisq_integer_float, eval_at)
println()
println("---- integer, dual ----")
println()
@code_warntype mgf(noncentralchisq_integer_dual, eval_at)
println()
println("---- float, integer ----")
println()
@code_warntype mgf(noncentralchisq_float_integer, eval_at)
println()
println("---- float, float ----")
println()
@code_warntype mgf(noncentralchisq_float_float, eval_at)
println()
println("---- float, dual ----")
println()
@code_warntype mgf(noncentralchisq_float_dual, eval_at)
println()
println("---- dual, integer ----")
println()
@code_warntype mgf(noncentralchisq_dual_integer, eval_at)
println()
println("---- dual, float ----")
println()
@code_warntype mgf(noncentralchisq_dual_float, eval_at)
println()
println("---- dual, dual ----")
println()
@code_warntype mgf(noncentralchisq_dual_dual, eval_at)
println()
println()
println()
println()

println("____________________________")
println("cf")
println("____________________________")
println()
println("---- integer, integer ----")
println()
@code_warntype cf(noncentralchisq_integer_integer, eval_at)
println()
println("---- integer, float ----")
println()
@code_warntype cf(noncentralchisq_integer_float, eval_at)
println()
println("---- integer, dual ----")
println()
@code_warntype cf(noncentralchisq_integer_dual, eval_at)
println()
println("---- float, integer ----")
println()
@code_warntype cf(noncentralchisq_float_integer, eval_at)
println()
println("---- float, float ----")
println()
@code_warntype cf(noncentralchisq_float_float, eval_at)
println()
println("---- float, dual ----")
println()
@code_warntype cf(noncentralchisq_float_dual, eval_at)
println()
println("---- dual, integer ----")
println()
@code_warntype cf(noncentralchisq_dual_integer, eval_at)
println()
println("---- dual, float ----")
println()
@code_warntype cf(noncentralchisq_dual_float, eval_at)
println()
println("---- dual, dual ----")
println()
@code_warntype cf(noncentralchisq_dual_dual, eval_at)
println()
println()
println()
println()
