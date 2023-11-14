import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wheaterappchallenge/core/constants/asset_constants.dart';
import 'package:wheaterappchallenge/core/constants/kt_icon.dart';

class LandingView extends StatefulWidget {
  const LandingView({super.key});

  @override
  State<LandingView> createState() => _LandingViewState();
}

class _LandingViewState extends State<LandingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/dubai_city_view.png'))),
        ),
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                Colors.transparent,
                Colors.black.withOpacity(0.7),
              ])),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  HTIcon(iconName: AssetConstants.icons.location),
                  Text("Paris, France", style: GoogleFonts.ubuntu(
                    color: Colors.white,
                    fontSize: 16,
                  ),),
                  const Spacer(),
                  HTIcon(iconName: AssetConstants.icons.menu),
                ],
              ),
            ],
          ),
        )
      ],
    ));
  }
}
