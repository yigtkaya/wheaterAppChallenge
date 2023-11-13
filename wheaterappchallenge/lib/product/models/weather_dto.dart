import 'package:wheaterappchallenge/product/models/weather.dart';
import 'package:wheaterappchallenge/product/models/weather_info.dart';

class WeatherDTO {
  final List<String> time;
  final List<double> temperatures;
  final List<int> humidity;
  final List<double> apparentTemperatures;
  final List<double> windSpeed;
  final List<int> weatherCode;

  WeatherDTO({
    required this.time,
    required this.temperatures,
    required this.humidity,
    required this.apparentTemperatures,
    required this.windSpeed,
    required this.weatherCode,
  });


  // create weatherDTO from json
  factory WeatherDTO.fromJson(Map<String, dynamic> json) {
    return WeatherDTO(
      time: json['hourly']['time'],
      temperatures: json['hourly']['temperature_2m'],
      humidity: json['hourly']['relative_humidity_2m'],
      apparentTemperatures: json['hourly']['apparent_temperature'],
      windSpeed: json['hourly']['wind_speed_10m'],
      weatherCode: json['hourly']['weather_code'],
    );
  }

  List<WeatherPerDay> groupBy24Hours() {
    List<WeatherPerDay> result = [];
    for (int i = 0; i < time.length; i += 24) {
      WeatherDTO subWeather = WeatherDTO(
        time: time.sublist(i, i + 24),
        temperatures: temperatures.sublist(i, i + 24),
        humidity: humidity.sublist(i, i + 24),
        apparentTemperatures: apparentTemperatures.sublist(i, i + 24),
        windSpeed: windSpeed.sublist(i, i + 24),
        weatherCode: weatherCode.sublist(i, i + 24),
      );
      result.add(WeatherPerDay(subWeather));
    }
    return result;
  }
}