import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class MapController extends GetxController {
  late GoogleMapController googleMapController;
  Rx<LatLng> currentPosition = LatLng(0, 0).obs;
  var isMapCreated = false.obs;

  @override
  void onInit() {
    super.onInit();
    _determinePosition();
  }

  void onMapCreated(GoogleMapController controller) {
    googleMapController = controller;
    isMapCreated.value = true;
  }

  Future<void> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    Position position = await Geolocator.getCurrentPosition();
    currentPosition.value = LatLng(position.latitude, position.longitude);
    if (isMapCreated.value) {
      googleMapController.animateCamera(CameraUpdate.newLatLng(currentPosition.value));
    }
  }
}
