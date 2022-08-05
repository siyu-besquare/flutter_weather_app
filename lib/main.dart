import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/state/weather_cubit.dart';

import '/pages/home_page.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => WeatherCubit(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(
          // primarySwatch: Colors.yellow,
          ),
      home: const HomePage(),
    );
  }
}
