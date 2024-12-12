import 'package:aber_taxi/core/constant.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.sizeOf(context).height;
    return Scaffold(
        backgroundColor: bgColor0,
        body: Stack(
          children: [
            Positioned(
                top: 190,
                left: 142,
                child: Container(
                    height: 130,
                    width: 130,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/Logo.jpg'),
                            fit: BoxFit.fill)))),
            Positioned(
                top: 367,
                left: 131,right: 131,
                child: Container(
                    height: 50,
                    width: 130,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/Aber.png'),
                            fit: BoxFit.fill)))),
                            Positioned(
                top: 676,
              
                child: Container(
                    height: 300,
                    width: 415,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/City1.png'),
                            fit: BoxFit.fill)))),
                             Positioned(
                top: 726,left:191,
                child: Container(
                    height: 175,
                    width: 240,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/City1.png'),
                            fit: BoxFit.fill)))),
                            Positioned(
                top: 726,left:10,
                child: Container(
                    height: 135,
                    width: 180,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/City3.png'),
                            fit: BoxFit.fill))))
                            
          ],
        ) /*width: 376px;
height: 237px;
top: 576px;
left: 376px;
gap: 0px;
opacity: 0px;
angle: -180 deg;
Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
           // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: h * 0.25,
              ),
              Container(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/Logo.jpg'),
                          fit: BoxFit.fill))),
              SizedBox(
                height: h * 0.015,
              ),
              Container(
                  child: Text(
                    
                    'Aber',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 48,
                        fontWeight: FontWeight.bold),textAlign: TextAlign.center
                  ),
                ),
              
            ],
          ),
        )*/
        );
  }
}
