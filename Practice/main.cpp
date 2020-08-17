#include <iostream>
#include <limits.h>
#include "dvd.h"

using namespace std;

const int MAX_DVDS = 15;

int main()
{   
    DVD movies[MAX_DVDS];
    string a = "a";
    int yr = 1901;
    string dir = "Bob";

    for(int i = 0 ; i < MAX_DVDS; i++){
        DVD temp(a,yr,dir);
        movies[i] = temp;
        a += "a";
        yr++;
        cout << movies[i].getName() << " | ";
        cout << movies[i].getYear() << " | ";
        cout << movies[i].getDirector() << endl;
    }

    cout << INT_MAX << endl;

}
