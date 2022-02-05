import 'package:flutter/material.dart';

import '../config/constants.dart';
import '../models/car.dart';
import 'car_card.dart';

class CarList extends StatelessWidget {
  CarList({Key? key, required this.carList}) : super(key: key);
  List<Car> carList;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: kPadding),
      primary: false,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, i) => SizedBox(
        height: kPadding * 1.5,
      ),
      itemBuilder: (context, i) {
        var car = carList[i];
        return CarCard(car: car);
      },
      itemCount: carList.length,
    );
  }
}
