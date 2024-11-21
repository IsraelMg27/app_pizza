import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// ignore: must_be_immutable
class MapScreen extends StatefulWidget {
  String latitude = '0.0';
  String longitude = '0.0';
  final double? padding;

  MapScreen(
      {super.key,
      required this.latitude,
      required this.longitude,
      this.padding});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  final List<Marker> _markers = <Marker>[];
  late CameraPosition _kGooglePlex;

  @override
  void initState() {
    super.initState();
    _kGooglePlex = CameraPosition(
      target:
          LatLng(double.parse(widget.latitude), double.parse(widget.longitude)),
      zoom: 14.4746,
    );
    _markers.add(Marker(
      markerId: const MarkerId('1'),
      position:
          LatLng(double.parse(widget.latitude), double.parse(widget.longitude)),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>{
        Factory<OneSequenceGestureRecognizer>(
          () => EagerGestureRecognizer(),
        ),
      },
      mapType: MapType.normal,
      initialCameraPosition: _kGooglePlex,
      onMapCreated: (GoogleMapController controller) async {
        _controller.complete(controller);
      },
      markers: Set<Marker>.of(_markers),
      padding: EdgeInsets.only(bottom: widget.padding ?? 0),
    );
  }
}
