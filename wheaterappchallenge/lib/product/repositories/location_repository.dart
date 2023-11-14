import '../models/Location.dart';

abstract class LocationRepository {
  Future<Location> getLocation();
}