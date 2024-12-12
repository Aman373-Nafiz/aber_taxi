import 'package:aber_taxi/core/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';

class VehicleSelect extends StatefulWidget {
  @override
  _VehicleSelectState createState() => _VehicleSelectState();
}

class _VehicleSelectState extends State<VehicleSelect> {
  @override
  Widget build(BuildContext context) {
    final LatLng _startPoint =
        LatLng(40.7128, -74.0060); // Example start location
    final LatLng _endPoint = LatLng(40.7408, -73.9961); // Example end location

    return Scaffold(
      body: Stack(
        children: [
          // Flutter Map
          FlutterMap(
            options: MapOptions(
              initialCenter: LatLng(
                  40.7218, -74.0016), // Center between start and end points
              initialZoom: 14.0,
            ),
            children: [
              TileLayer(
                // Display map tiles from any source
                urlTemplate:
                    'https://tile.openstreetmap.org/{z}/{x}/{y}.png', // OSMF's Tile Server
                userAgentPackageName: 'com.example.app',
                // And many more recommended properties!
              ),
              RichAttributionWidget(
                // Include a stylish prebuilt attribution widget that meets all requirments
                attributions: [
                  TextSourceAttribution(
                    'OpenStreetMap contributors',
                    onTap: () => launchUrl(Uri.parse(
                        'https://openstreetmap.org/copyright')), // (external)
                  ),
                  // Also add images...
                ],
              ),
              PolylineLayer(
                polylines: [
                  Polyline(
                    points: [_startPoint, _endPoint],
                    color: const Color.fromARGB(255, 177, 17, 205),
                    strokeWidth: 2,
                  ),
                ],
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    point: LatLng(_startPoint.latitude, _startPoint.longitude),
                    width: 40,
                    height: 40,
                    child: Icon(Icons.location_on, color: bgColor0, size: 40.0),
                  ),
                  Marker(
                    width: 40.0,
                    height: 40.0,
                    point: LatLng(_endPoint.latitude, _endPoint.longitude),
                    child: Icon(Icons.location_on,
                        color: const Color.fromARGB(255, 208, 51, 40),
                        size: 40.0),
                  ),
                ],
              ),
            ],
          ),

          // Bottom Card
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10.0,
                  ),
                ],
              ),
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/carIcon.png',height: 20,width: 20,),
                          SizedBox(width: 10.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Just go',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold)),
                              Text('Near by you',
                                  style: TextStyle(color: Colors.grey)),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('\$25.00',
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red)),
                          Text('2 min', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.payment, color: Colors.grey),
                          SizedBox(height: 5.0),
                          Text('Payment', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.card_giftcard, color: Colors.grey),
                          SizedBox(height: 5.0),
                          Text('Promo code',
                              style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.settings, color: Colors.grey),
                          SizedBox(height: 5.0),
                          Text('Options', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      backgroundColor: bgColor0 ,
                    ),
                    child: Text('Request',
                        style: TextStyle(fontSize: 18.0, color: Colors.white)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
