import 'package:flutter/material.dart';

class carshopewidget extends StatelessWidget {
  const carshopewidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: const BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.shopping_cart),
            ),
          ),
          Expanded(
            child: Text(
              " title",
              style:
                  const TextStyle(fontSize: 8.6, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
