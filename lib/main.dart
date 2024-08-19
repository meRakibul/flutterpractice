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
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          elevation: 80,
          color: Colors.purpleAccent,
          shadowColor: Color.fromRGBO(33, 191, 115, 0.3),
          child: SizedBox(
            height: 200,
            width: 200,
            child: Center(child: Text("This is a card"),),
          ),
        ),
      ),
    );
    }
}
