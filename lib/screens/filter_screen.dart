import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class FilterScreen extends StatelessWidget {
  static const routeName = "/filters";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Filter Screen"),
      ),
      drawer: MainDraw(),
      body: Center(
        child: Text("Data"),
      ),
    );
  }
}
