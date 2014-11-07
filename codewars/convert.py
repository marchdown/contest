def convert(input, source, target):
    base_in = len(source)
    base_out = len(target)
    number = 0
    out = ''
    for d in input:
        number *= base_in
        number += source.index(d)
    while number != 0:
        d = target[number%base_out]
        number = number/base_out
        out += d
    return out
   