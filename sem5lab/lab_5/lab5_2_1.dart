import 'package:sem_5/sem5lab/utils/import_export.dart';

class NavigationGetX extends StatelessWidget {
  const NavigationGetX({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Screen")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.back(); // Go back to previous screen
          },
          child: const Text("Go Back with Get.back()"),
        ),
      ),
    );
  }
}
