import 'package:carrental/screens/car_search.dart';
import 'package:flutter/material.dart';

import '../config/constants.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kPadding),
      child: GestureDetector(
        onTap: () {
          showSearch(context: context, delegate: CarSearch());
        },
        child: TextField(
          enabled: false,
          decoration: InputDecoration(
              hintText: "Search",
              contentPadding: const EdgeInsets.all(0),
              hintStyle: TextStyle(color: kPrimaryColor),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
                borderSide: BorderSide.none,
              ),
              focusedBorder: InputBorder.none,
              filled: true,
              fillColor: Colors.grey.withOpacity(0.1),
              prefixIcon: Icon(
                Icons.search,
                color: kPrimaryColor,
              )),
        ),
      ),
    );
  }
}
