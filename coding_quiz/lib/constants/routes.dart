import 'package:flutter/material.dart';
import '../view/difficulties/easy/easy_cpp_screen.dart';
import '../view/difficulties/easy/easy_csharp_screen.dart';
import '../view/difficulties/easy/easy_css_screen.dart';
import '../view/difficulties/easy/easy_html_screen.dart';
import '../view/difficulties/easy/easy_java_script_screen.dart';
import '../view/difficulties/easy/easy_php_screen.dart';
import '../view/difficulties/easy/easy_python_screen.dart';
import '../view/difficulties/easy/easy_type_script_screen.dart';
import '../view/difficulties/hard/hard_cpp_screen.dart';
import '../view/difficulties/hard/hard_csharp_screen.dart';
import '../view/difficulties/hard/hard_css_screen.dart';
import '../view/difficulties/hard/hard_html_screen.dart';
import '../view/difficulties/hard/hard_java_script_screen.dart';
import '../view/difficulties/hard/hard_php_screen.dart';
import '../view/difficulties/hard/hard_python_screen.dart';
import '../view/difficulties/hard/hard_type_script_screen.dart';
import '../view/difficulties/medium/medium_cpp_screen.dart';
import '../view/difficulties/medium/medium_csharp_screen.dart';
import '../view/difficulties/medium/medium_css_screen.dart';
import '../view/difficulties/medium/medium_html_screen.dart';
import '../view/difficulties/medium/medium_java_script_screen.dart';
import '../view/difficulties/medium/medium_php_screen.dart';
import '../view/difficulties/medium/medium_python_screen.dart';
import '../view/difficulties/medium/medium_type_script_screen.dart';
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
  static const String javaScriptScreen = '/javascript_screen';
  static const String phpScreen = '/php_screen';
  static const String pythonScreen = '/python_screen';
  static const String typeScriptScreen = '/typescript_screen';
  //easy screens
  static const String easyCSharpScreen = '/easy_c_sharp_screen';
  static const String easyCppScreen = '/easy_cpp_screen';
  static const String easyCssScreen = '/easy_css_screen';
  static const String easyHtmlScreen = '/easy_html_screen';
  static const String easyJavascriptScreen = '/easy_java_script_screen';
  static const String easyPhpScreen = '/easy_php_screen';
  static const String easyPythonScreen = '/easy_python_screen';
  static const String easyTypeScriptScreen = '/easy_typescript_screen';
  //medium screens
  static const String mediumCSharpScreen = '/medium_c_sharp_screen';
  static const String mediumCppScreen = '/medium_cpp_screen';
  static const String mediumCssScreen = '/medium_css_screen';
  static const String mediumHtmlScreen = '/medium_html_screen';
  static const String mediumJavaScriptScreen = '/medium_javascript_screen';
  static const String mediumPhpScreen = '/medium_php_screen';
  static const String mediumPythonScreen = '/medium_python_screen';
  static const String mediumTypeScriptScreen = '/medium_typescript_screen';
  //hard screens
  static const String hardCSharpScreen = '/hard_c_sharp_screen';
  static const String hardCppScreen = '/hard_cpp_screen';
  static const String hardCssScreen = '/hard_css_screen';
  static const String hardHtmlScreen = '/hard_html_screen';
  static const String hardJavaScriptScreen = '/hard_javascript_screen';
  static const String hardPhpScreen = '/hard_php_screen';
  static const String hardPythonScreen = '/hard_python_screen';
  static const String hardTypeScriptScreen = '/hard_typescript_screen';

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
      case javaScriptScreen:
        return MaterialPageRoute(builder: (_) => const JavaScriptScreen());
      case phpScreen:
        return MaterialPageRoute(builder: (_) => const PhpScreen());
      case pythonScreen:
        return MaterialPageRoute(builder: (_) => const PythonScreen());
      case typeScriptScreen:
        return MaterialPageRoute(builder: (_) => const TypeScriptScreen());
      //easy cases
      case easyCSharpScreen:
        return MaterialPageRoute(builder: (_) => const EasyCSharpScreen());
      case easyCppScreen:
        return MaterialPageRoute(builder: (_) => const EasyCppScreen());
      case easyCssScreen:
        return MaterialPageRoute(builder: (_) => const EasyCssScreen());
      case easyHtmlScreen:
        return MaterialPageRoute(builder: (_) => const EasyHtmlScreen());
      case easyJavascriptScreen:
        return MaterialPageRoute(builder: (_) => const EasyJavaScriptScreen());
      case easyPhpScreen:
        return MaterialPageRoute(builder: (_) => const EasyPhpScreen());
      case easyPythonScreen:
        return MaterialPageRoute(builder: (_) => const EasyPythonScreen());
      case easyTypeScriptScreen:
        return MaterialPageRoute(builder: (_) => const EasyTypeScriptScreen());

      //medium cases
      case mediumCSharpScreen:
        return MaterialPageRoute(builder: (_) => const MediumCSharpScreen());
      case mediumCppScreen:
        return MaterialPageRoute(builder: (_) => const MediumCppScreen());
      case mediumCssScreen:
        return MaterialPageRoute(builder: (_) => const MediumCssScreen());
      case mediumHtmlScreen:
        return MaterialPageRoute(builder: (_) => const MediumHtmlScreen());
      case mediumJavaScriptScreen:
        return MaterialPageRoute(
            builder: (_) => const MediumJavaScriptScreen());
      case mediumPhpScreen:
        return MaterialPageRoute(builder: (_) => const MediumPhpScreen());
      case mediumPythonScreen:
        return MaterialPageRoute(builder: (_) => const MediumPythonScreen());
      case mediumTypeScriptScreen:
        return MaterialPageRoute(
            builder: (_) => const MediumTypeScriptScreen());
      //hard cases
      case hardCSharpScreen:
        return MaterialPageRoute(builder: (_) => const HardCSharpScreen());
      case hardCppScreen:
        return MaterialPageRoute(builder: (_) => const HardCppScreen());
      case hardCssScreen:
        return MaterialPageRoute(builder: (_) => const HardCssScreen());
      case hardHtmlScreen:
        return MaterialPageRoute(builder: (_) => const HardHtmlScreen());
      case hardJavaScriptScreen:
        return MaterialPageRoute(builder: (_) => const HardJavaScriptScreen());
      case hardPhpScreen:
        return MaterialPageRoute(builder: (_) => const HardPhpScreen());
      case hardPythonScreen:
        return MaterialPageRoute(builder: (_) => const HardPythonScreen());
      case hardTypeScriptScreen:
        return MaterialPageRoute(builder: (_) => const HardTypeScriptScreen());
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
