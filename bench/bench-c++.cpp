#include <chrono>
#include <iostream>

// Jede Methode Wirft und fängt die aufgerufene
const int A_A(const int i);
const int B_A(const int i);
const int C_A(const int i);
const int D_A(const int i);
const int E_A(const int i);

// Letzte Methode wirft, aber nur die erste fängt
const int A_F(const int i);
const int B_F(const int i);
const int C_F(const int i);
const int D_F(const int i);
const int E_F(const int i);

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

const int A_A(const int i) {
  try {
    B_A(i);
  } catch (const std::exception &e) {
    std::cerr << "Fehler gefangen in A\n";
  }
  return 0;
}

const int B_A(const int i) {
  try {
    C_A(i);
  } catch (const std::exception &e) {
    std::cerr << "Fehler gefangen in B\n";
    throw e;
  }
  return 0;
}

const int C_A(const int i) {
  try {
    D_A(i);
  } catch (const std::exception &e) {
    std::cerr << "Fehler gefangen in C\n";
    throw e;
  }
  return 0;
}

const int D_A(const int i) {
  try {
    E_A(i);
  } catch (const std::exception &e) {
    std::cerr << "Fehler gefangen in D\n";
    throw e;
  }
  return 0;
}

const int E_A(const int i) {
  throw std::exception();
  return 0;
}

int run_A() {
  const int i = 1;
  try {
    A_A(i);
  } catch (const std::exception &e) {
    std::cerr << e.what() << '\n';
  }
  return 0;
}

// --------------------------------------------------------

class NichtFangen {};

const int A_F(const int i) {
  try {
    B_F(i);
  } catch (const std::exception &e) {
    std::cerr << "Fehler gefangen in A\n";
  }
  return 0;
}

const int B_F(const int i) {
  try {
    C_F(i);
  } catch (const NichtFangen &e) {
    std::cerr << "Fehler gefangen in B\n";
    throw e;
  }
  return 0;
}

const int C_F(const int i) {
  try {
    D_F(i);
  } catch (const NichtFangen &e) {
    std::cerr << "Fehler gefangen in C\n";
    throw e;
  }
  return 0;
}

const int D_F(const int i) {
  try {
    E_F(i);
  } catch (const NichtFangen &e) {
    std::cerr << "Fehler gefangen in D\n";
    throw e;
  }
  return 0;
}

const int E_F(const int i) {
  throw std::exception();
  return 0;
}

int run_F() {
  const int i = 1;
  try {
    A_F(i);
  } catch (const std::exception &e) {
    std::cerr << e.what() << '\n';
  }
  return 0;
}

int main(int argc, char **args) {
  auto start = std::chrono::high_resolution_clock::now();
  run_A();
  auto end = std::chrono::high_resolution_clock::now();
  std::chrono::duration<double> diff = end - start;
  std::cout << "Alle Funktionen:\t" << diff.count() << "s\t "
            << diff.count() * 1000 << "ms" << std::endl;

  start = std::chrono::high_resolution_clock::now();
  run_F();
  end = std::chrono::high_resolution_clock::now();
  diff = end - start;
  std::cout << "Nur erste Funktion:\t" << diff.count() << "s\t "
            << diff.count() * 1000 << "ms" << std::endl;
}