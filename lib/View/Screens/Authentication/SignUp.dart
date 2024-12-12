import 'dart:ffi';

import 'package:aber_taxi/core/constant.dart';
import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/Cards.png',
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 100,
            left: 130,
            right: 130,
            child: Image.asset(
              'assets/LogoAgain.png',
              height: 127,
              width: 120,
            ),
          ),
          Positioned(
            top: 175,
            child: Image.asset(
              'assets/City1.png',
              fit: BoxFit.cover,
              height: 246,
              width: 438,
            ),
          ),
          Positioned(
            top: 270,
            left: 150,
            child: Image.asset('assets/City2.png', height: 180, width: 280),
          ),
          Positioned(
            top: 270,
            right: 160,
            child: Image.asset('assets/City3.png', height: 180, width: 300),
          ),
          Positioned(
            top: 350,
            left: 50,
            right: 50,
            child: Container(
              height: 370,
              width: 350,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 4,
                    blurRadius: 2,
                    offset: Offset(2, 3),
                    color: Colors.grey,
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    // TabBar for switching between Sign Up and Sign In
                    TabBar(
                      tabs: [
                        Tab(text: "Sign Up"),
                        Tab(text: "Sign In"),
                      ],
                      labelStyle:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      indicatorColor: Colors.green,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      indicatorSize: TabBarIndicatorSize.label,
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          // Sign Up View
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 40,
                                  child: TextField(
                                    textAlign: TextAlign.left,
                                    decoration: InputDecoration(
                                      //labelText: "Name",
                                      hintText: "name@example.com",
                                      hintStyle: TextStyle(
                                        fontSize: 14, // Adjust font size
                                        color: Colors.grey, // Hint text color
                                      ),
                                      contentPadding: EdgeInsets.only(left: 12),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Row(
                                  children: [
                                    // Country Code Dropdown
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: CountryCodePicker(
                                        textStyle: TextStyle(
                                            color: Colors.black, fontSize: 14),
                                        onChanged: (country) {
                                          print(country
                                              .dialCode); // Get selected country code
                                        },
                                        initialSelection: 'US',
                                        //dialogSize: Size(50, 50),
                                        favorite: ['+1', '+91', 'US'],

                                        showCountryOnly: false,
                                        showOnlyCountryWhenClosed: false,
                                        alignLeft: false,
                                      ),
                                    ),

                                    Expanded(
                                        child: Container(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          //labelText: "Mobile Number",
                                          hintText: "Mobile Number",
                                          hintStyle: TextStyle(
                                            fontSize: 14, // Adjust font size
                                            color:
                                                Colors.grey, // Hint text color
                                          ),
                                          //contentPadding: EdgeInsets.only(left: 12),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                      ),
                                    )),
                                  ],
                                ),
                                SizedBox(height: 40),
                                GestureDetector(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: bgColor0,
                                        borderRadius: BorderRadius.circular(9)),
                                    height: 40,
                                    width: 300,
                                    child: Center(
                                      child: Text(
                                        'Sign Up',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                GestureDetector(
                                  child: Container(
                                      decoration: BoxDecoration(
                                          color: fb,
                                          borderRadius:
                                              BorderRadius.circular(9)),
                                      height: 40,
                                      width: 300,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/facebook.png',
                                            height: 20,
                                            width: 20,
                                          ),
                                          SizedBox(
                                            width: 6,
                                          ),
                                          Text(
                                            'Connect with Facebook',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16),
                                          )
                                        ],
                                      )),
                                ),
                              ],
                            ),
                          ),
                          // Sign In View
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 3),
                                  child: Text(
                                    'Login with your phone number',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                SizedBox(
                                  height: 24,
                                ),
                                Row(
                                  children: [
                                    // Country Code Dropdown
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: CountryCodePicker(
                                        textStyle: TextStyle(
                                            color: Colors.black, fontSize: 14),
                                        onChanged: (country) {
                                          print(country
                                              .dialCode); // Get selected country code
                                        },
                                        initialSelection: 'US',
                                        //dialogSize: Size(50, 50),
                                        favorite: ['+1', '+91', 'US'],

                                        showCountryOnly: false,
                                        showOnlyCountryWhenClosed: false,
                                        alignLeft: false,
                                      ),
                                    ),

                                    Expanded(
                                        child: Container(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          //labelText: "Mobile Number",
                                          hintText: "Mobile Number",
                                          hintStyle: TextStyle(
                                            fontSize: 14, // Adjust font size
                                            color:
                                                Colors.grey, // Hint text color
                                          ),
                                          //contentPadding: EdgeInsets.only(left: 12),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                      ),
                                    )),
                                  ],
                                ),
                                SizedBox(
                                  height: 54,
                                ),
                                GestureDetector(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: bgColor0,
                                        borderRadius: BorderRadius.circular(9)),
                                    height: 40,
                                    width: 300,
                                    child: Center(
                                      child: Text(
                                        'Next',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
