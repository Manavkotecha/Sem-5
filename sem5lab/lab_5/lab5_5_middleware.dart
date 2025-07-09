import 'package:sem_5/sem5lab/utils/import_export.dart';

class Middleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
  
    if (route == 'bye-page' && !Get.arguments.containsKey("name")) {
      return const RouteSettings(name: "/hi-page");
    }
    return null;
  }
}