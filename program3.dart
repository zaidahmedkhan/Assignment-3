// Create a Person class with firstName and lastName properties, and a
// method called fullName()that returns the full name of the person.Then create
// a Student class that inherits from Person and has a major property.Override
// the fullName() method in the Student class to include the major in the full
//name.

void main() {
  Person person = Person("Zaid", "Ahmed");
  print("Full Name : ${person.fullName()}");
  Student student = Student("Zaid", "Ahmed");
  print("Student Full Name with Major: ${student.fullName()}");
}

class Person {
  late String firstName;
  late String lastName;

  Person(this.firstName, this.lastName);

  String fullName() {
    return ("$firstName $lastName");
  }
}

class Student extends Person {
  String major = "Computer Science";
  Student(String firstName, String lastName) : super(firstName, lastName);

  // override
  String fullName() {
    return ("$firstName $lastName, $major");
  }
}
