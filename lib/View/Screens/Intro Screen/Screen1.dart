import 'package:aber_taxi/core/constant.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

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
                          image: AssetImage('assets/RideLogo.png'),
                          fit: BoxFit.fill))),
              SizedBox(
                height: h * 0.046,
              ),
              Text(
                'Request Ride',
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
                'Request a ride get picked up by a',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 0.29,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                ' nearby commuinity driver',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 0.29,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: h / 2.8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 10,
                    width: 20,
                    color: Colors.green,
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
