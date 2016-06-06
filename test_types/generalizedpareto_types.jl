using Distributions
using ForwardDiff

integer = 2
float = 2.0
dualnum = ForwardDiff.GradientNumber(2.0)

generalizedpareto_integer = GeneralizedPareto(integer, integer, integer)
generalizedpareto_float = GeneralizedPareto(float, float, float)
generalizedpareto_dual = GeneralizedPareto(dualnum, dualnum, dualnum)

println("____________________________")
println("ntrials")
println("____________________________")
println()
println("----integer----")
println()
@code_warntype ntrials(generalizedpareto_integer)
println()
println("----float----")
println()
@code_warntype ntrials(generalizedpareto_float)
println()
println("----dual----")
println()
@code_warntype ntrials(generalizedpareto_dual)
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
@code_warntype succprob(generalizedpareto_integer)
println()
println("----float----")
println()
@code_warntype succprob(generalizedpareto_float)
println()
println("----dual----")
println()
@code_warntype succprob(generalizedpareto_dual)
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
@code_warntype failprob(generalizedpareto_integer)
println()
println("----float----")
println()
@code_warntype failprob(generalizedpareto_float)
println()
println("----dual----")
println()
@code_warntype failprob(generalizedpareto_dual)
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
@code_warntype params(generalizedpareto_integer)
println()
println("----float----")
println()
@code_warntype params(generalizedpareto_float)
println()
println("----dual----")
println()
@code_warntype params(generalizedpareto_dual)
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
@code_warntype mean(generalizedpareto_integer)
println()
println("----float----")
println()
@code_warntype mean(generalizedpareto_float)
println()
println("----dual----")
println()
@code_warntype mean(generalizedpareto_dual)
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
@code_warntype var(generalizedpareto_integer)
println()
println("----float----")
println()
@code_warntype var(generalizedpareto_float)
println()
println("----dual----")
println()
@code_warntype var(generalizedpareto_dual)
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
@code_warntype mode(generalizedpareto_integer)
println()
println("----float----")
println()
@code_warntype mode(generalizedpareto_float)
println()
println("----dual----")
println()
@code_warntype mode(generalizedpareto_dual)
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
@code_warntype modes(generalizedpareto_integer)
println()
println("----float----")
println()
@code_warntype modes(generalizedpareto_float)
println()
println("----dual----")
println()
@code_warntype modes(generalizedpareto_dual)
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
@code_warntype median(generalizedpareto_integer)
println()
println("----float----")
println()
@code_warntype median(generalizedpareto_float)
println()
println("----dual----")
println()
@code_warntype median(generalizedpareto_dual)
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
@code_warntype skewness(generalizedpareto_integer)
println()
println("----float----")
println()
@code_warntype skewness(generalizedpareto_float)
println()
println("----dual----")
println()
@code_warntype skewness(generalizedpareto_dual)
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
@code_warntype kurtosis(generalizedpareto_integer)
println()
println("----float----")
println()
@code_warntype kurtosis(generalizedpareto_float)
println()
println("----dual----")
println()
@code_warntype kurtosis(generalizedpareto_dual)
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
@code_warntype entropy(generalizedpareto_integer)
println()
println("----float----")
println()
@code_warntype entropy(generalizedpareto_float)
println()
println("----dual----")
println()
@code_warntype entropy(generalizedpareto_dual)
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
@code_warntype rand(generalizedpareto_integer)
println()
println("----float----")
println()
@code_warntype rand(generalizedpareto_float)
println()
println("----dual----")
println()
@code_warntype rand(generalizedpareto_dual)
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
@code_warntype pdf(generalizedpareto_integer, eval_at)
println()
println("----float----")
println()
@code_warntype pdf(generalizedpareto_float, eval_at)
println()
println("----dual----")
println()
@code_warntype pdf(generalizedpareto_dual, eval_at)
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
@code_warntype mgf(generalizedpareto_integer, eval_at)
println()
println("----float----")
println()
@code_warntype mgf(generalizedpareto_float, eval_at)
println()
println("----dual----")
println()
@code_warntype mgf(generalizedpareto_dual, eval_at)
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
@code_warntype cf(generalizedpareto_integer, eval_at)
println()
println("----float----")
println()
@code_warntype cf(generalizedpareto_float, eval_at)
println()
println("----dual----")
println()
@code_warntype cf(generalizedpareto_dual, eval_at)
println()
println()
println()
println()

