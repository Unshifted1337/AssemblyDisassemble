struct bignum {
    unsigned long x, y;
};

void hex_print_bignum(bignum n) {
    if (n.y == 0) {
        printf("0x%lx", n.x);
    } else {
        printf("0x%lx%016lx", n.y, n.x);
    }
}
