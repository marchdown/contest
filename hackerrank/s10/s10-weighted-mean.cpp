#include <iostream>
#include <vector>
#include <iomanip>

using namespace std;

int main() {
  int k; // vector length
  int temp;
  float sum_weights = 0;
  vector<int> nums, weights;
  cin >> k;

  for (int i = 0; i < k; i++) {
    cin >> temp;
    nums.push_back(temp);
  }

  for (int i = 0; i < k; i++) {
    cin >> temp;
    weights.push_back(temp);
  }

  float weighted_mean = 0;

  for (int i = 0; i < k; i++) {
    weighted_mean += (nums[i] * weights[i]);
    sum_weights += weights[i];
  }
  weighted_mean = weighted_mean / sum_weights;

  cout << setprecision(1) << fixed << weighted_mean;
  return 0;
}
