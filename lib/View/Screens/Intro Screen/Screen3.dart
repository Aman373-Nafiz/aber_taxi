import 'package:aber_taxi/core/constant.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.sizeOf(context).height;
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
                  width: 220,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/ConfirmRide.png'),
                          fit: BoxFit.fill))),
              SizedBox(
                height: h * 0.046,
              ),
              Text(
                'Track Your Ride',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 0.29,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: h * 0.012,
              ),
              Text(
                'Know your driver in advance and be',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 0.29,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'able to view current location in the real time',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 0.29,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'on the map',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 0.29,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: h /4.2,
              ),
              Container(
                  decoration: BoxDecoration(
                      color: bgColor0, borderRadius: BorderRadius.circular(12)),
                  height: 50,
                  width: 180,
                  child: Center(
                    child: Text(
                      'Get Started !',
                      style: TextStyle(
                          color: bgColor1,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  )),
              
            ],
          ),
        ));
  }
}
