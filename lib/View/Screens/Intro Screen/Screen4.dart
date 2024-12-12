import 'package:aber_taxi/core/constant.dart';
import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.sizeOf(context).height;
    var w = MediaQuery.sizeOf(context).width;
    return Scaffold(
        backgroundColor: bgColor1,
        body: Center(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: h * 0.2,
              ),
              Container(
                  height: 220,
                  width: w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/GetStarted.png'),
                          fit: BoxFit.fill))),
              SizedBox(
                height: h * 0.05,
              ),
              Text(
                'Hi, Nice to meet you !',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 0.29,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: h * 0.01,
              ),
              Text(
                'Choose your location to start find',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black54,
                    letterSpacing: 0.29,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                ' resturants around you.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black54,
                    letterSpacing: 0.29,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: h * 0.1,
              ),
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: bgColor0, width: 1),
                      color: bgColor1,
                      borderRadius: BorderRadius.circular(12)),
                  height: 50,
                  width: 270,
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.send_outlined,
                        color: bgColor0,
                        size: 15,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Use current location',
                        style: TextStyle(
                            color: bgColor0,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ))),
              SizedBox(
                height: h * 0.1,
              ),
              TextButton(
                  onPressed: null,
                  child: Text(
                    'Select it manually',
                    style: TextStyle(
                        color: TextButtonColor,
                        fontSize: 15,
                        decoration: TextDecoration.underline,
                        decorationColor: TextButtonColor,
                        decorationThickness: 2.0),
                  ))
            ],
          ),
        ));
  }
}
