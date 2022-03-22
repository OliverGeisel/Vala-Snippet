#include <chrono>
#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <iostream>
#include <math.h>

#define WARMUP 10000
#define MEASURE 1000000
// Jede Methode Wirft und fängt die aufgerufene
const int A_All(const int i);
const int B_All(const int i);
const int C_All(const int i);
const int D_All(const int i);
const int E_All(const int i);

// Letzte Methode wirft, aber nur die erste fängt
const int A_First(const int i);
const int B_First(const int i);
const int C_First(const int i);
const int D_First(const int i);
const int E_First(const int i);

// Jede Methode wirft, und muss Objekte aufräumen
const int A_C(const int i);
const int B_C(const int i);
const int C_C(const int i);
const int D_C(const int i);
const int E_C(const int i);

// Eine sehr tiefe Aufrufebene
const int A_D(const int i);
const int B_D(const int i);
const int C_D(const int i);
const int D_D(const int i);
const int E_D(const int i);

const int A_D(const int i);
const int B_D(const int i);
const int C_D(const int i);
const int D_D(const int i);
const int E_D(const int i);

const int A_All(const int i) {
  try {
    B_All(i);
  } catch (const std::exception &e) {
    // std::cerr << "Fehler gefangen in A\n";
  }
  return 0;
}

const int B_All(const int i) {
  try {
    C_All(i);
  } catch (const std::exception &e) {
    // std::cerr << "Fehler gefangen in B\n";
    throw e;
  }
  return 0;
}

const int C_All(const int i) {
  try {
    D_All(i);
  } catch (const std::exception &e) {
    // std::cerr << "Fehler gefangen in C\n";
    throw e;
  }
  return 0;
}

const int D_All(const int i) {
  try {
    E_All(i);
  } catch (const std::exception &e) {
    // std::cerr << "Fehler gefangen in D\n";
    throw e;
  }
  return 0;
}

const int E_All(const int i) {
  // throw std::exception();
  return 0;
}

int run_All(std::chrono::high_resolution_clock::time_point *results) {
  std::chrono::high_resolution_clock::time_point start, end;
  const int i = 1;
  // warm up
  int run;
  for (run = 0; run < WARMUP; ++run) {
    try {
      A_All(i);
    } catch (const std::exception &e) {
      // std::cerr << e.what() << '\n';
    }
  }
  // REAL run
  for (run = 0; run < MEASURE; ++run) {
    start = std::chrono::high_resolution_clock::now();
    try {
      A_All(i);
    } catch (const std::exception &e) {
      // std::cerr << e.what() << '\n';
    }
    end = std::chrono::high_resolution_clock::now();
    results[run * 2] = start;
    results[run * 2 + 1] = end;
  }
  return 0;
}

// --------------------------------------------------------

class NichtFangen {};

const int A_First(const int i) {
  try {
    B_First(i);
  } catch (const std::exception &e) {
    // std::cerr << "Fehler gefangen in A\n";
  }
  catch(const NichtFangen &f){
    std::cout << " Es gab einen anderen Fehler !\n";
  }
  return 0;
}

const int B_First(const int i) {
  try {
    C_First(i);
  } catch (const NichtFangen &e) {
    std::cerr << "Fehler gefangen in B\n";
    throw e;
  }
  return 0;
}

const int C_First(const int i) {
  try {
    D_First(i);
  } catch (const NichtFangen &e) {
    std::cerr << "Fehler gefangen in C\n";
    throw e;
  }
  return 0;
}

const int D_First(const int i) {
  try {
    E_First(i);
  } catch (const NichtFangen &e) {
    std::cerr << "Fehler gefangen in D\n";
    throw e;
  }
  return 0;
}

const int E_First(const int i) {
  throw std::exception();
  return 0;
}

int run_First(std::chrono::high_resolution_clock::time_point *results) {
  const int i = 1;
  std::chrono::high_resolution_clock::time_point start, end;
  // warm up
  int run;
  for (run = 0; run < WARMUP; ++run) {
    try {
      A_First(i);
    } catch (const std::exception &e) {
      // std::cerr << e.what() << '\n';
    }
  }

  // REAL run

  for (run = 0; run < MEASURE; ++run) {
    start = std::chrono::high_resolution_clock::now();
    try {
      A_First(i);
    } catch (const std::exception &e) {
      // std::cerr << e.what() << '\n';
    }
    end = std::chrono::high_resolution_clock::now();
    results[run * 2] = start;
    results[run * 2 + 1] = end;
  }
  return 0;
}

void evaluate(std::chrono::high_resolution_clock::time_point *results,
              std::chrono::high_resolution_clock::time_point start,
              std::chrono::high_resolution_clock::time_point end) {
  std::chrono::duration<double> diff = end - start;
  double sum = 0.0;
  double expectaion_value;
  std::chrono::duration<double> temp_diff;
  for (int i = 0; i < MEASURE; ++i) {
    temp_diff = results[i * 2 + 1] - results[i * 2];
    sum += temp_diff.count();
  }
  double variance;
  expectaion_value = sum / MEASURE;
  double temp = 0;
  for (int i = 0; i < MEASURE; ++i) {
    temp_diff = results[i * 2 + 1] - results[i * 2];
    temp += std::pow(temp_diff.count() - expectaion_value, 2);
  }
  variance = temp / MEASURE;
  double standard_deviation = std::sqrt(variance);

  // print section
  auto time = diff.count();
  std::cout << "Gesamte Zeit:\t" << time
            << "s\t" << time *1000 << "ms\n"
            << "Durchschnittliche Zeit:\t" << expectaion_value << "s\t"
            << expectaion_value * 1000 << "ms\t" << expectaion_value * 1000000
            << "microsec.\n"
            << "Varianz:\t" << variance << "s\t"<<variance*1000 << "ms\t"<<variance*1000000<<"mikrosec.\n"
            << "Standardabweichung:\t" << standard_deviation <<"s\t"<<standard_deviation*1000<<"ms"<< std::endl;
}

int main(int argc, char **args) {
  auto results = (std::chrono::high_resolution_clock::time_point *)malloc(
      sizeof(std::chrono::high_resolution_clock::time_point) * MEASURE * 2);
  auto start = std::chrono::high_resolution_clock::now();
  run_All(results);
  auto end = std::chrono::high_resolution_clock::now();
  std::cout << "Alle Funktionen:\n";
  evaluate(results, start, end);

  start = std::chrono::high_resolution_clock::now();
  run_First(results);
  end = std::chrono::high_resolution_clock::now();
  std::cout << "\nNur erste Funktion:\n";
  evaluate(results, start, end);
  free(results);
}