import 'package:flutter/material.dart';
import 'package:practiceflutter/modules/messenger_page/topActiveUsers.dart';
import 'package:practiceflutter/main.dart';
import '../user_model/UsersModel.dart';

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
              backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/15551777/pexels-photo-15551777.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
            ),
            SizedBox(
              width: 10,
            ),
            Text('Chats', style: TextStyle(color: Colors.black, fontSize: 20)),
          ],
        ),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt,
              color: elementcolor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.edit, color: elementcolor),
          )
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 5/1,
                child: Row(
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: element1color,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.search,
                                  color: Colors.grey.shade600,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Search',
                                  style: TextStyle(color: Colors.grey.shade600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              AspectRatio(
                aspectRatio: 16/6,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 10.0, right: 20.0, left: 20.0),
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: 100,
                          itemBuilder: (BuildContext context, int index) {
                            return const ActiveUsers(
                                userName: "Kale Galahad Aygar",
                                innerCircleColor: Colors.white,
                                outerCircleColor: Colors.blue,
                                userImage:
                                'https://images.pexels.com/photos/16085452/pexels-photo-16085452.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1');
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return const SizedBox(
                              width: 15.0,
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              AspectRatio(
                aspectRatio: 1/10,
                child: Column(
                  children: [
                    Flexible(
                      child: ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: UsersModel.users.length,
                        itemBuilder: (context, index) => buildUsersItem(UsersModel.users[index]),
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(
                            height: 20.0,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
