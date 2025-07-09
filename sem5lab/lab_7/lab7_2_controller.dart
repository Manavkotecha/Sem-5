import 'package:sem_5/sem5lab/utils/import_export.dart';

class ItemController extends GetxController {
  RxList<String> items = <String>['Apple', 'Banana', 'Cherry'].obs;
  RxList<bool> isFavorite = <bool>[false, false, false].obs;

  void toggleFavorite(int index) {
    isFavorite[index] = !isFavorite[index];
  }
}
