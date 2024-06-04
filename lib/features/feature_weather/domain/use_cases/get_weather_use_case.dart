import 'package:weatherapp/core/use_case/use_case.dart';
import 'package:weatherapp/features/feature_weather/domain/repository/weather_repository.dart';

import '../../../../core/resourses/data_state.dart';
import '../entities/current_city_entity.dart';

class GetWeatherUseCase extends UseCase<DataState<CurrentCityEntity>, String>{
  final WeatherRepository weatherRepository;
  GetWeatherUseCase(this.weatherRepository);

  @override
  Future<DataState<CurrentCityEntity>> call(String param) {
    return weatherRepository.fechCurrentWeatherData(param);
  }

}