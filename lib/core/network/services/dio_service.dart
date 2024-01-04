import 'package:dio/dio.dart';

class DioService {
  final Dio _dio = Dio();

  DioService() {
    // Initialize Dio configuration if needed
    _dio.interceptors.add(LogInterceptor(responseBody: true)); // Enable logging
  }

  Future<Response<T>> get<T>(String path,
      {Map<String, dynamic>? queryParameters}) async {
    try {
      final response =
          await _dio.get<T>(path, queryParameters: queryParameters);
      return response;
    } catch (error) {
      throw _handleError(error);
    }
  }

  Future<Response<T>> post<T>(String path, dynamic data) async {
    try {
      final response = await _dio.post<T>(path, data: data);
      return response;
    } catch (error) {
      throw _handleError(error);
    }
  }

  Future<Response<T>> put<T>(String path, dynamic data) async {
    try {
      final response = await _dio.put<T>(path, data: data);
      return response;
    } catch (error) {
      throw _handleError(error);
    }
  }

  Future<Response<T>> delete<T>(String path, {dynamic data}) async {
    try {
      final response = await _dio.delete<T>(path, data: data);
      return response;
    } catch (error) {
      throw _handleError(error);
    }
  }

  DioError _handleError(dynamic error) {
    if (error is DioError) {
      // Handle Dio errors, such as network issues, here
      print('DioError: $error');
      return error;
    } else {
      // Handle other types of errors here
      print('Error: $error');
      return DioError(requestOptions: RequestOptions(path: ''));
    }
  }
}
