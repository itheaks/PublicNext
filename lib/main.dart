import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testapp/viewmodels/view_model.dart';
import 'package:testapp/views/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeViewModel(),
      child: MaterialApp(
        title: 'Public Next',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
