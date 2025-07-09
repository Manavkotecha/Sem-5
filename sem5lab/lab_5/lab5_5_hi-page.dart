import 'package:sem_5/sem5lab/utils/import_export.dart';

class HiScreen extends StatelessWidget {
  const HiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            Get.toNamed('/bye-page', arguments: {'age': '18'});
          },
          child: Text("Hi"),
        ),
      ),
    );
  }
}