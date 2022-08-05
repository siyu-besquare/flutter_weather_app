import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/widget/weather_information.dart';

import '../state/weather_cubit.dart';
import '../state/weather_state.dart';

class WeatherDetail extends StatelessWidget {
  const WeatherDetail({required this.cityName});

  final String cityName;
  @override
  Widget build(BuildContext context) {
    WeatherCubit cubit = BlocProvider.of<WeatherCubit>(context)
      ..fetchWeather(cityName);
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        title: const Text('Weather Detail'),
      ),
      body: Center(
          child: BlocBuilder<WeatherCubit, WeatherState>(
        bloc: cubit,
        builder: (context, state) {
          if (state is WeatherLoading) {
            return const CircularProgressIndicator();
          }
          if (state is WeatherLoaded) {
            return WeatherInformation(weatherModel: state.weatherModel);
          }
          return Text(state is WeatherError ? state.errorMessage : '');
        },
      )),
    );
  }
}
