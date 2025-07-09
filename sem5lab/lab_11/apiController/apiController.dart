import 'package:sem_5/sem5lab/lab_11/utils/import_export.dart';

class UserController extends GetxController {
  var userList = <User>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchUserData();
    super.onInit();
  }

  void fetchUserData() async {
    try {
      isLoading(true);
      var users = await ApiService.fetchUsers();
      userList.assignAll(users);
    } finally {
      isLoading(false);
    }
  }
}
