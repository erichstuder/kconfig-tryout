#include "comp_a.h"
#include "config.h"
#include <stdio.h>

void comp_a(void) {
    printf("comp_a: output value = %d\n", CONFIG_COMP_A_OUTPUT_VALUE);
}
