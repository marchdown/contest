#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>
int grow(int n)
    {
    int res = 1;
    while (n>0){
        res *= 2;
        n--;
        if (n == 0){
            return res;
        }
        res++;
        n--;
    }
    return res;
}
int main() {
    int t;
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */
    scanf("%d", &t);
    int *ns;
    ns=(int *) malloc(t*sizeof(int));
    for(int i = 0; i < t; i++){
        scanf("%d", &ns[i]);
    }
    for(int i = 0; i < t; i++){
        printf("%d\n", grow(ns[i]));
    }
    free(ns);
    return 0;
}
