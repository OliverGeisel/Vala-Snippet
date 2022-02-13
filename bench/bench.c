#include <bits/time.h>
#include <bits/types/clockid_t.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define FEHLER -1
#define BESONDERER_FEHLER 0
#define KEIN_FEHLER 1

const int A_A(const int i);
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
    perror("There was an error!\n");
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
    perror("There was an error!\n");
  }
  return 0;
}

static inline struct timespec gtod() {
  struct timespec back;
  int clock = clock_gettime(CLOCK_REALTIME, &back);
  return back;
}

int main(int argc, char **args) {
  struct timespec start = gtod();
  run_A();
  struct timespec end = gtod();
  double diff_sec = end.tv_sec - start.tv_sec;
  double diff_nano_sec = end.tv_nsec - start.tv_nsec;
  double pres_diff = diff_sec + diff_nano_sec/1000000000;
  printf("Alle Funktionen:\t%.6fs\t%fms\n", pres_diff, pres_diff * 1000);
  start = gtod();
  run_F();
  end = gtod();
  diff_sec = end.tv_sec - start.tv_sec;
  diff_nano_sec = end.tv_nsec - start.tv_nsec;
  pres_diff = diff_sec + diff_nano_sec / 1000000000;
  printf("Nur erste Funktion:\t%.6fs\t%fms\n", pres_diff, pres_diff * 1000);
}