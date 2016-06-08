using Distributions
using ForwardDiff

integer = 2
float = 2.0
dualnum = ForwardDiff.GradientNumber(2.0)

generalizedextremevalue_integer = GeneralizedExtremeValue(integer, integer, integer)
generalizedextremevalue_float = GeneralizedExtremeValue(float, float, float)
generalizedextremevalue_dual = GeneralizedExtremeValue(dualnum, dualnum, dualnum)

println("____________________________")
println("ntrials")
println("____________________________")
println()
println("----integer----")
println()
@code_warntype ntrials(generalizedextremevalue_integer)
println()
println("----float----")
println()
@code_warntype ntrials(generalizedextremevalue_float)
println()
println("----dual----")
println()
@code_warntype ntrials(generalizedextremevalue_dual)
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
@code_warntype succprob(generalizedextremevalue_integer)
println()
println("----float----")
println()
@code_warntype succprob(generalizedextremevalue_float)
println()
println("----dual----")
println()
@code_warntype succprob(generalizedextremevalue_dual)
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
@code_warntype failprob(generalizedextremevalue_integer)
println()
println("----float----")
println()
@code_warntype failprob(generalizedextremevalue_float)
println()
println("----dual----")
println()
@code_warntype failprob(generalizedextremevalue_dual)
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
@code_warntype params(generalizedextremevalue_integer)
println()
println("----float----")
println()
@code_warntype params(generalizedextremevalue_float)
println()
println("----dual----")
println()
@code_warntype params(generalizedextremevalue_dual)
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
@code_warntype mean(generalizedextremevalue_integer)
println()
println("----float----")
println()
@code_warntype mean(generalizedextremevalue_float)
println()
println("----dual----")
println()
@code_warntype mean(generalizedextremevalue_dual)
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
@code_warntype var(generalizedextremevalue_integer)
println()
println("----float----")
println()
@code_warntype var(generalizedextremevalue_float)
println()
println("----dual----")
println()
@code_warntype var(generalizedextremevalue_dual)
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
@code_warntype mode(generalizedextremevalue_integer)
println()
println("----float----")
println()
@code_warntype mode(generalizedextremevalue_float)
println()
println("----dual----")
println()
@code_warntype mode(generalizedextremevalue_dual)
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
@code_warntype modes(generalizedextremevalue_integer)
println()
println("----float----")
println()
@code_warntype modes(generalizedextremevalue_float)
println()
println("----dual----")
println()
@code_warntype modes(generalizedextremevalue_dual)
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
@code_warntype median(generalizedextremevalue_integer)
println()
println("----float----")
println()
@code_warntype median(generalizedextremevalue_float)
println()
println("----dual----")
println()
@code_warntype median(generalizedextremevalue_dual)
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
@code_warntype skewness(generalizedextremevalue_integer)
println()
println("----float----")
println()
@code_warntype skewness(generalizedextremevalue_float)
println()
println("----dual----")
println()
@code_warntype skewness(generalizedextremevalue_dual)
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
@code_warntype kurtosis(generalizedextremevalue_integer)
println()
println("----float----")
println()
@code_warntype kurtosis(generalizedextremevalue_float)
println()
println("----dual----")
println()
@code_warntype kurtosis(generalizedextremevalue_dual)
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
@code_warntype entropy(generalizedextremevalue_integer)
println()
println("----float----")
println()
@code_warntype entropy(generalizedextremevalue_float)
println()
println("----dual----")
println()
@code_warntype entropy(generalizedextremevalue_dual)
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
@code_warntype rand(generalizedextremevalue_integer)
println()
println("----float----")
println()
@code_warntype rand(generalizedextremevalue_float)
println()
println("----dual----")
println()
@code_warntype rand(generalizedextremevalue_dual)
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
@code_warntype pdf(generalizedextremevalue_integer, eval_at)
println()
println("----float----")
println()
@code_warntype pdf(generalizedextremevalue_float, eval_at)
println()
println("----dual----")
println()
@code_warntype pdf(generalizedextremevalue_dual, eval_at)
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
@code_warntype mgf(generalizedextremevalue_integer, eval_at)
println()
println("----float----")
println()
@code_warntype mgf(generalizedextremevalue_float, eval_at)
println()
println("----dual----")
println()
@code_warntype mgf(generalizedextremevalue_dual, eval_at)
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
@code_warntype cf(generalizedextremevalue_integer, eval_at)
println()
println("----float----")
println()
@code_warntype cf(generalizedextremevalue_float, eval_at)
println()
println("----dual----")
println()
@code_warntype cf(generalizedextremevalue_dual, eval_at)
println()
println()
println()
println()
