import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wheaterappchallenge/core/constants/asset_constants.dart';
import 'package:wheaterappchallenge/core/constants/kt_icon.dart';
import 'package:wheaterappchallenge/core/constants/vertical_space.dart';
import 'package:wheaterappchallenge/product/cubit/location/location_cubit.dart';
import 'package:wheaterappchallenge/product/cubit/weather/weather_cubit.dart';

class LandingView extends StatelessWidget {
  const LandingView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LocationCubit>(
          create: (_) => LocationCubit(),
        ),
        BlocProvider<WeatherCubit>(
          create: (_) => WeatherCubit(),
        ),
      ],
      child: const LandingPage(),
    );
  }
}

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/image/dubai_city_view.png'),
            ),
          ),
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
                  Text(
                    "Paris, France",
                    style: GoogleFonts.ubuntu(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  const Spacer(),
                  HTIcon(iconName: AssetConstants.icons.menu),
                ],
              ),
              const VerticalSpace(
                spaceAmount: 20,
              ),
            ],
          ),
        )
      ],
    ));
  }
}
