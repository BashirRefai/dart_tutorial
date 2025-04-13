////////////// ENUM ///////////////
//---------- 1 ------------
// ignore_for_file: camel_case_types

enum Role { seller, customer, admin }

contants1() {
  Role role = Role.admin;
  role.name;
  print(role);
}

//-------- 2 -----------
const int timout = 30;

//-------- 3 -----------
class API {
  static const int timout = 30;
}

//---------- 4 ---------
class EndPoints {
  static const String baseUrl = "https://www.example.com";
  static const String login = "/login";
  static const String register = "/register";
}

constants2() {
  String fullEndPoint = EndPoints.baseUrl + EndPoints.login;
  return fullEndPoint;
}

//-------- 5 --------
abstract class APIError {}

class NO_INTERNET extends APIError {}

class SEND_TIMEOUT extends NO_INTERNET {}

class RECIEVE_TIMEOUT extends NO_INTERNET {}

class CANCELED extends APIError {}

class SERVER_ERROR extends APIError {}

class VALIDATION_ERROR extends APIError {}

class UN_AUTHORIZED extends APIError {}

class ModellingError extends APIError {}

class NO_CONTENT extends APIError {}

class OTHER extends APIError {}

constants3() {
  APIError error = NO_INTERNET();

  if (error is NO_INTERNET) {}

  switch (error.runtimeType) {
    case CANCELED:
      return "request canceled";
    case UN_AUTHORIZED:
      return "you don't have the permissions";
    default:
  }
}
