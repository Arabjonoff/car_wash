class HttpResult{
  bool isSuccess;
  int statusCode;
  // ignore: prefer_typing_uninitialized_variables
  var result;
  HttpResult({
    required this.isSuccess,
    required this.statusCode,
    required this.result,
});
}