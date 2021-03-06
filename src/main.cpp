#include "game_state.h"
#include "sfml_window_manager.h"
#include "sfml_game.h"
#include "sfml_resources.h"
#include <iostream>
#include <vector>
#include <cassert>
#include <SFML/Graphics.hpp>
#include <unistd.h>

void test() {
  //test_sfml_window_manager();
  //test_normal_char();
}

int show_sfml_game(int ca) {
  sfml_game ds(ca);
  ds.exec();
  return 0;
}

int main(int argc, char **argv) {
  #ifndef NDEBUG
  test();
  #else
  assert(1 == 2);
  #endif

  const std::vector<std::string> args(argv, argv + argc);
  int close_at = -1;
  
#ifdef CI
  std::clog << system("ls") << "\n";
#endif
  
  if (std::count(std::begin(args), std::end(args), "--version")) {
    // Travis: 2.1
    // RuG: 2.3.2
    std::cout
      << "SFML version: " << SFML_VERSION_MAJOR
      << "." << SFML_VERSION_MINOR
      #if(SFML_VERSION_MINOR > 1)
      << "." << SFML_VERSION_PATCH
      #endif
      << std::endl
    ;
    return 0;
  }
  
  if (std::count(std::begin(args), std::end(args), "--test")) {
    std::cout << "Hello world!" << std::endl;
    return 0;
  }
  
  if (std::count(std::begin(args), std::end(args), "--ci")) {
    close_at = 1000;
  }
  
  while (sfml_window_manager::get().get_window().isOpen()) {
    if (sfml_window_manager::get().get_state() == game_state::playing) {
      show_sfml_game(close_at);
    }
  }
  
  return 0;
}
