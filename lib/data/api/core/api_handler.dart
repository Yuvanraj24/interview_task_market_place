import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:interview_task/data/api/core/api_constants.dart';
import 'package:interview_task/data/api/core/api_response_model.dart';

class ApiHandler {
  /// GET Request
  static Future<dynamic> get(
    String endpoint, {
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
  }) async {
    final uri = Uri.parse(ApiConstants.baseUrl + endpoint)
        .replace(queryParameters: queryParameters);
    print("Get URL ---> $uri");
    try {
      final response =
          await http.get(uri, headers: headers ?? _defaultHeaders()).timeout(
                const Duration(seconds: 30), // Timeout duration
              );
      return _handleResponse(response);
    } catch (e) {
      throw Exception('GET request failed: $e');
    }
  }



  /// Default headers
  static Map<String, String> _defaultHeaders() {
    return {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };
  }

  /// Handle API responses
  static dynamic _handleResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        return ApiResponseModel(
            success: true,
            statusCode: response.statusCode,
            data: json.decode(response.body));

      case 201:
        return ApiResponseModel(
            success: true,
            statusCode: response.statusCode,
            data: json.decode(response.body));
      case 400:
        throw Exception('Bad Request: ${response.body}');
      case 401:
        throw Exception('Unauthorized: ${response.body}');
      case 403:
        throw Exception('Forbidden: ${response.body}');
      case 404:
        throw Exception('Not Found: ${response.body}');
      case 500:
        throw Exception('Internal Server Error: ${response.body}');
      default:
        throw Exception('Unexpected Error: ${response.statusCode}');
    }
  }
}
