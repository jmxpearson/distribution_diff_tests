using Distributions
using ForwardDiff

integer = 0.5
float = 0.5
dual = ForwardDiff.GradientNumber(0.5)

vonmises_integer_integer = VonMises(integer, integer)
vonmises_integer_float = VonMises(integer, float)
vonmises_integer_dual = VonMises(integer, dual)
vonmises_float_integer = VonMises(float, integer)
vonmises_float_float = VonMises(float, float)
vonmises_float_dual = VonMises(float, dual)
vonmises_dual_integer = VonMises(dual, integer)
vonmises_dual_float = VonMises(dual, float)
vonmises_dual_dual = VonMises(dual, dual)

println("____________________________")
println("ntrials")
println("____________________________")
println()
println("---- integer, integer ----")
println()
@code_warntype ntrials(vonmises_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype ntrials(vonmises_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype ntrials(vonmises_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype ntrials(vonmises_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype ntrials(vonmises_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype ntrials(vonmises_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype ntrials(vonmises_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype ntrials(vonmises_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype ntrials(vonmises_dual_dual)
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
@code_warntype succprob(vonmises_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype succprob(vonmises_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype succprob(vonmises_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype succprob(vonmises_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype succprob(vonmises_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype succprob(vonmises_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype succprob(vonmises_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype succprob(vonmises_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype succprob(vonmises_dual_dual)
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
@code_warntype failprob(vonmises_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype failprob(vonmises_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype failprob(vonmises_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype failprob(vonmises_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype failprob(vonmises_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype failprob(vonmises_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype failprob(vonmises_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype failprob(vonmises_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype failprob(vonmises_dual_dual)
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
@code_warntype params(vonmises_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype params(vonmises_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype params(vonmises_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype params(vonmises_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype params(vonmises_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype params(vonmises_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype params(vonmises_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype params(vonmises_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype params(vonmises_dual_dual)
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
@code_warntype mean(vonmises_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype mean(vonmises_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype mean(vonmises_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype mean(vonmises_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype mean(vonmises_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype mean(vonmises_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype mean(vonmises_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype mean(vonmises_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype mean(vonmises_dual_dual)
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
@code_warntype var(vonmises_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype var(vonmises_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype var(vonmises_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype var(vonmises_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype var(vonmises_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype var(vonmises_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype var(vonmises_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype var(vonmises_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype var(vonmises_dual_dual)
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
@code_warntype mode(vonmises_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype mode(vonmises_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype mode(vonmises_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype mode(vonmises_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype mode(vonmises_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype mode(vonmises_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype mode(vonmises_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype mode(vonmises_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype mode(vonmises_dual_dual)
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
@code_warntype modes(vonmises_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype modes(vonmises_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype modes(vonmises_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype modes(vonmises_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype modes(vonmises_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype modes(vonmises_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype modes(vonmises_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype modes(vonmises_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype modes(vonmises_dual_dual)
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
@code_warntype median(vonmises_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype median(vonmises_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype median(vonmises_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype median(vonmises_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype median(vonmises_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype median(vonmises_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype median(vonmises_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype median(vonmises_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype median(vonmises_dual_dual)
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
@code_warntype skewness(vonmises_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype skewness(vonmises_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype skewness(vonmises_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype skewness(vonmises_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype skewness(vonmises_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype skewness(vonmises_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype skewness(vonmises_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype skewness(vonmises_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype skewness(vonmises_dual_dual)
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
@code_warntype kurtosis(vonmises_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype kurtosis(vonmises_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype kurtosis(vonmises_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype kurtosis(vonmises_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype kurtosis(vonmises_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype kurtosis(vonmises_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype kurtosis(vonmises_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype kurtosis(vonmises_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype kurtosis(vonmises_dual_dual)
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
@code_warntype entropy(vonmises_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype entropy(vonmises_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype entropy(vonmises_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype entropy(vonmises_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype entropy(vonmises_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype entropy(vonmises_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype entropy(vonmises_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype entropy(vonmises_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype entropy(vonmises_dual_dual)
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
@code_warntype rand(vonmises_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype rand(vonmises_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype rand(vonmises_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype rand(vonmises_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype rand(vonmises_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype rand(vonmises_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype rand(vonmises_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype rand(vonmises_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype rand(vonmises_dual_dual)
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
@code_warntype pdf(vonmises_integer_integer, eval_at)
println()
println("---- integer, float ----")
println()
@code_warntype pdf(vonmises_integer_float, eval_at)
println()
println("---- integer, dual ----")
println()
@code_warntype pdf(vonmises_integer_dual, eval_at)
println()
println("---- float, integer ----")
println()
@code_warntype pdf(vonmises_float_integer, eval_at)
println()
println("---- float, float ----")
println()
@code_warntype pdf(vonmises_float_float, eval_at)
println()
println("---- float, dual ----")
println()
@code_warntype pdf(vonmises_float_dual, eval_at)
println()
println("---- dual, integer ----")
println()
@code_warntype pdf(vonmises_dual_integer, eval_at)
println()
println("---- dual, float ----")
println()
@code_warntype pdf(vonmises_dual_float, eval_at)
println()
println("---- dual, dual ----")
println()
@code_warntype pdf(vonmises_dual_dual, eval_at)
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
@code_warntype mgf(vonmises_integer_integer, eval_at)
println()
println("---- integer, float ----")
println()
@code_warntype mgf(vonmises_integer_float, eval_at)
println()
println("---- integer, dual ----")
println()
@code_warntype mgf(vonmises_integer_dual, eval_at)
println()
println("---- float, integer ----")
println()
@code_warntype mgf(vonmises_float_integer, eval_at)
println()
println("---- float, float ----")
println()
@code_warntype mgf(vonmises_float_float, eval_at)
println()
println("---- float, dual ----")
println()
@code_warntype mgf(vonmises_float_dual, eval_at)
println()
println("---- dual, integer ----")
println()
@code_warntype mgf(vonmises_dual_integer, eval_at)
println()
println("---- dual, float ----")
println()
@code_warntype mgf(vonmises_dual_float, eval_at)
println()
println("---- dual, dual ----")
println()
@code_warntype mgf(vonmises_dual_dual, eval_at)
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
@code_warntype cf(vonmises_integer_integer, eval_at)
println()
println("---- integer, float ----")
println()
@code_warntype cf(vonmises_integer_float, eval_at)
println()
println("---- integer, dual ----")
println()
@code_warntype cf(vonmises_integer_dual, eval_at)
println()
println("---- float, integer ----")
println()
@code_warntype cf(vonmises_float_integer, eval_at)
println()
println("---- float, float ----")
println()
@code_warntype cf(vonmises_float_float, eval_at)
println()
println("---- float, dual ----")
println()
@code_warntype cf(vonmises_float_dual, eval_at)
println()
println("---- dual, integer ----")
println()
@code_warntype cf(vonmises_dual_integer, eval_at)
println()
println("---- dual, float ----")
println()
@code_warntype cf(vonmises_dual_float, eval_at)
println()
println("---- dual, dual ----")
println()
@code_warntype cf(vonmises_dual_dual, eval_at)
println()
println()
println()
println()
