import 'package:sem_5/sem5lab/lab_10/utils/import_export.dart';

class StudentController extends GetxController {
  RxList<Student> studentList = <Student>[].obs;
  RxList<Student> filteredList = <Student>[].obs;
  RxString  searchText= ''.obs;

  void addStudent(String name, String email) async {
    Student newStudent = Student(name: name, email: email);
    await DatabaseHelper().insertStudent(newStudent);
    fetchStudents();
  }

  void fetchStudents() async {
    studentList.value = await DatabaseHelper().getAllStudents();
    filteredList.value = studentList.value;

  }

  void updateStudent(Student student) async {
  await DatabaseHelper().updateStudent(student);
  fetchStudents();
}

void deleteStudent(int id) async {
  await DatabaseHelper().deleteStudent(id);
  fetchStudents();
}

void applySearch(String text){
  searchText.value = text;

  if(text.isEmpty){
    filteredList.value = studentList.value;
  }
  else{
    filteredList.value = studentList.where((student) {
      return student.name.toLowerCase().contains(text.toLowerCase()) ||
             student.email.toLowerCase().contains(text.toLowerCase());
    }).toList();
  }

}


  @override
  void onInit() {
    super.onInit();
    fetchStudents();
  }
}
