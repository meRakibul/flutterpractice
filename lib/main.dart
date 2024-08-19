import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(const Myapp());
}
class Myapp extends StatelessWidget{
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeActivity(),
    debugShowCheckedModeBanner: false,);
  }
  
}
class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});
  Mysnack(message, context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }


  
  MyallertDialog(context){
    return showDialog(
        context: context,
        builder: (BuildContext context){
          return Expanded(child: AlertDialog(
            title:Text("Warning"),
            content: Text("Do You Want TO Continue?"),
          actions: [
            TextButton(onPressed: (){
              Mysnack("Accepted", context);
              Navigator.of(context).pop();},
                
                child: Text("Yes")),
            TextButton(onPressed: (){
              Mysnack("Denied", context);
              Navigator.of(context).pop();},

                child: Text("No"))
          ],));
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 60),
      backgroundColor: Colors.purpleAccent,
      foregroundColor: Colors.tealAccent
    );
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
      title: Text("Dattapra Dialing"),
        backgroundColor: Colors.pink,
        actions: [
          IconButton(onPressed: (){MyallertDialog(context);
            Mysnack("Accepted", context);}, icon: Icon(Icons.account_circle)),
          IconButton(onPressed: (){MyallertDialog(context);
          Mysnack("Accepted", context);}, icon: Icon(Icons.search_sharp)),
          IconButton(onPressed: (){MyallertDialog(context);
          Mysnack("Accepted", context);}, icon: Icon(Icons.add)),
        ],
        
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){MyallertDialog(context);},
      backgroundColor: Colors.tealAccent,
      child: Icon(Icons.dialpad),),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon:Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
        BottomNavigationBarItem(icon: Icon(Icons.account_balance),label: "Balance")
      ],
      onTap:
      (int index){
        if (index==0){
          MyallertDialog(context);
        }
        if(index==1){
          MyallertDialog(context);
        }
        if(index==1){
          Mysnack("Insufficient Balance", context);
        }
      },),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
                child:
                UserAccountsDrawerHeader(
                    accountName: Text("Rakibul Hasan"),
                    accountEmail: Text("rakib@info.com"),
                currentAccountPicture: Image.network("https://i.postimg.cc/Y0yTmYrP/IMG-3417.jpg"),
                decoration: BoxDecoration(color: Colors.purpleAccent),),),
               ListTile(leading: Icon(Icons.home),title: Text("Home"),onTap: (){MyallertDialog(context);},),
              ListTile(leading: Icon(Icons.settings),title: Text("Setting"),onTap: (){MyallertDialog(context);},),
              ListTile(leading: Icon(Icons.accessibility_sharp),title: Text("About"),onTap: (){MyallertDialog(context);},),
            




          ],
        ),
      ),
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(10),
          child: TextField(
            decoration: InputDecoration(border: OutlineInputBorder(),labelText: "First Name"),
          ),),
          Padding(padding: EdgeInsets.all(10),
          child: TextField(
            decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Last Name"),
          ),),
          Padding(padding: EdgeInsets.all(10),
          child: TextField(
            decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Email"),
          ),),
          Padding(padding: EdgeInsets.all(20),
          child: ElevatedButton(onPressed: (){MyallertDialog(context);
          Mysnack("Log in Succesfull", context);}, child: Text("Log IN"),style: buttonStyle,),)
          
        ],

      ),



    );
  }
  
}