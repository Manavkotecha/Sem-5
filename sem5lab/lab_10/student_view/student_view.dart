import 'package:sem_5/sem5lab/lab_10/utils/import_export.dart';

class StudentView extends StatelessWidget {
  final StudentController controller = Get.put(StudentController());

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  int? editingId;

  void addOrUpdateStudent() {
    final name = nameController.text.trim();
    final email = emailController.text.trim();
    if (name.isEmpty || email.isEmpty) return;

    if (editingId == null) {
      controller.addStudent(name, email);
    } else {
      controller
          .updateStudent(Student(id: editingId, name: name, email: email));
      editingId = null;
    }

    nameController.clear();
    emailController.clear();
  }

  void editStudent(Student student) {
    nameController.text = student.name;
    emailController.text = student.email;
    editingId = student.id;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Student DB - GetX + SQLite")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  labelText: "Search",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder()),
              onChanged: controller.applySearch,
            ),
            TextField(
                controller: nameController,
                decoration: InputDecoration(labelText: "Name")),
            TextField(
                controller: emailController,
                decoration: InputDecoration(labelText: "Email")),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: addOrUpdateStudent,
              child: Text(editingId == null ? "Add Student" : "Update Student"),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Obx(() {
                return ListView.builder(
                  itemCount: controller.filteredList.length,
                  itemBuilder: (context, index) {
                    final student = controller.filteredList[index];
                    return Card(
                      child: ListTile(
                        title: Text(student.name),
                        subtitle: Text(student.email),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: Icon(Icons.edit, color: Colors.blue),
                              onPressed: () => editStudent(student),
                            ),
                            IconButton(
                              icon: Icon(Icons.delete, color: Colors.red),
                              onPressed: () =>
                                  controller.deleteStudent(student.id!),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
