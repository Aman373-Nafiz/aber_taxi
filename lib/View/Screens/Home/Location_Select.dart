import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class LocationSelect extends StatefulWidget {
  @override
  _LocationSelectState createState() => _LocationSelectState();
}

class _LocationSelectState extends State<LocationSelect> {
  final LatLng _initialPosition = LatLng(41.8781, -87.6298); // Example location
  double _bottomSheetHeight = 300;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Map
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
                  ),])
            ],
          ),
 Positioned(
            top: 50,
            left: 12,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://scontent.fdac5-2.fna.fbcdn.net/v/t39.30808-6/461694513_3835107310076411_8707273490009192467_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=Pg4avGBDp0IQ7kNvgFYHWTD&_nc_zt=23&_nc_ht=scontent.fdac5-2.fna&_nc_gid=AOprrAo77Kh5nNbf0i3tsEJ&oh=00_AYCh45rZTAYJuztua8emTb-wGFJfUiSqYFFglR6Vi5O9Xg&oe=675EE009'), // Replace with actual image URL
              radius: 22,
            ),
          ),
          // Top Profile Section
          

          // Bottom Sheet
          DraggableScrollableSheet(
            initialChildSize: 0.3,
            minChildSize: 0.3,
            maxChildSize: 0.6,
            builder: (context, scrollController) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        width: 50,
                        height: 5,
                        margin: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          LocationTile(
                            label: 'PICKUP',
                            location: 'My current location',
                            icon: Icons.circle,
                            iconColor: Colors.green,
                          ),
                          Divider(height: 30, thickness: 1, color: Colors.grey[300]),
                          LocationTile(
                            label: 'DROP-OFF',
                            location: '105 William St, Chicago, US',
                            icon: Icons.location_pin,
                            iconColor: Colors.red,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        controller: scrollController,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15.0),
                            child: Text(
                              'POPULAR LOCATIONS',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          PopularLocationTile(name: 'University of Washington'),
                          PopularLocationTile(
                              name: 'Woodland Park', isFavorite: true),
                          PopularLocationTile(name: 'Husky Stadium'),
                          PopularLocationTile(name: 'Ravenna Park'),
                          PopularLocationTile(name: 'Henry Art Gallery'),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class LocationTile extends StatelessWidget {
  final String label;
  final String location;
  final IconData icon;
  final Color iconColor;

  const LocationTile({
    required this.label,
    required this.location,
    required this.icon,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, style: TextStyle(fontSize: 12, color: Colors.grey)),
            Text(location,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ],
        ),
      ],
    );
  }
}

class PopularLocationTile extends StatelessWidget {
  final String name;
  final bool isFavorite;

  const PopularLocationTile({required this.name, this.isFavorite = false});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.location_pin, color: Colors.red),
      title: Text(name),
      trailing: isFavorite ? Icon(Icons.star, color: Colors.yellow) : null,
    );
  }
}
