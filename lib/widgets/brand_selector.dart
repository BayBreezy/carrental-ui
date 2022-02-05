import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config/constants.dart';
import '../controllers/brand.controller.dart';

class BrandSelector extends StatelessWidget {
  const BrandSelector({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
          itemCount: Get.find<BrandController>().allbrands.length,
          itemBuilder: (ctx, i) {
            var brand = Get.find<BrandController>().allbrands[i];

            return Container(
              margin: const EdgeInsets.only(right: 15),
              child: InkWell(
                onTap: () {
                  Get.find<BrandController>().changeSelectedBrand(i);
                },
                splashColor: kPrimaryColor.shade300,
                borderRadius: BorderRadius.circular(100),
                child: Obx(
                  () => Ink(
                    height: 70,
                    width: 70,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color:
                          Get.find<BrandController>().selectedBrand.value == i
                              ? Colors.grey.withOpacity(0.2)
                              : Colors.grey.withOpacity(0.07),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Image.asset(
                      brand.image,
                      fit: BoxFit.contain,
                      color:
                          Get.find<BrandController>().selectedBrand.value == i
                              ? kPrimaryColor
                              : Theme.of(context).iconTheme.color,
                    ),
                  ),
                ),
              ),
            );
          },
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: kPadding)),
    );
  }
}
