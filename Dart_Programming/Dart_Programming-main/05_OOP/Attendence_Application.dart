class student {
 
  //Properties
  final String name;
  final int roll ;
  final int classNo;
  final int emergencyCont;
  final String bloodGroup;

  //Main Constructor
  student(
    {
      required this.name,
      required this.roll,
      required this.classNo,
      required this.emergencyCont,
      required this.bloodGroup,
    }
  );
} 
void main()

{
  student s1 = student(
    name: "John Doe",
    roll: 23,
    classNo: 10,
    emergencyCont: 1234567890,
    bloodGroup: "A+",
  );
  student s2 = student(
    name: "Jane Smith",
    roll: 45,
    classNo: 10,
    emergencyCont: 9876543210,
    bloodGroup: "B+",
  );
  student s3 = student(
    name: "Alice Johnson",
    roll: 12,
    classNo: 10,
    emergencyCont: 5556667777,
    bloodGroup: "O-",
  );

  print("Name: ${s1.name}");
  print("Roll Number: ${s1.roll}");
  print("Class Number: ${s1.classNo}");
  print("Emergency Contact: ${s1.emergencyCont}");
  print("Blood Group: ${s1.bloodGroup}");

  print ("\nName: ${s2.name}");
  print("Roll Number: ${s2.roll}");
  print("Class Number: ${s2.classNo}");     
  print("Emergency Contact: ${s2.emergencyCont}");
  print("Blood Group: ${s2.bloodGroup}");


  print ("\nName: ${s3.name}");
  print("Roll Number: ${s3.roll}");
  print("Class Number: ${s3.classNo}");
  print("Emergency Contact: ${s3.emergencyCont}");
  print("Blood Group: ${s3.bloodGroup}");

}
