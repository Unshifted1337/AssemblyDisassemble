int f(int* a, unsigned b) {
    extern int g(int x);
    int index = g(a[2*b + 1]);
    return a[index + b];
}
