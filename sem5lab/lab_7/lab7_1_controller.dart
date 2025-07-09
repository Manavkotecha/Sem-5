import 'package:sem_5/sem5lab/utils/import_export.dart';

class ItemController extends GetxController {
  RxList<String> items = <String>[
    "Apple",
    "Banana",
    "Cherry",
    "Date",
    "Elderberry"
  ].obs;

  get isFavorite => null;
}
