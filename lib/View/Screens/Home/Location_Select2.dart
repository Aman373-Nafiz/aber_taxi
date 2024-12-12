import 'package:aber_taxi/core/constant.dart';
import 'package:flutter/material.dart';

import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class LocationSelect2 extends StatelessWidget {
  const LocationSelect2({super.key});

  @override
  Widget build(BuildContext context) {
    final LatLng _initialPosition = LatLng(41.8781, -87.6298);
    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              initialCenter: _initialPosition,
              initialZoom: 14,
            ),
            children: [
              TileLayer(
                urlTemplate:
                    'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                subdomains: ['a', 'b', 'c'],
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    point: _initialPosition,
                    child: Icon(
                      Icons.location_pin,
                      color: Colors.red,
                      size: 60,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: 45,
            left: 15,
            right: 15,
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: bgColor1,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 24,
                      color: Colors.grey,
                    ),
                    onPressed: () {}, // Add functionality
                  ),
                  Text(
                    "100 William St,Chicago,USA",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.delete_forever,
                      size: 24,
                      color: Colors.grey,
                    ),
                    onPressed: () {}, // Add functionality
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 80,
                color: bgColor0,
                child: Center(
                  child: Text(
                    'Apply',
                    style: TextStyle(color: Colors.white, fontSize: 19),
                  ),
                ),
              )),
          Positioned(
              bottom: 110,
              left: 350,
              // right: 10,
              child: Container(
                height: 50,
                width: 50,
                child: Center(
                  child: Image.asset('assets/compass.png'),
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: bgColor1,
                ),
              ))
        ],
      ),
    );
  }
}
