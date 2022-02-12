#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define FEHLER -1
#define BESONDERER_FEHLER 0
#define KEIN_FEHLER 1

const const int A_A(const int i);
const int B_A(const int i);
const int C_A(const int i);
const int D_A(const int i);
const int E_A(const int i);

const int A_F(const int i);
const int B_F(const int i);
const int C_F(const int i);
const int D_F(const int i);
const int E_F(const int i);

const int A_C(const int i);
const int B_C(const int i);
const int C_C(const int i);
const int D_C(const int i);
const int E_C(const int i);

const int A_D(const int i);
const int B_D(const int i);
const int C_D(const int i);
const int D_D(const int i);
const int E_D(const int i);

const int A_A(const int i) {
  if (B_A(i) <= FEHLER)
    return FEHLER;
  return 0;
}

const int B_A(const int i) {
  if (C_A(i) <= FEHLER)
    return FEHLER;
  return 0;
}

const int C_A(const int i) {
  if (D_A(i) <= FEHLER)
    return FEHLER;
  return 0;
}

const int D_A(const int i) {
  if (E_A(i) <= FEHLER)
    return FEHLER;
  return 0;
}

const int E_A(const int i) { return FEHLER; }

int run_A() {
  const int i = 1;
  if (A_A(i) < FEHLER) {
    printf("There was an error!\n");
  }
  return 0;
}

const int A_F(const int i) {
  if (B_F(i) <= 0)
    return KEIN_FEHLER;
  return 1;
}

const int B_F(const int i) {
  if (C_F(i) <= FEHLER)
    return FEHLER;
  return 0;
}

const int C_F(const int i) {
  if (D_F(i) <= FEHLER)
    return FEHLER;
  return 0;
}

const int D_F(const int i) {
  if (E_A(i) <= FEHLER)
    return FEHLER;
  return 0;
}

const int E_F(const int i) { return BESONDERER_FEHLER; }

int run_F() {
  const int i = 1;
  if (A_F(i) <= FEHLER) {
    printf("There was an error!\n");
  }
  return 0;
}

static inline double gtod() {
  struct timeval act_time;
  gettimeofday(&act_time, NULL);
  return (double)act_time.tv_sec + (double)act_time.tv_usec / 1000000.0;
}

int main(int argc, char **args) {
  double start = gtod();
  run_A();
  double end = gtod();
  double diff = end - start;
  printf("Alle Funktionen:\t%.6fs\t%fms\n", diff, diff * 1000);
  start = gtod();
  run_F();
  end = gtod();
  diff = end - start;
  printf("Nur erste Funktion:\t%.6fs\t%fms\n", diff, diff * 1000);
}