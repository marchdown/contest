#include <iostream>
#include <vector>
using namespace std;
//T dot_product(vector<T> as, vector<T> bs) {
  // how to express guarantees?
  // T is a numeric type
  // as and bs have the same length

  // how do we write folds in C++?
  // how do we zip? I could zip and then accumulate pairs.

  // FIXME
  //return 0;
// how do I comment out a whole region in vim?
//}

int main() {
  int k; // vector length
  int temp;
  vector<int> nums, weights;
  // this is nothing more but a dot product of two vectors divided by their
  // length
  cin >> k;

  for (int i = 0; i < k; i++) {
    cin >> temp;
    nums.push_back(temp);
  }
  for (int i = 0; i < k; i++) {
    cin >> temp;
    weights.push_back(temp);
  }
  // float weighted_mean = static_cast<float>(dot_product(nums, weights))/k

  float weighted_mean = 0;
  // does vim have a killring equivalent?
  for (int i = 0; i < k; i++) {
    weighted_mean += nums[i] * weights[i];
  }
  weighted_mean = weighted_mean/ static_cast<float>(k);

  cout
      << weighted_mean; // Can I use unicode indentifiers? What are the caveats?

  return 0;
}
