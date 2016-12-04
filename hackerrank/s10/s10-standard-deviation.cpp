#include <iostream>
#include <iomanip>
#include <algorithm>
#include <vector>
#include <numeric> // accumulate
#include <cmath> // sqrt

float stddev(std::vector<int> xs){
  // assume that xs is already sorted in nondescending order;
  int k = xs.size();
  int sum = std::accumulate(xs.begin(), xs.end(),0);
  float mean = sum/static_cast<float>(k);
  std::vector<float> squared_deviations;
  for (int i = 0; i < k; i++){
    // I'd rather map square over linear deviations. How do I do that in c++?
    // std::for_each(devs.begin(), devs.end(), &square)
    // there's also std::transform but I should look up its syntax
    squared_deviations.push_back((xs[i]-mean)*(xs[i]-mean));
    // eh? is there a better way to square things?
  }
  float avg_sq_deviation = std::accumulate(squared_deviations.begin(),squared_deviations.end(),0)/k;
  
  float stddev = std::sqrt(avg_sq_deviation);
  return stddev;
}

int main() {
  int n;
  int temp;
  std::vector<int> xs;
  std::cin >> n;
  for (int i = 0; i < n; i++){
    std::cin >> temp;
    xs.push_back(temp);
  }
  std::sort(xs.begin(), xs.end());
  std::cout << std::fixed << std::setprecision(1) << stddev(xs);
  return 0;
}
