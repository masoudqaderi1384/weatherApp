import 'package:dio/dio.dart';
import 'package:weatherapp/core/resourses/data_state.dart';
import 'package:weatherapp/features/feature_weather/data/data_sourse/remote/api_provider.dart';
import 'package:weatherapp/features/feature_weather/data/models/current_city_model.dart';

import 'package:weatherapp/features/feature_weather/domain/entities/current_city_entity.dart';

import '../../domain/repository/weather_repository.dart';

class WeatherRepositoryImpl extends WeatherRepository{
  ApiProvider apiProvider;
  WeatherRepositoryImpl(this.apiProvider);
  @override
  Future<DataState<CurrentCityEntity>> fechCurrentWeatherData(String cityName) async{
    try{
      Response response = await apiProvider.callCurrentWeather(cityName);
      if(response.statusCode==200){
        CurrentCityEntity currentCityEntity = CurrentCityModel.fromJson(response.data);
        return DataSuccess(currentCityEntity);
      }else{
        return DataFailed("Somethng want wrong try again ...");
      }
    }catch(e){
      return DataFailed("Please check your connention...");
    }
  }
  
}