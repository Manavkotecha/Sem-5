import 'package:home1/sem5lab/utils/import_export.dart';

class ProductController {
  List<ProductModel> getProducts() {
    return ProductModel.getProducts();
  }
}