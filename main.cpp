#include <stdio.h>

#include "comp_a.h"
#include "comp_b.h"

int main() {
    printf("running main\n");

    printf("running comp_a\n");
    comp_a();

    printf("running comp_b\n");
    comp_b();
}
