using Distributions
using ForwardDiff

integer = [1, 0]
float = [0.2, 0.3, 0.5]
dn1 = ForwardDiff.GradientNumber(0.2)
dn2 = ForwardDiff.GradientNumber(0.3)
dn3 = ForwardDiff.GradientNumber(0.5)
dualnum = [dn1, dn2, dn3]

categorical_integer = Categorical(integer)
categorical_float = Categorical(float)
categorical_dual = Categorical(dualnum)

println("____________________________")
println("ntrials")
println("____________________________")
println()
println("----integer----")
println()
@code_warntype ntrials(categorical_integer)
println()
println("----float----")
println()
@code_warntype ntrials(categorical_float)
println()
println("----dual----")
println()
@code_warntype ntrials(categorical_dual)
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
@code_warntype succprob(categorical_integer)
println()
println("----float----")
println()
@code_warntype succprob(categorical_float)
println()
println("----dual----")
println()
@code_warntype succprob(categorical_dual)
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
@code_warntype failprob(categorical_integer)
println()
println("----float----")
println()
@code_warntype failprob(categorical_float)
println()
println("----dual----")
println()
@code_warntype failprob(categorical_dual)
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
@code_warntype params(categorical_integer)
println()
println("----float----")
println()
@code_warntype params(categorical_float)
println()
println("----dual----")
println()
@code_warntype params(categorical_dual)
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
@code_warntype mean(categorical_integer)
println()
println("----float----")
println()
@code_warntype mean(categorical_float)
println()
println("----dual----")
println()
@code_warntype mean(categorical_dual)
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
@code_warntype var(categorical_integer)
println()
println("----float----")
println()
@code_warntype var(categorical_float)
println()
println("----dual----")
println()
@code_warntype var(categorical_dual)
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
@code_warntype mode(categorical_integer)
println()
println("----float----")
println()
@code_warntype mode(categorical_float)
println()
println("----dual----")
println()
@code_warntype mode(categorical_dual)
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
@code_warntype modes(categorical_integer)
println()
println("----float----")
println()
@code_warntype modes(categorical_float)
println()
println("----dual----")
println()
@code_warntype modes(categorical_dual)
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
@code_warntype median(categorical_integer)
println()
println("----float----")
println()
@code_warntype median(categorical_float)
println()
println("----dual----")
println()
@code_warntype median(categorical_dual)
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
@code_warntype skewness(categorical_integer)
println()
println("----float----")
println()
@code_warntype skewness(categorical_float)
println()
println("----dual----")
println()
@code_warntype skewness(categorical_dual)
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
@code_warntype kurtosis(categorical_integer)
println()
println("----float----")
println()
@code_warntype kurtosis(categorical_float)
println()
println("----dual----")
println()
@code_warntype kurtosis(categorical_dual)
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
@code_warntype entropy(categorical_integer)
println()
println("----float----")
println()
@code_warntype entropy(categorical_float)
println()
println("----dual----")
println()
@code_warntype entropy(categorical_dual)
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
@code_warntype rand(categorical_integer)
println()
println("----float----")
println()
@code_warntype rand(categorical_float)
println()
println("----dual----")
println()
@code_warntype rand(categorical_dual)
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
@code_warntype pdf(categorical_integer, eval_at)
println()
println("----float----")
println()
@code_warntype pdf(categorical_float, eval_at)
println()
println("----dual----")
println()
@code_warntype pdf(categorical_dual, eval_at)
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
@code_warntype mgf(categorical_integer, eval_at)
println()
println("----float----")
println()
@code_warntype mgf(categorical_float, eval_at)
println()
println("----dual----")
println()
@code_warntype mgf(categorical_dual, eval_at)
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
@code_warntype cf(categorical_integer, eval_at)
println()
println("----float----")
println()
@code_warntype cf(categorical_float, eval_at)
println()
println("----dual----")
println()
@code_warntype cf(categorical_dual, eval_at)
println()
println()
println()
println()

