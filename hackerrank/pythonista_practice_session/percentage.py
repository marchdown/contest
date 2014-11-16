# Enter your code here. Read input from STDIN. Print output to STDOUT
import sys

def main():
    n = int(sys.stdin.readline())
    d_marks = {}
    for i in range(n):
        l_marks = [0,0,0]
        name, l_marks[0], l_marks[1], l_marks[2] = sys.stdin.readline().split()

        d_marks[name]=sum(map(float, l_marks))/len(l_marks)
    # print d_marks
    line = sys.stdin.readline()
    while(line):
        print "%.2f" % d_marks[line]
        line = sys.stdin.readline()

if __name__ == '__main__':
    main()