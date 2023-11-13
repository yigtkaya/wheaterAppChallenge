
// create weather data class to store weather data
class Weather {
  final String time;
  final double temperatures;
  final double windSpeed;
  final int humidity;
  final int weatherCode;
  final double apparentTemperatures;

  Weather({
    required this.time,
    required this.temperatures,
    required this.windSpeed,
    required this.humidity,
    required this.weatherCode,
    required this.apparentTemperatures,
  });

  // create weather from json

}