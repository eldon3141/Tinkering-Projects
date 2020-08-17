#include <iostream>
#include <vector>

using namespace std;

vector<int> rotLeft(vector<int> a, int d);

int main()
{
    int input, shifts;
    cin >> shifts;
    vector<int> arr;
    while(1){
        cin >> input;
        if(input == -1)
            break;
        else if(input == 0){
            rotLeft(arr,shifts);
            arr = vector<int> {};
        }
        else
            arr.push_back(input);
    }
}

// O(n) time and O(d mod n) space
vector<int> rotLeft(vector<int> a, int d) {
    int a_len = a.size();
    int shift = d % a_len;
    vector<int> temp;
    for(int i = 0; i < shift; i++)
        temp.push_back(a[i]);
    for(int i = shift; i < a_len; i++){
        a[i-shift] = a[i];
    }

    int j = 0;
    for(int i = a_len-shift; i < a_len; i++){
        a[i] = temp[j];
        j++;
    }

    for(int i = 0; i < a_len; i++)
        cout << a[i] << " ";
    cout << endl;

    return a;

}

//Better: O(1) space
/*
reverse(a.begin(),a.end());
reverse(a.begin(),a.begin()+(a_len-shift));
reverse(a.begin()+(a_len-shift),a.end());
*/