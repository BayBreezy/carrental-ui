import 'package:carrental/models/brand.dart';
import 'package:get/get.dart';

class BrandController extends GetxController {
  final List<Brand> _brands = brands;
  var selectedBrand = 0.obs;

  List<Brand> get allbrands => [..._brands];

  ///Function used to update the selected brand
  changeSelectedBrand(int i) => selectedBrand.value = i;
}
