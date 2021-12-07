import 'package:carshope/enterotp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData = MediaQueryData();
  static double screenWidth = screenWidth;
  static double screenHeight = screenHeight;
  static double blockSizeHorizontal = blockSizeHorizontal;
  static double blockSizeVertical = blockSizeVertical;

  static double _safeAreaHorizontal = _safeAreaHorizontal;
  static double _safeAreaVertical = _safeAreaVertical;
  static double safeBlockHorizontal = safeBlockHorizontal;
  static double safeBlockVertical = safeBlockVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;

    _safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    _safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 100;
    safeBlockVertical = (screenHeight - _safeAreaVertical) / 100;
  }
}

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Container(
              height: SizeConfig.blockSizeVertical * 200,
              width: SizeConfig.blockSizeHorizontal * 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/6.jpg'),
                ),
              ),
              child: Column(
                children: [
                  TextField(
                    style: TextStyle(color: Colors.green),
                    decoration: InputDecoration(
                        fillColor: Colors.orange,
                        border: OutlineInputBorder(),
                        hintText: 'Enter phone number'),
                    keyboardType:
                        TextInputType.numberWithOptions(decimal: true),
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                          RegExp(r'^\d*\.?\d{0,2}'))
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (ctx) => enterotp()),
                        );
                      },
                      child: Text('Get Otp'))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
