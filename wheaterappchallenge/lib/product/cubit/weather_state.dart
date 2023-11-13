import '../models/weather.dart';
import '../models/weather_info.dart';

class WeatherState {
  Weather? todayWeather;
  List<WeatherPerDay>? weeklyWeather;
  List<Weather>? everyDayAverage;
  bool isLoading = false;

  WeatherState({
    this.todayWeather,
    this.weeklyWeather,
    this.everyDayAverage,
    bool isLoading = false,
  });
}

class WeatherInitial extends WeatherState {
  WeatherInitial() : super();
}

class WeatherLoading extends WeatherState {
  WeatherLoading() : super(isLoading: true);
}

class WeatherLoaded extends WeatherState {
  WeatherLoaded({
    required Weather todayWeather,
    required List<WeatherPerDay> weeklyWeather,
    required List<Weather> everyDayAverage,
  }) : super(
          todayWeather: todayWeather,
          weeklyWeather: weeklyWeather,
          everyDayAverage: everyDayAverage,
        );
}

class WeatherError extends WeatherState {
  WeatherError() : super();
}
