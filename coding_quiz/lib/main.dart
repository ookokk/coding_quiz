// ignore_for_file: use_key_in_widget_constructors

import 'package:coding_quiz/view/splash_screen.dart';
import 'package:coding_quiz/view/widgets/quiz_template.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'service/firebase_options.dart';

void main() async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => QuizTemplateNotifier(), // Düzeltme burada yapıldı
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: '',
          theme: ThemeData(),
          home: const SplashScreen()),
    );
  }
}
