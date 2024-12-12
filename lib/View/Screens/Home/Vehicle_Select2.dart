import 'package:flutter/material.dart';
import 'package:aber_taxi/core/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';
class VehicleSelect2 extends StatelessWidget {
  VehicleSelect2({super.key});

  @override
  final vehicleList = [
  {'name': 'Just go', 'distance': '0.1', 'time': '2', 'price': '25.00', 'icon': Icons.directions_car},
  {'name': 'Limousine', 'distance': '0.2', 'time': '5', 'price': '80.00', 'icon': Icons.airport_shuttle},
  {'name': 'Luxury', 'distance': '0.4', 'time': '3', 'price': '50.00', 'icon': Icons.car_rental},
  {'name': 'ElectricCar', 'distance': '0.45', 'time': '2', 'price': '25.00', 'icon': Icons.electric_car},
  {'name': 'Bike', 'distance': '0.48', 'time': '2', 'price': '15.00', 'icon': Icons.pedal_bike},
  {'name': 'Taxi 4 seat', 'distance': '0.5', 'time': '3', 'price': '30.00', 'icon': Icons.local_taxi},
  {'name': 'Taxi 7 seat', 'distance': '0.67', 'time': '5', 'price': '40.00', 'icon': Icons.local_taxi},
];
  Widget build(BuildContext context) {
    final LatLng _initialPosition = LatLng(41.8781, -87.6298);
    return Scaffold(body: Stack(children: [FlutterMap(
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
                      size: 40,
                    ),
                  ),
              
                ],
              ),
              CircleLayer(circles: [ CircleMarker(
                    point: _initialPosition,
                    radius: 150,
                    color: Colors.blue.withOpacity(0.3),
                    borderColor: Colors.blueAccent,
                    borderStrokeWidth: 2,
                  ),]),
                  DraggableScrollableSheet(
            initialChildSize: 0.3,
            minChildSize: 0.3,
            maxChildSize: 0.7,
            builder: (context, scrollController) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0),
                  ),
                ),
                child: Column(
                  children: [
                    // Drag Handle
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8.0),
                      height: 4.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                    // Vehicle List
                    Expanded(
                      child: ListView.builder(
                        controller: scrollController,
                        itemCount: vehicleList.length,
                        itemBuilder: (context, index) {
                          final vehicle = vehicleList[index];
                          return ListTile(
                            leading: Icon(vehicle['icon'] as IconData?, color: Colors.black),
                            title: Text(vehicle['name'].toString()),
                            subtitle: Text('${vehicle['distance']} km • ${vehicle['time']} min'),
                            trailing: Text('\$${vehicle['price']}'),
                            onTap: () {
                              // Handle tap
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
            ],
          ),],),);
  }
}
