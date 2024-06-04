import 'package:dio/dio.dart';
import 'package:weatherapp/core/utils/constans.dart';

class ApiProvider{
  final Dio _dio =Dio();
  var apiKey = Constans.apiKey;

  /// current weather api call
  Future<dynamic> callCurrentWeather(cityName) async {
    var response = await _dio.get(
        '${Constans.baseUrl}/data/2.5/weather',
        queryParameters: {
          'q' : cityName,
          'appid':apiKey,
          'units': 'metrec'
        }
    );
    print(response.data);
    return response;
  }
}