import 'package:sem_5/sem5lab/utils/import_export.dart';

class NavigationUsingGetXTwo extends StatelessWidget {
  const NavigationUsingGetXTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Navigation With GetX Back"),),
      body:Center(
        child: ElevatedButton(
          onPressed: (){
            Get.to(const NavigationUsingGetX());
          },
           child: const Text("Navigated With GetX Back")),
      ),
    );
  }
}