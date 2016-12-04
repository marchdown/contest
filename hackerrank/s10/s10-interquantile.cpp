#include <iostream>
#include <vector>
#include <algorithm>
#include <iomanip>

using namespace std;

  float median(vector<int> ns) {
    float median;
    int k = ns.size();
    if (k % 2 == 0) {
      median = (ns[(k / 2) - 1] + ns[k / 2]) / 2.0;
    } else {
      median = ns[k/2]; // rounding down, counting from zero
    }
    return median;
  }


int main() {
  int n;
  vector<int> X;
  vector<int> F;
  vector<int> nums;
  int count;
  int temp;
  cin >> n;
  for (int i = 0; i < n; i++){
    cin >> temp;
    X.push_back(temp);
  }
  for (int i = 0; i < n; i++){
    cin >> temp;
    F.push_back(temp);
  }
  for (int i = 0; i < n; i++){
    for (int j = 0; j < F[i]; j++){
      nums.push_back(X[i]);
    }
  }
  sort(nums.begin(), nums.end());
  int k = nums.size();
  
  vector<int> ls;
  vector<int> hs;
  for (int i = 0; i < k / 2; i++) { // assume rounding down
    ls.push_back(nums[i]);
    hs.push_back(nums[(k / 2 + (k%2)) + i]); // check for fencepost error here
  }
  float q1 = median(ls);
  float q3 = median(hs);
  float interquantile_difference = q3-q1;
  cout << fixed << setprecision(1) << interquantile_difference;
  return 0;
}
