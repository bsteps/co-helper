abstract class Client {
  const Client();

  Future<String> post({
    required url,
    Map<String, dynamic> params,
    Map<String, String> headers,
    Map<String, dynamic> requests,
  });
  Future<String> get({
    required url,
    Map<String, dynamic> params,
    Map<String, String> headers,
  });
  Future<String> delete({
    required url,
    Map<String, dynamic> params,
    Map<String, String> headers,
  });
}
