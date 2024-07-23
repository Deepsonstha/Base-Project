class ApiEndpoint {
  ApiEndpoint._();
  static const baseURL = "https://jsonplaceholder.typicode.com/";
  static const int receiveTimeout = 25000;
  static const int connectionTimeout = 25000;
  static const header = {
    "Content-Type": "application/json",
    "Accept": "application/json",
  };

  //!
  static const userURL = "users";


}
