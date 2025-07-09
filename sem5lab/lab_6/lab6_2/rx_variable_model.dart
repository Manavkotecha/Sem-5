// WAP to use Rx Variables with Obx() & Obs.
import 'package:sem_5/sem5lab/utils/import_export.dart';

class RxVariableModal {
  RxInt count = 0.obs;
  RxString message = 'Initial Message'.obs;

  void increment() {
    count++;
    message.value = 'Count is now: $count';
  }

  void reset() {
    count.value = 0;
    message.value = 'Count has been reset';
  }
}