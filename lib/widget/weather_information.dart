import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherInformation extends StatelessWidget {
  const WeatherInformation({Key? key, required this.weatherModel})
      : super(key: key);

  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 50,
      surfaceTintColor: Colors.grey,
      child: Container(
        width: 300,
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
                'http://openweathermap.org/img/w/${weatherModel.weather.first.icon}.png'),
            const SizedBox(height: 10),
            Text('${weatherModel.weather.first.description}'),
            const SizedBox(height: 10),
            Text('Temperature: ${weatherModel.main.temp}°C'),
            const SizedBox(height: 10),
            Text('City name: ${weatherModel.name}'),
            const SizedBox(height: 10),
            Text('Feels like: ${weatherModel.main.feelsLike}°C'),
            const SizedBox(height: 10),
            Text('Minimum: ${weatherModel.main.tempMin}°C'),
            const SizedBox(height: 10),
            Text('Maximum: ${weatherModel.main.tempMax}°C'),
          ],
        ),
      ),
    );
  }
}
