import 'package:flutter/material.dart';
import 'package:flutter_business_govnz_api/services/http_fetch_api.dart';
import 'package:provider/provider.dart';
import 'screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final BuildPractitionerService buildPractitioner =
        BuildPractitionerService();
    return FutureProvider(
      create: (context) => buildPractitioner.fetchBuilders(),
      catchError: (context, error) {
        print(error.toString());
      },
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: Home()),
    );
  }
}
