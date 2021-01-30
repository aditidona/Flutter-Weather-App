import 'package:location/location.dart';

Future<LocationData> getCurrentLocation() async {
  try {
    Location location = new Location();

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData locationData;
    //check if location access is provided
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        throw "Location Service Denied";
      }
    }
    //check if user has provided permission to access location
    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        throw "Location Acess Denied";
      }
    }
    //get location
    location.changeSettings(accuracy: LocationAccuracy.low);
    locationData = await location.getLocation();

    return locationData;
  } catch (e) {
    print(e);
  }
}
