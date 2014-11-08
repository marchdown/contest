import logging
L = logging.getLogger(__name__)
logging.basicConfig(level=logging.DEBUG)

def power(s):
    """Computes all of the sublists of s"""
    res = [[]]
    for e in s:
    	res_new = res
        for l in res:
            L.debug("adding ", l+[e])
            res_new.append(l+[e])
        res = res_new
    return res