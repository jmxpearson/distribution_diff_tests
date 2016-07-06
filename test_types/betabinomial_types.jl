using Distributions
using ForwardDiff

integer = 2
float = 2.0
dual = ForwardDiff.GradientNumber(2.0)

betabinomial_integer_integer = BetaBinomial(10, integer, integer)
betabinomial_integer_float = BetaBinomial(10, integer, float)
betabinomial_integer_dual = BetaBinomial(10, integer, dual)
betabinomial_float_integer = BetaBinomial(10, float, integer)
betabinomial_float_float = BetaBinomial(10, float, float)
betabinomial_float_dual = BetaBinomial(10, float, dual)
betabinomial_dual_integer = BetaBinomial(10, dual, integer)
betabinomial_dual_float = BetaBinomial(10, dual, float)
betabinomial_dual_dual = BetaBinomial(10, dual, dual)

println("____________________________")
println("ntrials")
println("____________________________")
println()
println("---- integer, integer ----")
println()
@code_warntype ntrials(betabinomial_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype ntrials(betabinomial_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype ntrials(betabinomial_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype ntrials(betabinomial_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype ntrials(betabinomial_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype ntrials(betabinomial_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype ntrials(betabinomial_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype ntrials(betabinomial_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype ntrials(betabinomial_dual_dual)
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
@code_warntype succprob(betabinomial_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype succprob(betabinomial_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype succprob(betabinomial_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype succprob(betabinomial_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype succprob(betabinomial_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype succprob(betabinomial_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype succprob(betabinomial_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype succprob(betabinomial_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype succprob(betabinomial_dual_dual)
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
@code_warntype failprob(betabinomial_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype failprob(betabinomial_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype failprob(betabinomial_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype failprob(betabinomial_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype failprob(betabinomial_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype failprob(betabinomial_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype failprob(betabinomial_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype failprob(betabinomial_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype failprob(betabinomial_dual_dual)
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
@code_warntype params(betabinomial_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype params(betabinomial_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype params(betabinomial_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype params(betabinomial_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype params(betabinomial_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype params(betabinomial_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype params(betabinomial_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype params(betabinomial_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype params(betabinomial_dual_dual)
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
@code_warntype mean(betabinomial_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype mean(betabinomial_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype mean(betabinomial_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype mean(betabinomial_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype mean(betabinomial_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype mean(betabinomial_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype mean(betabinomial_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype mean(betabinomial_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype mean(betabinomial_dual_dual)
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
@code_warntype var(betabinomial_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype var(betabinomial_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype var(betabinomial_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype var(betabinomial_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype var(betabinomial_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype var(betabinomial_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype var(betabinomial_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype var(betabinomial_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype var(betabinomial_dual_dual)
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
@code_warntype mode(betabinomial_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype mode(betabinomial_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype mode(betabinomial_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype mode(betabinomial_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype mode(betabinomial_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype mode(betabinomial_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype mode(betabinomial_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype mode(betabinomial_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype mode(betabinomial_dual_dual)
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
@code_warntype modes(betabinomial_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype modes(betabinomial_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype modes(betabinomial_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype modes(betabinomial_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype modes(betabinomial_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype modes(betabinomial_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype modes(betabinomial_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype modes(betabinomial_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype modes(betabinomial_dual_dual)
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
@code_warntype median(betabinomial_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype median(betabinomial_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype median(betabinomial_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype median(betabinomial_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype median(betabinomial_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype median(betabinomial_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype median(betabinomial_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype median(betabinomial_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype median(betabinomial_dual_dual)
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
@code_warntype skewness(betabinomial_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype skewness(betabinomial_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype skewness(betabinomial_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype skewness(betabinomial_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype skewness(betabinomial_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype skewness(betabinomial_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype skewness(betabinomial_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype skewness(betabinomial_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype skewness(betabinomial_dual_dual)
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
@code_warntype kurtosis(betabinomial_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype kurtosis(betabinomial_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype kurtosis(betabinomial_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype kurtosis(betabinomial_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype kurtosis(betabinomial_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype kurtosis(betabinomial_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype kurtosis(betabinomial_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype kurtosis(betabinomial_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype kurtosis(betabinomial_dual_dual)
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
@code_warntype entropy(betabinomial_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype entropy(betabinomial_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype entropy(betabinomial_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype entropy(betabinomial_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype entropy(betabinomial_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype entropy(betabinomial_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype entropy(betabinomial_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype entropy(betabinomial_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype entropy(betabinomial_dual_dual)
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
@code_warntype rand(betabinomial_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype rand(betabinomial_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype rand(betabinomial_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype rand(betabinomial_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype rand(betabinomial_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype rand(betabinomial_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype rand(betabinomial_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype rand(betabinomial_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype rand(betabinomial_dual_dual)
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
@code_warntype pdf(betabinomial_integer_integer, eval_at)
println()
println("---- integer, float ----")
println()
@code_warntype pdf(betabinomial_integer_float, eval_at)
println()
println("---- integer, dual ----")
println()
@code_warntype pdf(betabinomial_integer_dual, eval_at)
println()
println("---- float, integer ----")
println()
@code_warntype pdf(betabinomial_float_integer, eval_at)
println()
println("---- float, float ----")
println()
@code_warntype pdf(betabinomial_float_float, eval_at)
println()
println("---- float, dual ----")
println()
@code_warntype pdf(betabinomial_float_dual, eval_at)
println()
println("---- dual, integer ----")
println()
@code_warntype pdf(betabinomial_dual_integer, eval_at)
println()
println("---- dual, float ----")
println()
@code_warntype pdf(betabinomial_dual_float, eval_at)
println()
println("---- dual, dual ----")
println()
@code_warntype pdf(betabinomial_dual_dual, eval_at)
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
@code_warntype mgf(betabinomial_integer_integer, eval_at)
println()
println("---- integer, float ----")
println()
@code_warntype mgf(betabinomial_integer_float, eval_at)
println()
println("---- integer, dual ----")
println()
@code_warntype mgf(betabinomial_integer_dual, eval_at)
println()
println("---- float, integer ----")
println()
@code_warntype mgf(betabinomial_float_integer, eval_at)
println()
println("---- float, float ----")
println()
@code_warntype mgf(betabinomial_float_float, eval_at)
println()
println("---- float, dual ----")
println()
@code_warntype mgf(betabinomial_float_dual, eval_at)
println()
println("---- dual, integer ----")
println()
@code_warntype mgf(betabinomial_dual_integer, eval_at)
println()
println("---- dual, float ----")
println()
@code_warntype mgf(betabinomial_dual_float, eval_at)
println()
println("---- dual, dual ----")
println()
@code_warntype mgf(betabinomial_dual_dual, eval_at)
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
@code_warntype cf(betabinomial_integer_integer, eval_at)
println()
println("---- integer, float ----")
println()
@code_warntype cf(betabinomial_integer_float, eval_at)
println()
println("---- integer, dual ----")
println()
@code_warntype cf(betabinomial_integer_dual, eval_at)
println()
println("---- float, integer ----")
println()
@code_warntype cf(betabinomial_float_integer, eval_at)
println()
println("---- float, float ----")
println()
@code_warntype cf(betabinomial_float_float, eval_at)
println()
println("---- float, dual ----")
println()
@code_warntype cf(betabinomial_float_dual, eval_at)
println()
println("---- dual, integer ----")
println()
@code_warntype cf(betabinomial_dual_integer, eval_at)
println()
println("---- dual, float ----")
println()
@code_warntype cf(betabinomial_dual_float, eval_at)
println()
println("---- dual, dual ----")
println()
@code_warntype cf(betabinomial_dual_dual, eval_at)
println()
println()
println()
println()

