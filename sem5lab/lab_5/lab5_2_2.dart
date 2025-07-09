import 'package:sem_5/sem5lab/utils/import_export.dart';

class NavigationGetXTwo extends StatelessWidget {
  const NavigationGetXTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Navigation With GetX Back")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.to(const NavigationGetX()); // Navigate to the other screen
          },
          child: const Text("Navigate With GetX"),
        ),
      ),
    );
  }
}
