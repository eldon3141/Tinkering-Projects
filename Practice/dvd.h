#include <string>

class DVD{
public:

    DVD(std::string name, int yr, std::string dir){
        m_name = name;
        m_releaseYear = yr;
        m_director = dir;
    }

    DVD(){
        m_name = "Blank Name";
        m_releaseYear = -1;
        m_director = "Blank Director";
    }

    std::string getName(){
        return m_name;
    }

    bool correctNameTo(std::string newName){
        m_name = newName;
        //Just in case the name isn't appropriate or valid
        return true;
    }

    int getYear(){
        return m_releaseYear;
    }

    bool correctYearTo(int newYr){
        m_releaseYear = newYr;
        return true;
    }

    std::string getDirector(){
        return m_director;
    }

    bool correctDirectorTo(std::string newDir){
        m_director = newDir;
        return true;
    }

private:
    std::string m_name;
    int m_releaseYear;
    std::string m_director;
};