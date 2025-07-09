import 'package:sem_5/sem5lab/utils/import_export.dart';

class SnackbarWithGetX extends StatelessWidget {
  const SnackbarWithGetX({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Snack Bar using GetX"),),
      body:Center(
        child: ElevatedButton(
            onPressed: (){
              Get.snackbar(
                "Snackbar is Opened",
                "THis will open the Snackbar",
                animationDuration: Duration(microseconds: 300),
                backgroundColor: Colors.blue,
                colorText: Colors.white,
                snackPosition: SnackPosition.BOTTOM,
                );
            },
            child: const Text("Snack Bar")),
      ),
    );
  }
}
