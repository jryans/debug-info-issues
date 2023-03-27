#include <iostream>
using namespace std;

// int update(int a);

void lambdaNoCap()
{
   int m = 0;
   // m = update(m);
   int n = 0;
   // n = update(n);
   m = [] (int a, int b) {
      return a + b;
   }(m, n);
   cout << m << endl << n << endl;
}

void lambdaRefCapMutable()
{
   int m = 0;
   // m = update(m);
   int n = 0;
   // n = update(n);
   [&, n] (int a) mutable {
      m = ++n + a;
   }(m);
   cout << m << endl << n << endl;
}

int main() {
   lambdaNoCap();
   lambdaRefCapMutable();
}
