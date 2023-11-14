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
  final String heavyRain = AssetConstants.toIcon("heavyRain_icon");
}