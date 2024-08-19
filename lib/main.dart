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
    return DefaultTabController(
        length: 8,
        child: Scaffold(
          appBar: AppBar(
            title: Text("My App"),
            backgroundColor: Colors.tealAccent,
            bottom: TabBar(
                isScrollable: true,
                tabs: [
              Tab(icon: Icon(Icons.home),text: "Home",),
              Tab(icon: Icon(Icons.search),text: "Search",),
              Tab(icon: Icon(Icons.settings),text: "Settings",),
              Tab(icon: Icon(Icons.contact_mail_outlined),text: "Contact",),
              Tab(icon: Icon(Icons.alternate_email),text:"Email" ,),
              Tab(icon: Icon(Icons.timer),text: "Time",),
              Tab(icon: Icon(Icons.account_balance),text: "Balance",),
              Tab(icon: Icon(Icons.add),text: "ADD",),

            ]),
          ),
          body: TabBarView(children: [
         Homefragement(),
            Settingsfragement()

          ]),
        ));
  }

}
