#include <algorithm> // sort
#include <iostream>  // cin, cout, endl
#include <vector>
// #include <tuple>
#include <cmath>
using namespace std;

// FIXME: use generic numeric type variable and not int specifically.

// avenues: as suggested, take medians recursively
// or, divide length of the array into a given number of quantiles, round up (or
// down) and pick the elements at these indices.
//

int median(vector<int> ns) {
  int median;
  int k = ns.size();
  if (k % 2 == 0) {
    median = (ns[(k / 2) - 1] + ns[k / 2]) / 2.0;
  } else {
    median = ns[k / 2]; // rounding up
  }
  return median;
}
 
int main() {
  int k;
  vector<int> xs, ls, hs;
  int q1, q2, q3;
  int x;

  cin >> k;
  for (int i = 0; i < k; i++) {
    cin >> x;
    xs.push_back(x);
  }

  sort(xs.begin(), xs.end());
  q2 = median(xs);
  for (int i = 0; i < k / 2; i++) { // assume rounding down
    ls.push_back(xs[i]);
    hs.push_back(xs[k / 2 + 1 + i]); // check for fencepost error here
  }
  q1 = median(ls);
  q3 = median(hs);

  cout << q1 << endl << q2 << endl << q3;

  // tuple<vector<int>,int,vector<int>> lower_upper_median(vector<int> xs) {
  //   sort(xs);
  //   vector<int> lower, upper;
  //   int median;
  //   return make_tuple();
  // }

  // vector<int> quantile_elements(int num_quantiles, int length_xs, vector<int>
  // xs){
  //   float chunk_size = length_xs/ static_cast<float>(num_quantiles);
  //   vector<int> quantile_upper_bounds;
  //   for (i = 0; i < num_quantiles; i++){
  //     quantile_upper_bounds.push_back(xs[chunk_size*i])
  //   }

  //   return quantile_upper_bounds;
  // }

  // for (int i = 0; i < floor(k/2.0); i++){
  //   ls.push_back(xs[i]);
  //   hs.push_back(xs[i+ceil(k/2.0)]; i++);
  // }

  // for (const auto &bound : quantile_elements(4, k, xs)){
  //   cin << bound << endl;
  // }

  /* Enter your code here. Read input from STDIN. Print output to STDOUT */
  return 0;
}
