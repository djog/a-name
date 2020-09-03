#include <iostream>
#include <cstring>
#include <string>

#define RED "\x1B[107;91m"
#define YELLOW "\033[107;93m"
#define GREEN "\033[107;92m"
#define CYAN "\033[107;96m"
#define BLUE "\033[107;94m"
#define MAGENTA "\033[107;95m"
#define COLOR_RESET "\033[0m"

int main() {
  
  std::string red(RED);
  std::string yellow(YELLOW);
  std::string green(GREEN);
  std::string cyan(CYAN);
  std::string blue(BLUE);
  std::string magenta(MAGENTA);
  std::string color_reset(COLOR_RESET);
  
  std::string msg = red+"hi"+color_reset;
  
  char[1000] chars;
  
  std::strcpy(chars, msg);
  
  printf(chars);
  
  return 0;
  
}