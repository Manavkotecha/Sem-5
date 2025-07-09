import 'package:sem_5/sem5lab/utils/import_export.dart';

class BottomSheetWithGetX extends StatelessWidget {
  const BottomSheetWithGetX({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bottom Sheet using GetX"),),
      body:Center(
        child: ElevatedButton(
            onPressed: (){
              Get.bottomSheet(
                Container(
                  padding: const EdgeInsets.all(16),
                  height: 200,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text("This is a GetX Bottom Sheet", style: TextStyle(fontSize: 18)),
                       SizedBox(height: 20),
                    ],
                  ),
                ),
                isDismissible: true,
                enableDrag: true,
              );
            },
            child: const Text("Bottom Sheet")),
      ),
    );
  }
}
