class AssetConstants {
  static HTIcons icons = HTIcons();
  static String toLotti(String name) => 'assets/lottie/$name.json';
  static String toJpg(String name) => 'assets/image/$name.jpg';
  static String toPng(String name) => 'assets/image/$name.png';
  static String toIcon(String name) => 'assets/icon/ic_$name.svg';
  static String toJson(String name) => 'assets/mock/$name.json';
}

class HTIcons {
  final String visibility = AssetConstants.toIcon("visibility");
  final String menu = AssetConstants.toIcon("menu");
  final String sunny = AssetConstants.toIcon("sunny");
  final String cloudy = AssetConstants.toIcon("cloudy");
  final String location = AssetConstants.toIcon("location");
  final String heavyRain = AssetConstants.toIcon("heavyRain");
}