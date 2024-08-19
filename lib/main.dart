import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Fragement/Homefragrment.dart';
import 'Fragement/SettingsFragement.dart';

main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeActivity(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class HomeActivity extends StatelessWidget {
  HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.tealAccent,
    ),
      body: Center(
        child: LinearProgressIndicator(
          color: Colors.purpleAccent,
          minHeight: 5,
          backgroundColor: Colors.lightGreen,
        )
      ),
    );
    }
}
