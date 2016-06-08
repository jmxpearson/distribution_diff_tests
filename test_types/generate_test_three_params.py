dist = 'triangular'
dist_name = 'TriangularDist'
script_name = dist + '_types.jl'

funcs = ['ntrials', 'succprob', 'failprob', 'params', 'mean', 'var', \
         'mode', 'modes', 'median', 'skewness', 'kurtosis', 'entropy', \
         'rand']

evalat_funcs = ['pdf', 'mgf', 'cf']

zero_one_allowed = True

def print_heading(f, func):
    f.write('println("____________________________")\n')
    f.write('println("' + func + '")\n')
    f.write('println("____________________________")\n')
    f.write('println()\n')

def print_end_func(f):
    f.write('println()\n')
    f.write('println()\n')
    f.write('println()\n\n')

def print_do_code_warntype(f, func, type):
    f.write('println("----' + type + '----")\n')
    f.write('println()\n')
    f.write('@code_warntype ' + func + '(' + dist + '_' + type + ')\n')
    f.write('println()\n')

def print_do_code_warntype_evalat(f, func, type):
    f.write('println("----' + type + '----")\n')
    f.write('println()\n')
    f.write('@code_warntype ' + func + '(' + dist + '_' + type + ', eval_at)\n')
    f.write('println()\n')

with open(script_name, 'w') as f:
    f.write('using Distributions\n')
    f.write('using ForwardDiff\n\n')

    if zero_one_allowed:
        f.write('integer = 2\n')
    f.write('float = 2.0\n')
    f.write('dualnum = ForwardDiff.GradientNumber(2.0)\n\n')

    if zero_one_allowed:
        f.write('integer2 = 4\n')
    f.write('float2 = 4.0\n')
    f.write('dualnum2 = ForwardDiff.GradientNumber(4.0)\n\n')

    if zero_one_allowed:
        f.write(dist + '_integer = ' + dist_name + '(integer, integer2, integer)\n')
    f.write(dist + '_float = ' + dist_name + '(float, float2, float)\n')
    f.write(dist + '_dual = ' + dist_name + '(dualnum, dualnum2, dualnum)\n\n')

    for func in funcs:
        print_heading(f, func)
        if zero_one_allowed:
            print_do_code_warntype(f, func, 'integer')
        print_do_code_warntype(f, func, 'float')
        print_do_code_warntype(f, func, 'dual')
        print_end_func(f)

    f.write('eval_at = 2\n\n')

    for func in evalat_funcs:
        print_heading(f, func)
        if zero_one_allowed:
            print_do_code_warntype_evalat(f, func, 'integer')
        print_do_code_warntype_evalat(f, func, 'float')
        print_do_code_warntype_evalat(f, func, 'dual')
        print_end_func(f)
