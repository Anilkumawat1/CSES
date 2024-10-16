#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

int main() {
    int n, m, k;
    cin >> n >> m >> k;
    
    vector<int> applicants(n);
    vector<int> apartments(m);
    
    // Input applicants
    for(int i = 0; i < n; i++) {
        cin >> applicants[i];
    }
    
    // Input apartments
    for(int i = 0; i < m; i++) {
        cin >> apartments[i];
    }
    
    // Sort both arrays
    sort(applicants.begin(), applicants.end());
    sort(apartments.begin(), apartments.end());
    
    int i = 0, j = 0, count = 0;
    
    // Two-pointer technique
    while(i < n && j < m) {
        // Skip apartments that are too small
        while(j < m && applicants[i] - k > apartments[j]) {
            j++;
        }
        // If the apartment fits within the allowed size range, assign it
        if(j < m && abs(apartments[j] - applicants[i]) <= k) {
            count++;
            i++;
            j++;
        } else {
            i++;
        }
    }
    
    cout << count << endl;
    
    return 0;
}
