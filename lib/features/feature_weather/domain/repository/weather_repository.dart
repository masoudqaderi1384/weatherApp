import 'package:weatherapp/core/resourses/data_state.dart';
import 'package:weatherapp/features/feature_weather/domain/entities/current_city_entity.dart';

abstract class WeatherRepository{
  Future<DataState<CurrentCityEntity>> fechCurrentWeatherData(String cityName);
}