import 'package:carrental/models/car.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class CarController extends GetxController {
  final List<Car> _cars = dummyCars;
  final _box = GetStorage();
  var favorites = [].obs;

  List<Car> get allCars => [..._cars];

  List<Car> searchCars(String search) {
    return _cars.where((c) {
      var s = search.toLowerCase();
      return c.name.toLowerCase().contains(s) ||
          c.price.toString().contains(s) ||
          c.rating.toString().contains(s);
    }).toList();
  }

  void _saveFaves(List<String> faveList) {
    _box.write('faveList', faveList);
    favorites.value = faveList
        .map((e) => _cars.firstWhere((element) => element.name == e))
        .toList();
  }

  void _setFaves() {
    var faveList = List<String>.from(_box.read('faveList') ?? []);

    if (faveList.isEmpty) return;
    favorites.value = faveList
        .map((e) => _cars.firstWhere((element) => element.name == e.toString()))
        .toList();
  }

  void toggleFave(String name) {
    var faveList = List<String>.from(_box.read('faveList') ?? []);
    var isPresent = faveList.firstWhereOrNull((element) => element == name);

    //Check if it is present
    if (isPresent != null) {
      faveList.removeWhere((element) => element.toString() == name);
      Get.snackbar("Car Removed", "Car removed from your list of favorites.");
      _saveFaves(faveList);
    } else {
      faveList.add(name.toString());
      Get.snackbar("Car Added", "Car added to your list of favorites.");
      _saveFaves(faveList);
    }
  }

  @override
  void onInit() {
    _setFaves();
    super.onInit();
  }
}
