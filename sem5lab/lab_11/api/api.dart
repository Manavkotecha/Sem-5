import 'package:sem_5/sem5lab/lab_11/utils/import_export.dart';
import 'package:http/http.dart' as http;  

class ApiService {
  static const String baseUrl = 'https://jsonplaceholder.typicode.com/users';
  static Future<List<User>> fetchUsers() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      List jsonList = json.decode(response.body);
      return jsonList.map((e) => User.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load users');
    }
  }
}
