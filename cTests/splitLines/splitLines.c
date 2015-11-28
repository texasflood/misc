#include <assert.h>
#include <string.h>

int main(int argv, char **argc) {
    int line_len = 10;
    FILE *input;
    FILE *output;

    assert(argv = 2);

    *input = fopen(*(argc + 1), "r");
    char *output_name = (char *) malloc((strlen(*(argc + 1)) + 1) * sizeof(char));

    *output = fopen(output_name, "w");
