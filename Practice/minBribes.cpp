#include <iostream>
#include <vector>

using namespace std;

int minimumBribes(vector<int> q);
int main()
{
    vector<int> q = {2,4,3,1,5};
    cout << minimumBribes(q) << endl;
}

int minimumBribes(vector<int> q){
    int minBribes = 0;

    for(int newPos = 0; newPos < q.size(); newPos++){
      int initialPos = q[newPos] - 1;
      //No person should bribe more than two people
      if(initialPos - newPos > 2){
          cout << "Too chaotic" << endl;
          return -1;
      }
      //A person will only move if they bribe or get bribed
      //Best position someone could be at it is 2 less than their original
      //Worst position someone could be at it is at the end
      //If you're at the best position, no one in front could've bribed you
      //# of people in front of you who are bigger must've bribed you to move
      //you backwards a position.

      for(int j = max(0,initialPos-1); j < newPos; j++){
          if(q[j] > q[newPos])
            minBribes++;
      }
    }
    cout << minBribes << endl;

    return minBribes;
}
}