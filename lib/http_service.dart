import 'package:dio/dio.dart';

class HttpService {
  late Dio _dio;

  final baseUrl = "https://reqres.in/";

  HttpService() {
    _dio = Dio(BaseOptions(
      baseUrl: baseUrl,
    ));
    initializeInterceptors();
  }

  Future<Response> getRequest(String endpoint) async {
    Response response;
    try {
      response = await _dio.get(endpoint);
    } on DioError catch (e) {
      print(e.error);
      throw Exception(e.message);
    }
    return response;
  }

  initializeInterceptors() {
    _dio.interceptors.add(InterceptorsWrapper(
      onError: (error, handler) {
        print(error.message);
      },
      onRequest: (request, handler) {
        print("${request.method} ${request.path}");
      },
      onResponse: (response, handler) {
        print(response.data);
      },
    ));
  }
}
