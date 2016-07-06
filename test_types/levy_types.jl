using Distributions
using ForwardDiff

integer = 0.5
float = 0.5
dual = ForwardDiff.GradientNumber(0.5)

levy_integer_integer = Levy(integer, integer)
levy_integer_float = Levy(integer, float)
levy_integer_dual = Levy(integer, dual)
levy_float_integer = Levy(float, integer)
levy_float_float = Levy(float, float)
levy_float_dual = Levy(float, dual)
levy_dual_integer = Levy(dual, integer)
levy_dual_float = Levy(dual, float)
levy_dual_dual = Levy(dual, dual)

println("____________________________")
println("ntrials")
println("____________________________")
println()
println("---- integer, integer ----")
println()
@code_warntype ntrials(levy_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype ntrials(levy_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype ntrials(levy_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype ntrials(levy_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype ntrials(levy_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype ntrials(levy_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype ntrials(levy_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype ntrials(levy_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype ntrials(levy_dual_dual)
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
@code_warntype succprob(levy_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype succprob(levy_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype succprob(levy_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype succprob(levy_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype succprob(levy_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype succprob(levy_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype succprob(levy_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype succprob(levy_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype succprob(levy_dual_dual)
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
@code_warntype failprob(levy_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype failprob(levy_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype failprob(levy_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype failprob(levy_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype failprob(levy_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype failprob(levy_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype failprob(levy_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype failprob(levy_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype failprob(levy_dual_dual)
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
@code_warntype params(levy_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype params(levy_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype params(levy_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype params(levy_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype params(levy_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype params(levy_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype params(levy_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype params(levy_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype params(levy_dual_dual)
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
@code_warntype mean(levy_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype mean(levy_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype mean(levy_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype mean(levy_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype mean(levy_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype mean(levy_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype mean(levy_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype mean(levy_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype mean(levy_dual_dual)
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
@code_warntype var(levy_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype var(levy_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype var(levy_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype var(levy_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype var(levy_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype var(levy_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype var(levy_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype var(levy_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype var(levy_dual_dual)
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
@code_warntype mode(levy_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype mode(levy_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype mode(levy_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype mode(levy_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype mode(levy_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype mode(levy_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype mode(levy_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype mode(levy_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype mode(levy_dual_dual)
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
@code_warntype modes(levy_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype modes(levy_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype modes(levy_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype modes(levy_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype modes(levy_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype modes(levy_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype modes(levy_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype modes(levy_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype modes(levy_dual_dual)
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
@code_warntype median(levy_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype median(levy_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype median(levy_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype median(levy_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype median(levy_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype median(levy_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype median(levy_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype median(levy_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype median(levy_dual_dual)
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
@code_warntype skewness(levy_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype skewness(levy_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype skewness(levy_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype skewness(levy_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype skewness(levy_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype skewness(levy_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype skewness(levy_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype skewness(levy_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype skewness(levy_dual_dual)
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
@code_warntype kurtosis(levy_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype kurtosis(levy_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype kurtosis(levy_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype kurtosis(levy_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype kurtosis(levy_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype kurtosis(levy_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype kurtosis(levy_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype kurtosis(levy_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype kurtosis(levy_dual_dual)
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
@code_warntype entropy(levy_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype entropy(levy_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype entropy(levy_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype entropy(levy_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype entropy(levy_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype entropy(levy_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype entropy(levy_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype entropy(levy_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype entropy(levy_dual_dual)
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
@code_warntype rand(levy_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype rand(levy_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype rand(levy_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype rand(levy_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype rand(levy_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype rand(levy_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype rand(levy_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype rand(levy_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype rand(levy_dual_dual)
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
@code_warntype pdf(levy_integer_integer, eval_at)
println()
println("---- integer, float ----")
println()
@code_warntype pdf(levy_integer_float, eval_at)
println()
println("---- integer, dual ----")
println()
@code_warntype pdf(levy_integer_dual, eval_at)
println()
println("---- float, integer ----")
println()
@code_warntype pdf(levy_float_integer, eval_at)
println()
println("---- float, float ----")
println()
@code_warntype pdf(levy_float_float, eval_at)
println()
println("---- float, dual ----")
println()
@code_warntype pdf(levy_float_dual, eval_at)
println()
println("---- dual, integer ----")
println()
@code_warntype pdf(levy_dual_integer, eval_at)
println()
println("---- dual, float ----")
println()
@code_warntype pdf(levy_dual_float, eval_at)
println()
println("---- dual, dual ----")
println()
@code_warntype pdf(levy_dual_dual, eval_at)
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
@code_warntype mgf(levy_integer_integer, eval_at)
println()
println("---- integer, float ----")
println()
@code_warntype mgf(levy_integer_float, eval_at)
println()
println("---- integer, dual ----")
println()
@code_warntype mgf(levy_integer_dual, eval_at)
println()
println("---- float, integer ----")
println()
@code_warntype mgf(levy_float_integer, eval_at)
println()
println("---- float, float ----")
println()
@code_warntype mgf(levy_float_float, eval_at)
println()
println("---- float, dual ----")
println()
@code_warntype mgf(levy_float_dual, eval_at)
println()
println("---- dual, integer ----")
println()
@code_warntype mgf(levy_dual_integer, eval_at)
println()
println("---- dual, float ----")
println()
@code_warntype mgf(levy_dual_float, eval_at)
println()
println("---- dual, dual ----")
println()
@code_warntype mgf(levy_dual_dual, eval_at)
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
@code_warntype cf(levy_integer_integer, eval_at)
println()
println("---- integer, float ----")
println()
@code_warntype cf(levy_integer_float, eval_at)
println()
println("---- integer, dual ----")
println()
@code_warntype cf(levy_integer_dual, eval_at)
println()
println("---- float, integer ----")
println()
@code_warntype cf(levy_float_integer, eval_at)
println()
println("---- float, float ----")
println()
@code_warntype cf(levy_float_float, eval_at)
println()
println("---- float, dual ----")
println()
@code_warntype cf(levy_float_dual, eval_at)
println()
println("---- dual, integer ----")
println()
@code_warntype cf(levy_dual_integer, eval_at)
println()
println("---- dual, float ----")
println()
@code_warntype cf(levy_dual_float, eval_at)
println()
println("---- dual, dual ----")
println()
@code_warntype cf(levy_dual_dual, eval_at)
println()
println()
println()
println()

