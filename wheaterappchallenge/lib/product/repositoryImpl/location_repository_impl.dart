import 'package:geocode/geocode.dart';
import 'package:geolocator/geolocator.dart';
import 'package:wheaterappchallenge/product/models/Location.dart';
import '../repositories/location_repository.dart';

class LocationRepositoryImpl extends LocationRepository {
  GeoCode geoCode = GeoCode();

  @override
  Future<Location> getLocation() async {
    _askPermission();
    var position = await Geolocator.getCurrentPosition();
    return Location(latitude: position.latitude, longitude: position.longitude);
  }

  Future<String> getCurrentLocationName(Location location) async {
    final address = await geoCode.reverseGeocoding(
        latitude: location.latitude, longitude: location.longitude);
    return "${address.city}, ${address.countryName}";
  }

  Future<void> _askPermission() async {
    await Geolocator.requestPermission();
  }
}
