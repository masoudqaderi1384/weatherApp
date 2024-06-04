import 'package:flutter/material.dart';
import 'package:weatherapp/core/widgets/main_wrapper.dart';
import 'package:weatherapp/features/feature_weather/data/data_sourse/remote/api_provider.dart';
import 'package:weatherapp/features/feature_weather/data/repository/weather_repository.dart';
import 'package:weatherapp/features/feature_weather/domain/use_cases/get_weather_use_case.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    GetWeatherUseCase getWeatherUseCase = GetWeatherUseCase(WeatherRepositoryImpl(ApiProvider()));
    getWeatherUseCase('herat');
    return const MaterialApp(
      home: MainWrapper(),
    );
  }
}

// 216ffd11ec9630de334b6455ee352314