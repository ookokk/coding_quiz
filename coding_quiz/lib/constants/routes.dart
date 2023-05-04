import 'package:flutter/material.dart';

import '../view/lessons_screens/c_sharp_screen.dart';
import '../view/lessons_screens/cpp_screen.dart';
import '../view/lessons_screens/css_screen.dart';
import '../view/lessons_screens/html_screen.dart';
import '../view/lessons_screens/java_script_screen.dart';
import '../view/lessons_screens/php_screen.dart';
import '../view/lessons_screens/python_screen.dart';
import '../view/lessons_screens/typescript_screen.dart';

class Routes {
  static const String cSharpScreen = '/c_sharp_screen';
  static const String cppScreen = '/cpp_screen';
  static const String cssScreen = '/css_screen';
  static const String htmlScreen = '/html_screen';
  static const String javascriptScreen = '/javascript_screen';
  static const String phpScreen = '/php_screen';
  static const String pythonScreen = '/python_screen';
  static const String typescriptScreen = '/typescript_screen';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case cSharpScreen:
        return MaterialPageRoute(builder: (_) => const CSharpScreen());
      case cppScreen:
        return MaterialPageRoute(builder: (_) => const CppScreen());
      case cssScreen:
        return MaterialPageRoute(builder: (_) => const CssScreen());
      case htmlScreen:
        return MaterialPageRoute(builder: (_) => const HtmlScreen());
      case javascriptScreen:
        return MaterialPageRoute(builder: (_) => const JavaScriptScreen());
      case phpScreen:
        return MaterialPageRoute(builder: (_) => const PhpScreen());
      case pythonScreen:
        return MaterialPageRoute(builder: (_) => const PythonScreen());
      case typescriptScreen:
        return MaterialPageRoute(builder: (_) => const TypeScriptScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
