#include "dog.h"
#include <iostream>
using namespace std;

Dog::Dog(string name_param) : dog_name(name_param){
    cout << "Constructor for dog " << dog_name << " Called." << endl;
}

Dog::~Dog(){
    cout << "Desctructor for dog " << dog_name << " Called." << endl;
}