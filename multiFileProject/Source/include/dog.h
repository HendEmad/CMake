#ifndef DOG_H
#define DOG_H

#include<string>
#include<iostream>
using namespace std;

class Dog{
private:
    string dog_name {"Puffy"};

public: 
    explicit Dog(string name_param);
    Dog() = default;
    ~Dog();

    string get_name() const{
        return dog_name;
    }

    void set_dog_name(const string& name){
        dog_name = name;
    }

    void print_info(){
        cout << "Dog [name: " << dog_name << " ]" << endl;
    }
};

#endif 