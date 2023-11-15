import 'package:bloc/bloc.dart';
import 'package:wheaterappchallenge/product/cubit/weather/weather_state.dart';
import 'package:wheaterappchallenge/product/repositoryImpl/weather_repository_impl.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final WeatherRepositoryImpl weatherRepository = WeatherRepositoryImpl();
  WeatherCubit() : super(WeatherInitial());

  getWeatherWeekly(double lat, double lon) async {
    try {
      emit(WeatherLoading());
      final weatherPerDay = await weatherRepository.getWeeklyWeather(lat, lon);
      final everyDayAverage =
          weatherRepository.getEveryDayAverage(weatherPerDay);
      final todayWeather =
          weatherRepository.getTodayFromWeekly(weatherPerDay[0]);
      emit(WeatherLoaded(
        todayWeather: todayWeather,
        weeklyWeather: weatherPerDay,
        everyDayAverage: everyDayAverage,
      ));
    } catch (e) {
      emit(WeatherError());
    }
  }


}
