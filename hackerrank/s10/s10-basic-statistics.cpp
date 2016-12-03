#include <algorithm>
#include <iostream>
#include <numeric>
#include <unordered_map>
#include <vector>
using namespace std;

int main() {
  int k;
  int n;
  float mean;
  float median;

  vector<int> ns; // not specifying length
  cin >> k;
  for (int i = 0; i < k; i++) {
    cin >> n;
    ns.push_back(n);
  }
  sort(ns.begin(), ns.end()); // void
  if (k % 2 == 0) {
    median = (ns[(k / 2) - 1] + ns[k / 2]) / 2.0;
  } else {
    median = ns[(k + 1) / 2];
  }

  mean = static_cast<float>(accumulate(ns.begin(), ns.end(), 0)) / k;

  int mode = ns.front(); // FIXME
  reverse(ns.begin(), ns.end());
  unordered_map<int, int> mode_counter;
  for (const auto &n : ns) {
    if (mode_counter.count(n) == 0)
      mode_counter[n] = 1;
    else
      mode_counter[n]++;

    if (mode_counter[n] >= mode_counter[mode])
      mode = n;
  }
  cout << mean << "\n" << median << "\n" << mode;
  return 0;
}
