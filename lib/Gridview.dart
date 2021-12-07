import 'package:flutter/material.dart';

final List<Map> myProducts =
    List.generate(100000, (index) => {"id": index, "name": "Product $index"})
        .toList();

class louis extends StatelessWidget {
  //({Key? key}) : super(key: key);

  final List<Map> myProducts =
      List.generate(100000, (index) => {"id": index, "name": "Product $index"})
          .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
