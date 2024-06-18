#include "src/include/person.h"

Person::Person(const std::string& name, int age) : name(name), age(age) {}

std::string Person::getName() const {
  return name;
}

void Person::setName(const std::string& newName) {
  name = newName;
}

void Person::setAge(int newAge)

{
  age = newAge;
}

int Person::getAge() const {
  return age;
}