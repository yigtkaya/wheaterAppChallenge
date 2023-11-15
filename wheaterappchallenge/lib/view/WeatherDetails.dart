import 'package:flutter/material.dart';
import 'package:wheaterappchallenge/core/constants/kt_icon.dart';

import '../core/constants/asset_constants.dart';

class WeatherDetailsRow extends StatefulWidget {
  final int humidity;
  final double wind;
  final double feelsLike;
  const WeatherDetailsRow(
      {super.key,
      required this.humidity,
      required this.wind,
      required this.feelsLike});

  @override
  State<WeatherDetailsRow> createState() => _WeatherDetailsRowState();
}

class _WeatherDetailsRowState extends State<WeatherDetailsRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            HTIcon(
              iconName: AssetConstants.icons.humidity,
              width: 26,
              height: 26,
            ),
            const Text(
              "Humidity",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            Text(
              "${widget.humidity}%",
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
          ],
        ),
        Column(
          children: [
            HTIcon(
              iconName: AssetConstants.icons.wind,
              width: 26,
              height: 26,
            ),
            const Text(
              "Wind",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            Text(
              "${widget.wind} km/h",
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
          ],
        ),
        Column(
          children: [
            HTIcon(
              iconName: AssetConstants.icons.feelsLike,
              width: 26,
              height: 26,
            ),
            const Text(
              "Feels Like",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            Text(
              "${widget.feelsLike}°",
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
          ],
        ),
      ],
    );
  }
}
