#include <errno.h>
#include <getopt.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

// The following is copied from stdio.h for your reference
#define EOF (-1)

 1.    unsigned long fib(unsigned long n) {
 2.        if (n < 2) {
 3.            return n;
 4.        }
 5.        return fib(n - 1) + fib(n - 2);
 6.    }
 7.
 8.    int main(int argc, char *argv[]) {
 9.        extern int optind;
10.        char ch;
11.        unsigned long f, n;
12.
13.        // Command line processing
14.        while ((ch = getopt(argc, argv, "h")) != EOF) {
15.            switch (ch) {
16.            case 'h':
17.            case '?':
18.            default:
19.                return (usage());
20.            }
21.        }
22.
23.        argc -= optind;
24.        argv += optind;
25.
26.        if (argc != 1) {
27.            return usage();
28.        }
29.
30.        n = strtoul(strdup(argv[0]), nullptr, 10);
31.        if (n == 0 && errno == EINVAL) {
32.            return usage();
33.        }
34.
35.        /* Now call one of the fib routines. */
36.        f = fib(n);
37.        printf("fib(%lu) = %lu\n", n, f);
38.
39.        return 0;
40.    }
