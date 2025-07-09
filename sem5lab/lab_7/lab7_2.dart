import 'package:sem_5/sem5lab/utils/import_export.dart';


class RxListFavouriteIcon extends StatelessWidget {
   RxListFavouriteIcon({super.key});

  final ItemController controller = Get.put(ItemController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Favorite Icon with RxList'),
        ),
        body: Obx(() => ListView.builder(
              itemCount: controller.items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(controller.items[index]),
                  trailing: IconButton(
                    icon: Icon(
                      controller.isFavorite[index]
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: controller.isFavorite[index]
                          ? Colors.red
                          : Colors.grey,
                    ),
                    onPressed: () => controller.toggleFavorite(index),
                  ),
                );
              },
            )),
      );
  }
}