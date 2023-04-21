import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class OrderTrackingPage extends StatefulWidget {
  const OrderTrackingPage({super.key});

  @override
  State<OrderTrackingPage> createState() => _OrderTrackingPageState();
}

class _OrderTrackingPageState extends State<OrderTrackingPage> {
  // ignore: unused_field
  final Completer<GoogleMapController> _controller = Completer();

  static const LatLng sourceLocation = LatLng(37.33500926, -122.03272188);
  // ignore: unused_field
  static const LatLng destination = LatLng(37.33429383, -122.06600055);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Track order",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
      ),
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: sourceLocation,
          zoom: 14.5,
        ),
        markers: {
          const Marker(
            markerId: MarkerId("source"),
            position: sourceLocation,
          ),
        },
      ),
    );
  }
}
