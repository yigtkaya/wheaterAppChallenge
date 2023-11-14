import 'package:wheaterappchallenge/product/models/Location.dart';

import '../repositories/location_repository.dart';

class LocationRepositoryImpl extends LocationRepository {
  @override
  Future<Location> getLocation() {
    // TODO: implement getLocation
    throw UnimplementedError();
  }

  Future<String> getCityName(String cityName) async {
      return " ";
  }

  
}