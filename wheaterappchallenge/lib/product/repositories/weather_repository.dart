import '../models/weather_info.dart';

abstract class WeatherRepository {
  Future<List<WeatherPerDay>> getWeeklyWeather(double lat, double lon);
}