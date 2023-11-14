import '../../models/Location.dart';

class LocationState {
  Location? location;
  String? address;
  bool isLoading;
  LocationState({this.location, this.isLoading = false, this.address});
}

class LocationInitial extends LocationState {
  LocationInitial() : super();
}

class LocationLoading extends LocationState {
  LocationLoading() : super(isLoading: true);
}

class LocationLoaded extends LocationState {
  LocationLoaded(Location location, String address)
      : super(location: location, isLoading: false, address: address);
}

class LocationError extends LocationState {
  LocationError() : super(isLoading: false);
}
