dist = 'cauchy'
dist_name = 'Cauchy'
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

def print_do_code_warntype(f, func, type1, type2):
    f.write('println("---- ' + type1 + ', ' + type2 + ' ----")\n')
    f.write('println()\n')
    f.write('@code_warntype ' + func + '(' + get_full_dist(type1, type2) + ')\n')
    f.write('println()\n')

def print_do_code_warntype_evalat(f, func, type1, type2):
    f.write('println("---- ' + type1 + ', ' + type2 + ' ----")\n')
    f.write('println()\n')
    f.write('@code_warntype ' + func + '(' + get_full_dist(type1, type2) + ', eval_at)\n')
    f.write('println()\n')

def get_full_dist(type1, type2):
    return dist + '_' + type1 + '_' + type2

with open(script_name, 'w') as f:
    f.write('using Distributions\n')
    f.write('using ForwardDiff\n\n')

    """
    if zero_one_allowed:
        f.write('integer = 2\n')
    f.write('float = 2.0\n')
    f.write('dual = ForwardDiff.GradientNumber(2.0)\n\n')
    """

    # special for arcsine
    f.write('integer1 = 1\n')
    f.write('float1 = 1.0\n')
    f.write('dual1 = ForwardDiff.GradientNumber(1.0)\n\n')
    f.write('integer2 = 2\n')
    f.write('float2 = 2.0\n')
    f.write('dual2 = ForwardDiff.GradientNumber(2.0)\n\n')

    types = ['integer', 'float', 'dual']

    # special for arcsine
    typevar1 = ['integer1', 'float1', 'dual1']
    typevar2 = ['integer2', 'float2', 'dual2']

    i = 1
    if zero_one_allowed:
        i = 0
    while i < 3:
        j = 1
        if zero_one_allowed:
            j = 0
        while j < 3:
            f.write(get_full_dist(types[i], types[j]) + ' = ' + dist_name + \
                    '(' + typevar1[i] + ', ' + typevar2[j] + ')\n')
            j += 1
        i += 1
    f.write('\n')

    for func in funcs:
        print_heading(f, func)
        i = 1
        if zero_one_allowed:
            i = 0
        while i < 3:
            j = 1
            if zero_one_allowed:
                j = 0
            while j < 3:
                print_do_code_warntype(f, func, types[i], types[j])
                j += 1
            i += 1

        print_end_func(f)

    f.write('eval_at = 2\n\n')

    for func in evalat_funcs:
        print_heading(f, func)
        i = 1
        if zero_one_allowed:
            i = 0
        while i < 3:
            j = 1
            if zero_one_allowed:
                j = 0
            while j < 3:
                print_do_code_warntype_evalat(f, func, types[i], types[j])
                j += 1
            i += 1

        print_end_func(f)
