#include <fmt/format.h>
#include <iostream>

int main() {
  std::cout << fmt::format("Hello {}\n", 123);
  return 0;
}
