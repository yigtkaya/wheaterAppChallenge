import 'package:wheaterappchallenge/product/models/weather_dto.dart';
import 'package:wheaterappchallenge/product/models/weather_info.dart';
import 'package:wheaterappchallenge/product/repositories/weather_repository.dart';
import 'package:dio/dio.dart';

import '../models/weather.dart';

class WeatherRepositoryImpl extends WeatherRepository {
  final dio = Dio();

  @override
  Future<List<WeatherPerDay>> getWeeklyWeather(double lat, double lon) async {
    final response = await dio.get(
      'https://api.open-meteo.com/v1/forecast?$lat&$lon&hourly=temperature_2m,relative_humidity_2m,apparent_temperature,wind_speed_10m',
    );

    final weather = WeatherDTO.fromJson(response.data);
    return weather.groupBy24Hours();
  }

  List<Weather> getEveryDayAverage(List<WeatherPerDay> weatherPerDay) {
    List<Weather> result = [];
    for (int i = 0; i < weatherPerDay.length; i++) {
      result.add(Weather(
        time: weatherPerDay[i].weatherPerHour.time[11],
        temperatures: weatherPerDay[i].weatherPerHour.temperatures[11],
        windSpeed: weatherPerDay[i].weatherPerHour.windSpeed[11],
        humidity: weatherPerDay[i].weatherPerHour.humidity[11],
        weatherCode: weatherPerDay[i].weatherPerHour.weatherCode[11],
        apparentTemperatures:
            weatherPerDay[i].weatherPerHour.apparentTemperatures[11],
      ));
    }
    return result;
  }

  Weather getTodayFromWeekly(WeatherPerDay weatherPerDay) {
    final now = DateTime.now();
    final hour = now.minute < 30 ? now.hour - 1 : now.hour;
    final weather = Weather(
      time: weatherPerDay.weatherPerHour.time[hour],
      temperatures: weatherPerDay.weatherPerHour.temperatures[hour],
      windSpeed: weatherPerDay.weatherPerHour.windSpeed[hour],
      humidity: weatherPerDay.weatherPerHour.humidity[hour],
      weatherCode: weatherPerDay.weatherPerHour.weatherCode[hour],
      apparentTemperatures:
          weatherPerDay.weatherPerHour.apparentTemperatures[hour],
    );

    return weather;
  }
}
