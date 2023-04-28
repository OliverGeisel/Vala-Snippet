#include <bits/time.h>
#include <bits/types/clockid_t.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define FEHLER -1
#define BESONDERER_FEHLER 0
#define KEIN_FEHLER 1

#define WARMUP 10000
#define MEASURE 10000000

const int A_All(const int i);
const int B_All(const int i);
const int C_All(const int i);
const int D_All(const int i);
const int E_All(const int i);

const int A_First(const int i);
const int B_First(const int i);
const int C_First(const int i);
const int D_First(const int i);
const int E_First(const int i);

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

static inline struct timespec gtod();

 int A_All(const int i) {
  if (B_All(i) <= FEHLER)
    return FEHLER-i;
  return 0;
}

 int B_All(const int i) {
  if (C_All(i) <= FEHLER)
    return FEHLER-i;
  return 0;
}

 int C_All(const int i) {
  if (D_All(i) <= FEHLER)
    return FEHLER-i;
  return 0;
}

 int D_All(const int i) {
  if (E_All(i) <= FEHLER)
    return FEHLER-i;
  return 0;
}

 int E_All(const int i) { return FEHLER; }

int run_All(struct timespec *results) {
  srand(time(NULL));
  const int i = rand()%2;
  struct timespec start, end;

  // warm up
  int run;
  for (run = 0; run < WARMUP; ++run) {
    if (A_All(i) < FEHLER-1) {
      perror("There was an error!\n");
    }
  }

  // REAL run
  for (run = 0; run < MEASURE; ++run) {
    start = gtod();
    int error = A_All(i); 
    if (error < FEHLER-1) {
      perror("There was an error!\n");
    }
    end = gtod();
    results[run * 2] = start;
    results[run * 2 + 1] = end;
  }
  return 0;
}

// ---------------------------------------------------------------------------------------------

const int A_First(const int i) {
   void* pointer = malloc(2);
  int error = B_First(i);
  if (error == BESONDERER_FEHLER) {
    // printf("Fehler gefangen in A\n");
    return KEIN_FEHLER;
  }
  if (error < 0) {
    printf("Es gab einen anderen Fehler!\n");
  }  
  free(pointer);
  return 1;
}

const int B_First(const int i) { 
  void* pointer = malloc(2);
  if (C_First(i) <= FEHLER) {
    printf("Fehler gefangen in B\n");
    return FEHLER-i;
  }
  free(pointer);
  return 0;
}

const int C_First(const int i) {
   void* pointer = malloc(2);
  if (D_First(i) <= FEHLER) {
    printf("Fehler gefangen in C\n");
    return FEHLER-i;
  }  
  free(pointer);
  return 0;
}

const int D_First(const int i) {
  void* pointer = malloc(2);
  if (E_First(i) <= FEHLER) {
    printf("Fehler gefangen in D\n");
    return FEHLER-i;
  }
  free(pointer);
  return 0;
}

const int E_First(const int i) { 
  void* pointer = malloc(2);
  free(pointer);
return BESONDERER_FEHLER; }

int run_First(struct timespec *results) {
  srand(time(NULL));
  const int i = rand()%2;
  struct timespec start, end;

  // warm up
  int run;
  for (run = 0; run < WARMUP; ++run) {
    if (A_First(i) < FEHLER-1) {
      perror("There was an error!\n");
    }
  }

  // REAL run
  for (run = 0; run < MEASURE; ++run) {
    start = gtod();
    if (A_First(i) < FEHLER-1) {
      perror("There was an error!\n");
    }
    end = gtod();
    results[run * 2] = start;
    results[run * 2 + 1] = end;
  }
  return 0;
}

// ---------------------------------------------------------------------------------------------

static inline struct timespec gtod() {
  struct timespec back;
  int clock = clock_gettime(0, &back);
  return back;
}

void evaluate(struct timespec *results, struct timespec start,
              struct timespec end) {
  double diff_sec = end.tv_sec - start.tv_sec;
  double diff_nano_sec = end.tv_nsec - start.tv_nsec;
  double pres_diff = diff_sec + diff_nano_sec / 1000000000;

  double sum = 0.0;
  double expectaion_value;
  for (int i = 0; i < MEASURE; ++i) {
    double diff_sec = results[i * 2 + 1].tv_sec - results[i * 2].tv_sec;
    double diff_nano_sec = results[i * 2 + 1].tv_nsec - results[i * 2].tv_nsec;
    double pres_diff = diff_sec + diff_nano_sec / 1000000000;
    sum += pres_diff;
  }
  double variance;
  expectaion_value = sum / MEASURE;
  double temp = 0;
  for (int i = 0; i < MEASURE; ++i) {
    double diff_sec = results[i * 2 + 1].tv_sec - results[i * 2].tv_sec;
    double diff_nano_sec = results[i * 2 + 1].tv_nsec - results[i * 2].tv_nsec;
    double pres_diff = diff_sec + diff_nano_sec / 1000000000;
    temp += pow(pres_diff - expectaion_value, 2);
  }
  variance = temp / MEASURE;
  double standard_deviation = sqrt(variance);
  printf("Gesamte Zeit:\t\t%.8f s\t%f ms\n", pres_diff, pres_diff * 1000);
  printf("Durchschnittliche Zeit:\t%.6f s\t%fms\t%f mikrosec.\n",
         expectaion_value, expectaion_value * 1000, expectaion_value * 1000000);
  printf("Varianze:\t\t%.6f s\t%f ms\t%f mikrosec.\n", variance, variance * 1000,
         variance * 1000000);
  printf("Standardabweichung:\t%.6fs\t%fms\n", standard_deviation,
         standard_deviation * 1000);
}

int main(int argc, char **args) {
  struct timespec *results =
      (struct timespec *)malloc(sizeof(struct timespec) * MEASURE * 2);
  struct timespec start = gtod();
  run_All(results);
  struct timespec end = gtod();
  printf("Alle Funktionen:\n");
  evaluate(results, start, end);
  start = gtod();
  run_First(results);
  end = gtod();
  printf("\nNur erste Funktion:\n");
  evaluate(results, start, end);
  free(results);
}