(* QUESTION:
Code this integer square root algorithm using iteration in a prodeural
programming language.

CORRECT ANSWER:-
uint64_t increase(uint64_t k, uint64_t n) {
  return (k+1) * (k+1) > n ? k : k + 1;
}

uint64_t introot(uint64_t n) {
  int m;
  uint64_t k;
  for(m = 0, k = n; k; m += 2, k >>= 2) {}
  for(k = 0; m != 0; m -= 2, k = increase(2 * k, n >> m)) {}

  return k;
}
*)
