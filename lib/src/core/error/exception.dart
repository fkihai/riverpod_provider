class GeneralException implements Exception {
  final String message;
  GeneralException({required this.message});
}

class StatusCodeException implements Exception {
  final String message;
  StatusCodeException({required this.message});
}
