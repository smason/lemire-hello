#include <iostream>

int
main(int argc, char** argv)
{
  int reps = 1;
  if (argc == 2) {
    reps = atoi(argv[1]);
  }
  for (int i = 0; i < reps; i++) {
    std::cout << "hello world\n";
  }
  return 0;
}
