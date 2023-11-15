import 'package:wheaterappchallenge/product/models/weather.dart';
import 'package:wheaterappchallenge/product/models/weather_info.dart';

class WeatherDTO {
  final List<dynamic> time;
  final List<dynamic> temperatures;
  final List<dynamic> humidity;
  final List<dynamic> apparentTemperatures;
  final List<dynamic> windSpeed;
  final List<dynamic> weatherCode;

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
    print(json['time'].runtimeType);
    final List<dynamic> time = json['time'];
    final List<dynamic> temperatures = json['temperature_2m'];
    final List<dynamic> humidity = json['relative_humidity_2m'];
    final List<dynamic> apparentTemperatures = json['apparent_temperature'];
    final List<dynamic> windSpeed = json['wind_speed_10m'];
    final List<dynamic> weatherCode = json['weather_code'];

    return WeatherDTO(
      time: time,
      temperatures: temperatures,
      humidity: humidity,
      apparentTemperatures: apparentTemperatures,
      windSpeed: windSpeed,
      weatherCode: weatherCode,
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