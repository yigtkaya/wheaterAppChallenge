import 'package:wheaterappchallenge/core/constants/asset_constants.dart';

class WeatherIconMapper {
  static getWeatherIcon(e) {
    var weatherIcon;
    var weatherType;
    switch (e) {
      case 00 || 01 || 02:
        weatherIcon = AssetConstants.icons.sunny;
        weatherType = "Clear";
        break;
      case 03:
        weatherIcon = AssetConstants.icons.cloudy;
        weatherType = "Cloudy";
        break;
      case 10:
        weatherIcon = AssetConstants.icons.mist;
        weatherType = "Mist";
        break;
      case 05 || 11 || 12 || 40:
        weatherIcon = AssetConstants.icons.mist;
        weatherType = "Haze";
        // sisli
        break;
      case 06 || 07 || 08 || 09 || 30 || 31 || 32 || 33 || 34 || 35:
        // toz bulutlu ve ya kum firtinasi
        weatherIcon = AssetConstants.icons.mist;
        weatherType = "Dust";
        break;
      case 40 || 41 || 42 || 43 || 44 || 45 || 46 || 47 || 48 || 49:
        // sisli
        weatherIcon = AssetConstants.icons.mist;
        weatherType = "Fogy";
        break;
      case 20 || 24 || 50 || 51 || 52 || 53 || 54 || 55 || 56 || 57 || 58 || 59:
        // dirzzle
        weatherIcon = AssetConstants.icons.drizzle;
        weatherType = "Drizzle";
        break;
      case 21 || 91 || 92:
        // ligth rain
        weatherIcon = AssetConstants.icons.lightRain;
        weatherType = "Ligth Rain";
        break;
      case 22 || 93:
        // ligth snow
        weatherIcon = AssetConstants.icons.lightSnow;
        weatherType = "Ligth Snow";
        break;
      case 23 || 83 || 84:
        // karla karisik yagmur
        weatherIcon = AssetConstants.icons.sleet;
        weatherType = "Sleet";
        break;
      case 25 || 27 || 80 || 81 || 82:
        // heavy rain
        weatherIcon = AssetConstants.icons.heavyRain;
        weatherType = "Heavy Rain";
        break;
      case 26 || 94 || 85 || 86:
        // heavy snow
        weatherIcon = AssetConstants.icons.heavySnow;
        weatherType = "Heavy Snow";
        break;
      case 29 || 95 || 96 || 97 || 98 || 99:
        // thunderstorm
        weatherIcon = AssetConstants.icons.thunderstorm;
        weatherType = "Thunderstorm";
        break;
      case 60 || 61 || 62 || 63 || 64 || 65 || 66 || 67 || 68 || 69:
        // normal yağmur
        weatherIcon = AssetConstants.icons.rain;
        weatherType = "Rainy";
        break;
      default:
        weatherIcon = AssetConstants.icons.sunny;
        weatherType = "Clear";
    }
    return [weatherIcon, weatherType];
  }
}
