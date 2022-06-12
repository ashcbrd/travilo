import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({
    super.key
  });

  @override
  State<MapScreen> createState() => _MapScreen();
}

class _MapScreen extends State<MapScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const GoogleMap(initialCameraPosition: CameraPosition(target: LatLng(10.739232, 122.37945),
      zoom: 11.5)),
    );
  }
}
