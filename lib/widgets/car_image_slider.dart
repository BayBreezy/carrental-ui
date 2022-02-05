import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import '../models/car.dart';

class CarImageSlider extends StatelessWidget {
  const CarImageSlider({
    Key? key,
    required this.car,
  }) : super(key: key);

  final Car car;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: 300,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          var image = car.images[index];
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                height: 300,
                width: double.infinity,
              ),
            ),
          );
        },
        itemCount: car.images.length,
        viewportFraction: 0.9,
        autoplay: true,
        autoplayDelay: 20000,
        duration: 1000,
        curve: Curves.decelerate,
        outer: true,
        fade: 0.3,
        pagination: SwiperPagination(
          builder: RectSwiperPaginationBuilder(
            activeSize: const Size(30, 10),
            size: const Size(10, 10),
            color: Colors.grey.withOpacity(0.4),
          ),
        ),
      ),
    );
  }
}
