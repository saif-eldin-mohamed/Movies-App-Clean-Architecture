import 'package:flutter/material.dart';

import 'core/utils/app_strings.dart';
import 'modules/movies/presentation/screens/movies_screen.dart';
class MoviesApp extends StatelessWidget {
  const MoviesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const MoviesScreen(),
    );
  }
}
