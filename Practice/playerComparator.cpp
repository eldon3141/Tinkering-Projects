#include <iostream>
#include <algorithm>
#include <string>

using namespace std;

struct Player{
    Player(int s, string n){
        score = s;
        name = n;
    }
    int score;
    string name;
};


int main(){
    Player team[5];
    team[0] = new Player("amy",100);
    team[1] = new Player("david",100);
    team[2] = new Player("heraldo",50);
    team[3] = new Player("aakansha",75);
    team[4] = new Player("aleksa",150);

    sort(team.begin(),team.end(), cmp);
}