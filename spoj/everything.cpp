#include <iostream>
using namespace std;
int main() {
  string s;
  cin >> s;
  while (s != "42") {
    cout << s << endl;
    cin >> s;
  }
  return 0;
}
