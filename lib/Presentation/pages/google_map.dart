import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:get/get.dart';
import '../Controller/google_map_controller.dart';

class GoogleMapView extends StatelessWidget {
  final MapController controller = Get.put(MapController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Map'),
      ),
      body: Obx(() {
        return GoogleMap(
          initialCameraPosition: CameraPosition(
            target: LatLng(37.42796133580664, -122.085749655962),
            zoom: 14.4746,
          ),
          myLocationEnabled: true,
          onMapCreated: (GoogleMapController googleMapController) {
            controller.onMapCreated(googleMapController);
          },
          markers: {
            Marker(
              markerId: MarkerId('currentLocation'),
              position: controller.currentPosition.value,
              icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
            ),
          },
        );
      }),
    );
  }
}
