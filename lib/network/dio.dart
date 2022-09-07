import 'package:dio/dio.dart';

class DioService {

  static const baseUrl = 'https://jsonplaceholder.typicode.com/';
  
  static Future<Dio> getTmsApiDio() async {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: 90000,
      receiveTimeout: 90000,
    );
    Dio dio = Dio(options);
    

   

   

    return dio;
  }
  // static Future<Response?> get({
  //   required String url,
  //   Map<String, dynamic>? queryParameters,
  // }) async {
  //   Response response = await Dio().get(
  //     url,
  //     queryParameters: queryParameters,
  //   );

  //   print("Response DATA : ${response.data}");
  //   print("STATUS CODE ====>>>> ${response.statusCode}");

  //   return response;
  // }
}