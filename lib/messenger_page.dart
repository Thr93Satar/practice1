import 'package:flutter/material.dart';
import 'package:practiceflutter/topActiveUsers.dart';
import 'package:practiceflutter/main.dart';

class Messenger_page extends StatelessWidget {
  const Messenger_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage("https://images.pexels.com/photos/15551777/pexels-photo-15551777.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
            ),
            SizedBox(width: 10,),
            Text('Chats',style: TextStyle(color: Colors.black, fontSize: 20)),
          ],
        ),
        elevation: 0,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt,color: elementcolor,),),
          IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: elementcolor),)
        ],
      ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0, right: 20.0, left: 20.0, bottom: 10.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: element1color,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child:Row(
                      children: [
                        Icon(Icons.search, color: Colors.grey.shade600,),
                        const SizedBox(width: 5,),
                        Text('Search' ,style: TextStyle(color: Colors.grey.shade600),),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    SizedBox(width: 20,),
                    ActiveUsers(userName: "Michel Stinger Ost-word", innerCircleColor: Colors.white, outerCircleColor: Colors.green, userImage:"https://images.pexels.com/photos/15656117/pexels-photo-15656117.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    SizedBox(width: 16,),
                    ActiveUsers(userName: "Karol Anthony Hoppkens", innerCircleColor: Colors.white, outerCircleColor: Colors.red, userImage: "https://images.pexels.com/photos/15767253/pexels-photo-15767253.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    SizedBox(width: 16,),
                    ActiveUsers(userName: "Karol Anthony Hoppkens", innerCircleColor: Colors.white, outerCircleColor: Colors.red, userImage: "https://images.pexels.com/photos/15767253/pexels-photo-15767253.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    SizedBox(width: 16,),
                    ActiveUsers(userName: "Michel Stinger Ost-word", innerCircleColor: Colors.white, outerCircleColor: Colors.green, userImage:"https://images.pexels.com/photos/15656117/pexels-photo-15656117.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    SizedBox(width: 16,),
                    ActiveUsers(userName: "Michel Stinger Ost-word", innerCircleColor: Colors.white, outerCircleColor: Colors.green, userImage:"https://images.pexels.com/photos/15656117/pexels-photo-15656117.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    SizedBox(width: 16,),
                    ActiveUsers(userName: "Michel Stinger Ost-word", innerCircleColor: Colors.white, outerCircleColor: Colors.green, userImage:"https://images.pexels.com/photos/15656117/pexels-photo-15656117.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    SizedBox(width: 16,),
                    ActiveUsers(userName: "Karol Anthony Hoppkens", innerCircleColor: Colors.white, outerCircleColor: Colors.red, userImage: "https://images.pexels.com/photos/15767253/pexels-photo-15767253.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    SizedBox(width: 16,),
                    ActiveUsers(userName: "Karol Anthony Hoppkens", innerCircleColor: Colors.white, outerCircleColor: Colors.red, userImage: "https://images.pexels.com/photos/15767253/pexels-photo-15767253.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    SizedBox(width: 15,),
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}
