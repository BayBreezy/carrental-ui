import 'package:flutter/material.dart';

import '../config/constants.dart';
import '../models/car.dart';

class CarSpecs extends StatelessWidget {
  const CarSpecs({
    Key? key,
    required this.car,
  }) : super(key: key);

  final Car car;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: kPadding),
          itemCount: car.specs.length,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (ctx, i) {
            var spec = car.specs[i];
            return Container(
              margin: const EdgeInsets.only(right: 20),
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: Colors.grey.withOpacity(0.7), width: 2.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    spec.title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(spec.text)
                ],
              ),
            );
          }),
    );
  }
}
