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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Scren1("This is Page1 From Home")));
          }, child: Text("Go To 1")),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Scren2("This is Page2 From Home ")));
          }, child: Text("Go To 2"))
        ],
      ),
    );
  }

}

class Scren1 extends StatelessWidget {
  String msg;
   Scren1(
       this.msg,

      {super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text(msg),
       backgroundColor: Colors.tealAccent,
     ),
     body: Center(
       child: ElevatedButton(onPressed: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>Scren2("This is From Home")));
       }, child: Text("Page2")),
     ),
   );
  }

}
class Scren2 extends StatelessWidget {
  String msg;
 Scren2(
     this.msg,
     {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg),
        backgroundColor: Colors.tealAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeActivity()));
          }, child: Text("Home")),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Scren1("THis is from Page 2")));
          }, child: Text("Page 1"))
        ],
      )

    );
  }

}
