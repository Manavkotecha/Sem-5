import 'package:home1/sem5lab/utils/import_export.dart';

class DialogWithAlertGetX extends StatelessWidget {
  const DialogWithAlertGetX({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Alert with GetX"),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                    title: "Alert with GetX",
                    middleText: "This is GetX",
                    onCancel: () {
                      Get.back();
                    },
                    onConfirm: () {
                      Get.back();
                      print(" ::: SUBMIT Button Clicked :::");
                    });
              },
              child: const Text("Dialog Box")),
        ));
  }
}
