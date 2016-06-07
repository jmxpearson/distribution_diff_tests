using Distributions
using ForwardDiff

integer = 1
float = 0.5
dual = ForwardDiff.GradientNumber(0.5)

inversegamma_integer_integer = InverseGamma(integer, integer)
inversegamma_integer_float = InverseGamma(integer, float)
inversegamma_integer_dual = InverseGamma(integer, dual)
inversegamma_float_integer = InverseGamma(float, integer)
inversegamma_float_float = InverseGamma(float, float)
inversegamma_float_dual = InverseGamma(float, dual)
inversegamma_dual_integer = InverseGamma(dual, integer)
inversegamma_dual_float = InverseGamma(dual, float)
inversegamma_dual_dual = InverseGamma(dual, dual)

println("____________________________")
println("ntrials")
println("____________________________")
println()
println("---- integer, integer ----")
println()
@code_warntype ntrials(inversegamma_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype ntrials(inversegamma_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype ntrials(inversegamma_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype ntrials(inversegamma_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype ntrials(inversegamma_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype ntrials(inversegamma_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype ntrials(inversegamma_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype ntrials(inversegamma_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype ntrials(inversegamma_dual_dual)
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
@code_warntype succprob(inversegamma_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype succprob(inversegamma_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype succprob(inversegamma_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype succprob(inversegamma_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype succprob(inversegamma_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype succprob(inversegamma_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype succprob(inversegamma_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype succprob(inversegamma_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype succprob(inversegamma_dual_dual)
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
@code_warntype failprob(inversegamma_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype failprob(inversegamma_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype failprob(inversegamma_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype failprob(inversegamma_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype failprob(inversegamma_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype failprob(inversegamma_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype failprob(inversegamma_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype failprob(inversegamma_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype failprob(inversegamma_dual_dual)
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
@code_warntype params(inversegamma_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype params(inversegamma_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype params(inversegamma_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype params(inversegamma_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype params(inversegamma_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype params(inversegamma_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype params(inversegamma_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype params(inversegamma_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype params(inversegamma_dual_dual)
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
@code_warntype mean(inversegamma_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype mean(inversegamma_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype mean(inversegamma_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype mean(inversegamma_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype mean(inversegamma_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype mean(inversegamma_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype mean(inversegamma_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype mean(inversegamma_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype mean(inversegamma_dual_dual)
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
@code_warntype var(inversegamma_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype var(inversegamma_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype var(inversegamma_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype var(inversegamma_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype var(inversegamma_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype var(inversegamma_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype var(inversegamma_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype var(inversegamma_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype var(inversegamma_dual_dual)
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
@code_warntype mode(inversegamma_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype mode(inversegamma_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype mode(inversegamma_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype mode(inversegamma_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype mode(inversegamma_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype mode(inversegamma_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype mode(inversegamma_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype mode(inversegamma_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype mode(inversegamma_dual_dual)
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
@code_warntype modes(inversegamma_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype modes(inversegamma_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype modes(inversegamma_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype modes(inversegamma_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype modes(inversegamma_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype modes(inversegamma_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype modes(inversegamma_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype modes(inversegamma_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype modes(inversegamma_dual_dual)
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
@code_warntype median(inversegamma_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype median(inversegamma_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype median(inversegamma_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype median(inversegamma_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype median(inversegamma_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype median(inversegamma_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype median(inversegamma_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype median(inversegamma_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype median(inversegamma_dual_dual)
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
@code_warntype skewness(inversegamma_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype skewness(inversegamma_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype skewness(inversegamma_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype skewness(inversegamma_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype skewness(inversegamma_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype skewness(inversegamma_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype skewness(inversegamma_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype skewness(inversegamma_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype skewness(inversegamma_dual_dual)
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
@code_warntype kurtosis(inversegamma_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype kurtosis(inversegamma_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype kurtosis(inversegamma_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype kurtosis(inversegamma_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype kurtosis(inversegamma_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype kurtosis(inversegamma_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype kurtosis(inversegamma_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype kurtosis(inversegamma_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype kurtosis(inversegamma_dual_dual)
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
@code_warntype entropy(inversegamma_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype entropy(inversegamma_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype entropy(inversegamma_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype entropy(inversegamma_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype entropy(inversegamma_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype entropy(inversegamma_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype entropy(inversegamma_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype entropy(inversegamma_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype entropy(inversegamma_dual_dual)
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
@code_warntype rand(inversegamma_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype rand(inversegamma_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype rand(inversegamma_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype rand(inversegamma_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype rand(inversegamma_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype rand(inversegamma_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype rand(inversegamma_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype rand(inversegamma_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype rand(inversegamma_dual_dual)
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
@code_warntype pdf(inversegamma_integer_integer, eval_at)
println()
println("---- integer, float ----")
println()
@code_warntype pdf(inversegamma_integer_float, eval_at)
println()
println("---- integer, dual ----")
println()
@code_warntype pdf(inversegamma_integer_dual, eval_at)
println()
println("---- float, integer ----")
println()
@code_warntype pdf(inversegamma_float_integer, eval_at)
println()
println("---- float, float ----")
println()
@code_warntype pdf(inversegamma_float_float, eval_at)
println()
println("---- float, dual ----")
println()
@code_warntype pdf(inversegamma_float_dual, eval_at)
println()
println("---- dual, integer ----")
println()
@code_warntype pdf(inversegamma_dual_integer, eval_at)
println()
println("---- dual, float ----")
println()
@code_warntype pdf(inversegamma_dual_float, eval_at)
println()
println("---- dual, dual ----")
println()
@code_warntype pdf(inversegamma_dual_dual, eval_at)
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
@code_warntype mgf(inversegamma_integer_integer, eval_at)
println()
println("---- integer, float ----")
println()
@code_warntype mgf(inversegamma_integer_float, eval_at)
println()
println("---- integer, dual ----")
println()
@code_warntype mgf(inversegamma_integer_dual, eval_at)
println()
println("---- float, integer ----")
println()
@code_warntype mgf(inversegamma_float_integer, eval_at)
println()
println("---- float, float ----")
println()
@code_warntype mgf(inversegamma_float_float, eval_at)
println()
println("---- float, dual ----")
println()
@code_warntype mgf(inversegamma_float_dual, eval_at)
println()
println("---- dual, integer ----")
println()
@code_warntype mgf(inversegamma_dual_integer, eval_at)
println()
println("---- dual, float ----")
println()
@code_warntype mgf(inversegamma_dual_float, eval_at)
println()
println("---- dual, dual ----")
println()
@code_warntype mgf(inversegamma_dual_dual, eval_at)
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
@code_warntype cf(inversegamma_integer_integer, eval_at)
println()
println("---- integer, float ----")
println()
@code_warntype cf(inversegamma_integer_float, eval_at)
println()
println("---- integer, dual ----")
println()
@code_warntype cf(inversegamma_integer_dual, eval_at)
println()
println("---- float, integer ----")
println()
@code_warntype cf(inversegamma_float_integer, eval_at)
println()
println("---- float, float ----")
println()
@code_warntype cf(inversegamma_float_float, eval_at)
println()
println("---- float, dual ----")
println()
@code_warntype cf(inversegamma_float_dual, eval_at)
println()
println("---- dual, integer ----")
println()
@code_warntype cf(inversegamma_dual_integer, eval_at)
println()
println("---- dual, float ----")
println()
@code_warntype cf(inversegamma_dual_float, eval_at)
println()
println("---- dual, dual ----")
println()
@code_warntype cf(inversegamma_dual_dual, eval_at)
println()
println()
println()
println()

