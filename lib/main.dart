import 'package:flutter/material.dart';

main(){
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeActivity(),
    debugShowCheckedModeBanner: false,);
  }

}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});
  Mysnack(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }

 MyallertDialog(context){
    return showDialog(
        context: context,
        builder: (BuildContext context){
          return Expanded(child: AlertDialog(
            title: Text("Allert!"),
            content: Text("Do You Want To Access Gallery"),
            actions: [
              TextButton(onPressed: (){
                Navigator.of(context).pop();
                Mysnack("Accepted", context);}, child: Text("Yes")),
              TextButton(onPressed: (){
                Mysnack("Denied", context);
                Navigator.of(context).pop();}, child: Text("No")),
            ],
          ));
          
        }
    );
 }

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        padding:EdgeInsets.all(25),
      backgroundColor: Colors.cyanAccent,
      foregroundColor: Colors.green,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.elliptical(30, 20))
      )
    );


    return Scaffold(
      appBar: AppBar(
        title: Text("Dialar Demo App"),
        backgroundColor: Colors.greenAccent,
        actions: [
          IconButton(onPressed: (){Mysnack("This is for Home", context);}, icon: Icon(Icons.home)),
          IconButton(onPressed: (){Mysnack("This is time Icon", context);}, icon: Icon(Icons.watch_later)),
          IconButton(onPressed: (){Mysnack("Account", context);}, icon: Icon(Icons.account_circle)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){Mysnack("Dialing", context);},
      backgroundColor: Colors.teal,
      child: Icon(Icons.dialpad),), 
      bottomNavigationBar: BottomNavigationBar(
       currentIndex: 1,
    items: [
          BottomNavigationBarItem(icon: Icon(Icons.add_call), label: "Call"),
         BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.contact_mail_outlined),label: "Contact"),
        ],
        onTap: (int index){
         if (index == 0){
           Mysnack("Make a Call", context);
         }
         if (index ==1){
           Mysnack("Home", context);
         }
         if(index==2){
           Mysnack("Contact", context);
         }
        },),
      drawer: Drawer(
   child: ListView(
     children: [
       DrawerHeader(
         padding: EdgeInsets.all(0),
         child:
       UserAccountsDrawerHeader(
         accountName: Text("Rakib"), 
         accountEmail: Text("rakib@insfo.com"),
       currentAccountPicture: Image.network("https://i.postimg.cc/Y0yTmYrP/IMG-3417.jpg"),
       decoration: BoxDecoration(color: Colors.blueGrey),),
       ),
       ListTile(leading: Icon(Icons.home), title: Text("Home"), onTap:(){Mysnack("This is Home", context);}),
       ListTile(
           leading: Icon(Icons.man),
           title: Text("Profile"),
           onTap: (){Mysnack("Check your Profile", context);}),
       ListTile(
           leading: Icon(Icons.contact_mail_outlined),
           title: Text("Contact"),
           onTap: (){Mysnack("Check your Profile", context);}),
       ListTile(
           leading:Icon(Icons.account_balance_wallet_outlined),
           title: Text("About"),
           onTap: (){
             Mysnack("Check your Profile", context);
           }
       ),
     ],
   ),
 ),
      body:
        Center(
          child: ElevatedButton(onPressed: (){MyallertDialog(context);}, child: Text("Click me")),
        )
      );

  }    //this is flutter practice project

}