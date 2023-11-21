import 'package:bloc/bloc.dart';
import '../../repositoryImpl/location_repository_impl.dart';
import 'location_state.dart';

class LocationCubit extends Cubit<LocationState> {
  LocationRepositoryImpl locationRepository = LocationRepositoryImpl();

  LocationCubit() : super(LocationInitial()) {
    checkPermission();
  }

  void getLocation() async {
    emit(LocationLoading());
    try {
      final location = await locationRepository.getLocation();
      final address = await locationRepository.getCurrentLocationName(location);
      emit(LocationLoaded(location, address));
    } catch (e) {
      emit(LocationError());
    }
  }

  void checkPermission() async {
    final locationAvailable = await locationRepository.askPermission();
    if (locationAvailable) {
      getLocation();
    }
  }
}
