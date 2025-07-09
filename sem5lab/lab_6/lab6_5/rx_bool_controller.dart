import 'package:sem_5/sem5lab/utils/import_export.dart';

class GetXRxBoolController extends GetxController {
  final GetXRxBoolModel _model = GetXRxBoolModel();

  RxBool get isVisible => _model.isVisible;

  void toggleVisibility() {
    _model.isVisible.value = !_model.isVisible.value;
  }
}
