using Distributions
using ForwardDiff

integer = 1
float = 0.5
dual = ForwardDiff.GradientNumber(0.5)

pareto_integer_integer = Pareto(integer, integer)
pareto_integer_float = Pareto(integer, float)
pareto_integer_dual = Pareto(integer, dual)
pareto_float_integer = Pareto(float, integer)
pareto_float_float = Pareto(float, float)
pareto_float_dual = Pareto(float, dual)
pareto_dual_integer = Pareto(dual, integer)
pareto_dual_float = Pareto(dual, float)
pareto_dual_dual = Pareto(dual, dual)

println("____________________________")
println("ntrials")
println("____________________________")
println()
println("---- integer, integer ----")
println()
@code_warntype ntrials(pareto_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype ntrials(pareto_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype ntrials(pareto_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype ntrials(pareto_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype ntrials(pareto_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype ntrials(pareto_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype ntrials(pareto_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype ntrials(pareto_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype ntrials(pareto_dual_dual)
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
@code_warntype succprob(pareto_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype succprob(pareto_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype succprob(pareto_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype succprob(pareto_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype succprob(pareto_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype succprob(pareto_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype succprob(pareto_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype succprob(pareto_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype succprob(pareto_dual_dual)
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
@code_warntype failprob(pareto_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype failprob(pareto_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype failprob(pareto_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype failprob(pareto_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype failprob(pareto_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype failprob(pareto_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype failprob(pareto_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype failprob(pareto_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype failprob(pareto_dual_dual)
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
@code_warntype params(pareto_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype params(pareto_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype params(pareto_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype params(pareto_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype params(pareto_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype params(pareto_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype params(pareto_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype params(pareto_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype params(pareto_dual_dual)
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
@code_warntype mean(pareto_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype mean(pareto_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype mean(pareto_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype mean(pareto_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype mean(pareto_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype mean(pareto_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype mean(pareto_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype mean(pareto_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype mean(pareto_dual_dual)
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
@code_warntype var(pareto_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype var(pareto_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype var(pareto_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype var(pareto_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype var(pareto_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype var(pareto_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype var(pareto_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype var(pareto_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype var(pareto_dual_dual)
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
@code_warntype mode(pareto_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype mode(pareto_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype mode(pareto_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype mode(pareto_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype mode(pareto_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype mode(pareto_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype mode(pareto_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype mode(pareto_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype mode(pareto_dual_dual)
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
@code_warntype modes(pareto_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype modes(pareto_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype modes(pareto_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype modes(pareto_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype modes(pareto_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype modes(pareto_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype modes(pareto_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype modes(pareto_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype modes(pareto_dual_dual)
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
@code_warntype median(pareto_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype median(pareto_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype median(pareto_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype median(pareto_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype median(pareto_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype median(pareto_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype median(pareto_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype median(pareto_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype median(pareto_dual_dual)
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
@code_warntype skewness(pareto_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype skewness(pareto_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype skewness(pareto_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype skewness(pareto_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype skewness(pareto_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype skewness(pareto_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype skewness(pareto_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype skewness(pareto_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype skewness(pareto_dual_dual)
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
@code_warntype kurtosis(pareto_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype kurtosis(pareto_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype kurtosis(pareto_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype kurtosis(pareto_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype kurtosis(pareto_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype kurtosis(pareto_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype kurtosis(pareto_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype kurtosis(pareto_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype kurtosis(pareto_dual_dual)
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
@code_warntype entropy(pareto_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype entropy(pareto_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype entropy(pareto_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype entropy(pareto_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype entropy(pareto_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype entropy(pareto_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype entropy(pareto_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype entropy(pareto_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype entropy(pareto_dual_dual)
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
@code_warntype rand(pareto_integer_integer)
println()
println("---- integer, float ----")
println()
@code_warntype rand(pareto_integer_float)
println()
println("---- integer, dual ----")
println()
@code_warntype rand(pareto_integer_dual)
println()
println("---- float, integer ----")
println()
@code_warntype rand(pareto_float_integer)
println()
println("---- float, float ----")
println()
@code_warntype rand(pareto_float_float)
println()
println("---- float, dual ----")
println()
@code_warntype rand(pareto_float_dual)
println()
println("---- dual, integer ----")
println()
@code_warntype rand(pareto_dual_integer)
println()
println("---- dual, float ----")
println()
@code_warntype rand(pareto_dual_float)
println()
println("---- dual, dual ----")
println()
@code_warntype rand(pareto_dual_dual)
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
@code_warntype pdf(pareto_integer_integer, eval_at)
println()
println("---- integer, float ----")
println()
@code_warntype pdf(pareto_integer_float, eval_at)
println()
println("---- integer, dual ----")
println()
@code_warntype pdf(pareto_integer_dual, eval_at)
println()
println("---- float, integer ----")
println()
@code_warntype pdf(pareto_float_integer, eval_at)
println()
println("---- float, float ----")
println()
@code_warntype pdf(pareto_float_float, eval_at)
println()
println("---- float, dual ----")
println()
@code_warntype pdf(pareto_float_dual, eval_at)
println()
println("---- dual, integer ----")
println()
@code_warntype pdf(pareto_dual_integer, eval_at)
println()
println("---- dual, float ----")
println()
@code_warntype pdf(pareto_dual_float, eval_at)
println()
println("---- dual, dual ----")
println()
@code_warntype pdf(pareto_dual_dual, eval_at)
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
@code_warntype mgf(pareto_integer_integer, eval_at)
println()
println("---- integer, float ----")
println()
@code_warntype mgf(pareto_integer_float, eval_at)
println()
println("---- integer, dual ----")
println()
@code_warntype mgf(pareto_integer_dual, eval_at)
println()
println("---- float, integer ----")
println()
@code_warntype mgf(pareto_float_integer, eval_at)
println()
println("---- float, float ----")
println()
@code_warntype mgf(pareto_float_float, eval_at)
println()
println("---- float, dual ----")
println()
@code_warntype mgf(pareto_float_dual, eval_at)
println()
println("---- dual, integer ----")
println()
@code_warntype mgf(pareto_dual_integer, eval_at)
println()
println("---- dual, float ----")
println()
@code_warntype mgf(pareto_dual_float, eval_at)
println()
println("---- dual, dual ----")
println()
@code_warntype mgf(pareto_dual_dual, eval_at)
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
@code_warntype cf(pareto_integer_integer, eval_at)
println()
println("---- integer, float ----")
println()
@code_warntype cf(pareto_integer_float, eval_at)
println()
println("---- integer, dual ----")
println()
@code_warntype cf(pareto_integer_dual, eval_at)
println()
println("---- float, integer ----")
println()
@code_warntype cf(pareto_float_integer, eval_at)
println()
println("---- float, float ----")
println()
@code_warntype cf(pareto_float_float, eval_at)
println()
println("---- float, dual ----")
println()
@code_warntype cf(pareto_float_dual, eval_at)
println()
println("---- dual, integer ----")
println()
@code_warntype cf(pareto_dual_integer, eval_at)
println()
println("---- dual, float ----")
println()
@code_warntype cf(pareto_dual_float, eval_at)
println()
println("---- dual, dual ----")
println()
@code_warntype cf(pareto_dual_dual, eval_at)
println()
println()
println()
println()
