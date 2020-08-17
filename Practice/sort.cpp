#include <iostream>
#include <algorithm>

using namespace std;

void selectionSort(int *arr, int len);
int main(){
    int len = 10;
    int arr[len] = {1,5,2,1,3,10,9,2,2,-5};
    selectionSort(arr,len);
    for(int i = 0; i < len; i++){
        cout << arr[i] << " | ";
    }
    cout << endl;

}

void selectionSort(int *arr, int len){
    if(len < 2)
        return;
    int sub_start = 0, minIndex = 0;
    while(sub_start < len-1){
        for(int i = sub_start; i < len; i++){
            if(arr[i] < arr[minIndex]){
                minIndex = i;
            }
        }
        swap(arr[sub_start++],arr[minIndex]);
        minIndex = sub_start;
    }
}
