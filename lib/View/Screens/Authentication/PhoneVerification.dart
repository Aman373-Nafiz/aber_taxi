import 'package:aber_taxi/core/constant.dart';
import 'package:flutter/material.dart';

class PhoneVerification extends StatelessWidget {
  const PhoneVerification({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.sizeOf(context).width;
    var h = MediaQuery.sizeOf(context).height;
    TextEditingController txt1 = TextEditingController();
    TextEditingController txt2 = TextEditingController();
    TextEditingController txt3 = TextEditingController();
    TextEditingController txt4 = TextEditingController();
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            width: w,
            decoration: BoxDecoration(color: bgCard),
            child: Padding(
              padding: EdgeInsets.only(left: 20, top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    child: CircleAvatar(
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 23,
                        color: Colors.white,
                      ),
                      backgroundColor: bgCard,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Phone Verification',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 29,
                        letterSpacing: 0.44,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 7.5,
                  ),
                  Text(
                    'Enter yoor OTP code here',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        letterSpacing: 0.44,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: h / 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              myInputBox(context, txt1),
              myInputBox(context, txt2),
              myInputBox(context, txt3),
              myInputBox(context, txt4),
              //myInputBox(context, txt5),
            ],
          ),
          SizedBox(height: h*0.2,),
          GestureDetector(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: bgColor0,
                                        borderRadius: BorderRadius.circular(9)),
                                    height: 40,
                                    width: 300,
                                    child: Center(
                                      child: Text(
                                        'Verify Now',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ),
                                    ),
                                  ),
                                ),
        ],
      ),
    );
  }

  Widget myInputBox(BuildContext context, TextEditingController controller) {
    return Container(
      height: 70,
      width: 60,
      child: TextField(
        controller: controller,
        maxLength: 1,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        style: const TextStyle(fontSize: 40),
        decoration: const InputDecoration(
          counterText: '',
        ),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}
