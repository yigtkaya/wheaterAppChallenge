import 'package:geocode/geocode.dart';
import 'package:geolocator/geolocator.dart';
import 'package:wheaterappchallenge/product/models/Location.dart';
import '../repositories/location_repository.dart';

class LocationRepositoryImpl extends LocationRepository {
  GeoCode geoCode = GeoCode();

  @override
  Future<Location> getLocation() async {
    var position = await Geolocator.getCurrentPosition();
    return Location(latitude: position.latitude, longitude: position.longitude);
  }

  Future<String> getCurrentLocationName(Location location) async {
    final address = await geoCode.reverseGeocoding(
        latitude: location.latitude, longitude: location.longitude);
    return "${address.city}, ${address.countryName}";
  }

  Future<bool> askPermission() async {
    final permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.always ||
        permission == LocationPermission.whileInUse) {
      return true;
    }
    final answer = await Geolocator.requestPermission();
    return answer == LocationPermission.always ||
        answer == LocationPermission.whileInUse;
  }
}
