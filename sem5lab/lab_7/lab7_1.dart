import 'package:sem_5/sem5lab/utils/import_export.dart';

class RxListView extends StatelessWidget {
  final ItemController controller = Get.put(ItemController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RxList ListView Example',
      home: Scaffold(
        appBar: AppBar(
          title:const Text('RxList ListView'),
        ),
        body: Obx(() {
          return ListView.builder(
            itemCount: controller.items.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(controller.items[index]),
              );
            },
          );
        }),
        ),
      );
  }
}
