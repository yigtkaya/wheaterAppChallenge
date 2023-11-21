class AssetConstants {
  static HTIcons icons = HTIcons();
  static String toLotti(String name) => 'assets/lottie/$name.json';
  static String toJpg(String name) => 'assets/image/$name.jpg';
  static String toPng(String name) => 'assets/image/$name.png';
  static String toIcon(String name) => 'assets/icon/ic_$name.svg';
  static String toJson(String name) => 'assets/mock/$name.json';
}

class HTIcons {
  final String visibility = AssetConstants.toIcon("visibility_icon");
  final String menu = AssetConstants.toIcon("menu_icon");
  final String sunny = AssetConstants.toIcon("sunny_icon");
  final String cloudy = AssetConstants.toIcon("cloudy_icon");
  final String location = AssetConstants.toIcon("location_icon");
  final String feelsLike = AssetConstants.toIcon("feels_icon");
  final String humidity = AssetConstants.toIcon("humidity_icon");
  final String wind = AssetConstants.toIcon("wind_icon");
  final String mist = AssetConstants.toIcon("mist");
  final String thunderstorm = AssetConstants.toIcon("thunderstorm");
  final String rain = AssetConstants.toIcon("rain");
  final String lightRain = AssetConstants.toIcon("light_rain");
  final String lightSnow = AssetConstants.toIcon("light_snow");
  final String heavySnow = AssetConstants.toIcon("snow");
  final String heavyRain = AssetConstants.toIcon("heavy_rain");
  final String drizzle = AssetConstants.toIcon("drizzle");
  final String sleet = AssetConstants.toIcon("sleet");
}