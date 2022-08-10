#include <stdio.h>
#include <stdlib.h>

int
main(int argc, char**argv) {
  int reps = 1;
  if (argc == 2) {
    reps = atoi(argv[1]);
  }
  for (int i = 0; i < reps; i++) {
    puts("hello world");
  }
  return 0;
}
