import 'package:flutter/material.dart';
import 'package:wheaterappchallenge/core/constants/asset_constants.dart';
import 'package:wheaterappchallenge/core/constants/horizontal_space.dart';
import 'package:wheaterappchallenge/core/constants/kt_icon.dart';

class Upcoming7Days extends StatefulWidget {
  const Upcoming7Days({super.key});

  @override
  State<Upcoming7Days> createState() => _Upcoming7DaysState();
}

class _Upcoming7DaysState extends State<Upcoming7Days> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
        color: const Color(0xff535353).withOpacity(0.4),
          borderRadius: BorderRadius.circular(24)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              const Text("WED 16", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 14),),
              HTIcon(iconName: AssetConstants.icons.sunny, width: 24, height: 24,),
              const Text("30°", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 14),),
              const Text("1.5 km/h", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 12),),
            ],
          ),
          const HorizontalSpace(spaceAmount: 12,),
          Column(
            children: [
              const Text("WED 16", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 14),),
              HTIcon(iconName: AssetConstants.icons.sunny, width: 24, height: 24,),
              const Text("30°", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 14),),
              const Text("1.5 km/h", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 12),),
            ],
          ),
          const HorizontalSpace(spaceAmount: 12,),
          Column(
            children: [
              const Text("WED 16", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 14),),
              HTIcon(iconName: AssetConstants.icons.sunny, width: 24, height: 24,),
              const Text("30°", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 14),),
              const Text("1.5 km/h", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 12),),
            ],
          ),
          const HorizontalSpace(spaceAmount: 12,),
          Column(
            children: [
              const Text("WED 16", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 14),),
              HTIcon(iconName: AssetConstants.icons.sunny, width: 24, height: 24,),
              const Text("30°", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 14),),
              const Text("1.5 km/h", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 12),),
            ],
          ),
          const HorizontalSpace(spaceAmount: 12,),
          Column(
            children: [
              const Text("WED 16", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 14),),
              HTIcon(iconName: AssetConstants.icons.sunny, width: 24, height: 24,),
              const Text("30°", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 14),),
              const Text("1.5 km/h", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 12),),
            ],
          ),
        ],
      ),
    );
  }
}
