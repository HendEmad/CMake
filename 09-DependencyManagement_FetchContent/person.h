#include <string>

class Person {
    private:
    std::string name;
    int age;

    public:
    Person(const std::string& name, int age);
    std::string getName() const;
    void setName(const std::string& newName);
    int getAge() const;
    void setAge(int newAge);
};