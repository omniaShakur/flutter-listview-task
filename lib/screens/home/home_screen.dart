
import 'package:day3/models/user.dart';
import 'package:day3/screens/userDetails/user_detalis_screen.dart';
import 'package:flutter/material.dart';
import 'package:day3/components/user_card.dart';

class HomeScreen extends StatefulWidget{
@override
State<StatefulWidget> createState(){
  return _HomeScreenState();
}
}


class _HomeScreenState extends State<HomeScreen>{
  List<User> _userslist = [
    User(image: "assets/images/1.jpg", id: "1",
       name: "MONA",
        email: "mona@gmail.com", address: "Aswan"),
        User(image: "assets/images/2.jpg", id: "2",
       name: "BADR",
        email: "badr@gmail.com", address: "Egypt"),
        User(image: "assets/images/3.jpg", id: "3",
       name: "SALIM",
        email: "salim@gmail.com", address: "Alexandria"),
        User(image: "assets/images/4.jpg", id: "4",
       name: "AMIRA",
        email: "amira@gmail.com", address: "Esmaillia"),
  ];
@override
Widget build(BuildContext context){
  
  return Scaffold(
    backgroundColor: Colors.blueAccent,
    appBar: getAppBar(),
    body: getUserCard()
  );
}

PreferredSizeWidget getAppBar(){
  return AppBar(
    
          title: Text('LOGO',
         style: TextStyle(fontWeight: FontWeight.bold,
         fontSize: 20,
         color: Colors.deepPurple.shade900,),),
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color:Colors.deepPurple.shade900,
              ),
              onPressed: (){
                print('Menu button Clicked');
              },
              ),

    );
}
  
Widget getUserCard(){
  return ListView(
        children: List.generate(_userslist.length,
         (index) => UserCard(
           user: _userslist[index],
           onItemClick: (clickedUser){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => UserDetalisScreen(
                user: clickedUser,
              ),
              ),
              );
           },),
         ),
      );}
  
  // Center(
    
  //   child: UserCard(
  //     user: User(image: "assets/images/1.jpg", id: "1",
  //      name: "OMNIA",
  //       email: "omnia@gmail.com", address: "Aswan"),
  //   ),
  // );
  //
  // 

// Widget getHomeViewBody(){
//   return Center(

//    child:Column(
//      children : [
//      Text(
//        'W E L C O M E',
//          style: TextStyle(fontWeight: FontWeight.bold,
//          fontSize: 20,
//          color: Colors.deepPurple.shade900,),
//        ),
//      Text('... J o i n  U s ...',
//          style: TextStyle(fontWeight: FontWeight.bold,
//          fontSize: 10,
//          color: Colors.white,)),
//    ],

//    mainAxisSize: MainAxisSize.max,
//    mainAxisAlignment: MainAxisAlignment.center,
//    crossAxisAlignment: CrossAxisAlignment.center,
//   ),
//   );
// }
}

