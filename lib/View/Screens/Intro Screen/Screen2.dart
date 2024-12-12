import 'package:aber_taxi/core/constant.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

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
                          image: AssetImage('assets/OrderLogo.png'),
                          fit: BoxFit.fill))),
              SizedBox(
                height: h * 0.046,
              ),
              Text(
                'Confirm Your Driver',
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
                'Huge driver networks help you find',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 0.29,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                ' comfortable,safe and cheap ride.',
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
