import 'package:sem_5/sem5lab/utils/import_export.dart';

class NavigationUsingGetX extends StatelessWidget {
  const NavigationUsingGetX({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Navigation With GetX TO"),),
      body:Center(
        child: ElevatedButton(
          onPressed: (){
            Get.to(const NavigationUsingGetXTwo());
          },
           child: const Text("Navigated With GetX TO")),
      ),
    );
  }
}