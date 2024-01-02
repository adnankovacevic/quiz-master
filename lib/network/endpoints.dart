class ApiEndpoints {
  // Base API URL
  static const String prodBaseUrl = 'https://api.example.com';
  static const String devBaseUrl = 'https://dev.example.com';

  // User-related endpoints
  static String getUserEndpoint(String userId) => '/users/$userId';
  static const String getAllUsersEndpoint = '/users';

  // Post-related endpoints
  static const String getAllPostsEndpoint = '/posts';
}
