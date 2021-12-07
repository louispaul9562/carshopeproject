import 'package:carshope/carshopescreen1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class enterotp extends StatelessWidget {
  const enterotp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 80.0),
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/9.jpg'),
          ),
        ),
        child: Column(
          children: [
            Center(
              child: TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                    ),
                    hintText: "Enter Otp"),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d{0,2}'))
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (ctx) => carshpoescreen1()),
                  );
                },
                child: Text('Verify Otp'))
          ],
        ),
      ),
    ));
  }
}
