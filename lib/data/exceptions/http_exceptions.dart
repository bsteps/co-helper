class HttpException implements Exception {
  final String _message;
  final String _prefix;
  final int status;

  String get message => _message;

  HttpException(this._message, this._prefix, this.status);

  @override
  String toString() => '$_prefix $_message';
}

class FetchDataException extends HttpException {
  FetchDataException(String message)
      : super(message, "Error During Communication: ", 500);
}

class BadRequestException extends HttpException {
  BadRequestException(message) : super(message, "Invalid Request: ", 400);
}

class UnauthorisedException extends HttpException {
  UnauthorisedException(message) : super(message, "Unauthorised: ", 403);
}

class InvalidInputException extends HttpException {
  InvalidInputException(String message) : super(message, "Invalid Input: ", 405);
}
