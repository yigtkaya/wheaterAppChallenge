import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wheaterappchallenge/core/constants/asset_constants.dart';
import 'package:wheaterappchallenge/core/constants/horizontal_space.dart';
import 'package:wheaterappchallenge/core/constants/kt_icon.dart';
import 'package:wheaterappchallenge/core/constants/vertical_space.dart';
import 'package:wheaterappchallenge/product/cubit/location/location_cubit.dart';
import 'package:wheaterappchallenge/product/cubit/location/location_state.dart';
import 'package:wheaterappchallenge/product/cubit/weather/weather_cubit.dart';
import 'package:wheaterappchallenge/product/cubit/weather/weather_state.dart';
import 'package:wheaterappchallenge/view/UpcomingDays.dart';
import 'package:wheaterappchallenge/view/WeatherDetails.dart';

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
          padding: const EdgeInsets.only(left: 12.0, right: 12, top: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  HTIcon(
                      iconName: AssetConstants.icons.location,
                      color: Colors.white,
                      width: 24,
                      height: 24),
                  const HorizontalSpace(
                    spaceAmount: 12,
                  ),
                  BlocBuilder<LocationCubit, LocationState>(
                      builder: (context, state) {
                    if (state is LocationLoaded) {
                      return Text(
                        state.address,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      );
                    }
                    return const Text(
                      "Loading...",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    );
                  }),
                  const Spacer(),
                  HTIcon(
                      iconName: AssetConstants.icons.menu,
                      width: 24,
                      height: 24),
                ],
              ),
              const Spacer(),
              BlocListener<LocationCubit, LocationState>(
                listener: (context, state) {
                  if (state is LocationLoaded) {
                    BlocProvider.of<WeatherCubit>(context).getWeatherWeekly(
                        state.location?.latitude ?? 34.123,
                        state.location?.longitude ?? 34.123);
                  }
                },
                child: Column(
                  children: [
                    Text(
                      "June 07",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w600),
                    ),
                    VerticalSpace(
                      spaceAmount: 10,
                    ),
                    Text(
                      context.watch<WeatherCubit>().state.todayWeather?.time ??
                          "Loading...",
                      style: TextStyle(color: Colors.white),
                    ),
                    VerticalSpace(
                      spaceAmount: 30,
                    ),
                    HTIcon(
                      iconName: AssetConstants.icons.cloudy,
                      width: 32,
                      height: 32,
                    ),
                    Text(
                      "Clear",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 40,
                          color: Colors.white),
                    ),
                    Text(
                      "24ºC",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 60,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              const WeatherDetailsRow(humidity: 54, wind: 4.32, feelsLike: 22),
              const VerticalSpace(
                spaceAmount: 30,
              ),
              const Spacer(),
              const Upcoming7Days(),
              const Spacer(),
            ],
          ),
        )
      ],
    ));
  }
}
