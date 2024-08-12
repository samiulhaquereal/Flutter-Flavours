enum Environment {
  dev,
  prod
}

abstract class AppEnvironment {
  static late String headerKey;
  static late String baseApiUrl;
  static late String title;
  static late Environment _environment;

  static Environment get environment => _environment;

  static setupEnv(Environment env) {
    switch (env) {
      case Environment.dev:
        {
          headerKey = 'Authorization';
          baseApiUrl = 'https://api-todo-flutter.herokuapp.com';
          title = 'Flutter Flavor dev';
          break;
        }
      case Environment.prod: {
        headerKey = 'Authorization';
        baseApiUrl = 'https://api-todo-flutter.herokuapp.com';
        title = 'Flutter Flavor';
        break;
      }
    }
  }

}