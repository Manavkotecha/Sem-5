import 'package:sem_5/sem5lab/utils/import_export.dart';

class CrudRxlistModal {
  final items = <Map<String, dynamic>>[].obs;

  void addItem(String title, String description) {
    items.add({
      'title': title,
      'description': description,
      
    });
  }

  void deleteItem(int index) {
    items.removeAt(index);
  }

  void updateItem(int index, String title, String description) {
    items[index] = {
      'title': title,
      'description': description,
    };
    items.refresh();
  }
}