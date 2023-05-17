import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UsersModel{

  static final List <UsersModel> users = [
    UsersModel(userImage: 'https://images.pexels.com/photos/15011063/pexels-photo-15011063.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', userMessage: 'dsadasdasdasdsadasdsa', userName: "Chris Dunham"),
    UsersModel(userImage: 'https://images.pexels.com/photos/15011063/pexels-photo-15011063.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', userMessage: 'dsadasdasdasdsadasdsa', userName: "Chris Dunham"),
    UsersModel(userImage: 'https://images.pexels.com/photos/15011063/pexels-photo-15011063.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', userMessage: 'dsadasdasdasdsadasdsa', userName: "Chris Dunham"),
    UsersModel(userImage: 'https://images.pexels.com/photos/15011063/pexels-photo-15011063.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', userMessage: 'dsadasdasdasdsadasdsa', userName: "Chris Dunham"),
    UsersModel(userImage: 'https://images.pexels.com/photos/15011063/pexels-photo-15011063.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', userMessage: 'dsadasdasdasdsadasdsa', userName: "Chris Dunham"),
    UsersModel(userImage: 'https://images.pexels.com/photos/15011063/pexels-photo-15011063.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', userMessage: 'dsadasdasdasdsadasdsa', userName: "Chris Dunham"),
    UsersModel(userImage: 'https://images.pexels.com/photos/15011063/pexels-photo-15011063.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', userMessage: 'dsadasdasdasdsadasdsa', userName: "Chris Dunham"),
    UsersModel(userImage: 'https://images.pexels.com/photos/15011063/pexels-photo-15011063.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', userMessage: 'dsadasdasdasdsadasdsa', userName: "Chris Dunham"),
    UsersModel(userImage: 'https://images.pexels.com/photos/15011063/pexels-photo-15011063.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', userMessage: 'dsadasdasdasdsadasdsa', userName: "Chris Dunham"),
    UsersModel(userImage: 'https://images.pexels.com/photos/15011063/pexels-photo-15011063.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', userMessage: 'dsadasdasdasdsadasdsa', userName: "Chris Dunham"),
    UsersModel(userImage: 'https://images.pexels.com/photos/15011063/pexels-photo-15011063.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', userMessage: 'dsadasdasdasdsadasdsa', userName: "Chris Dunham"),
    UsersModel(userImage: 'https://images.pexels.com/photos/15011063/pexels-photo-15011063.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', userMessage: 'dsadasdasdasdsadasdsa', userName: "Chris Dunham"),
    UsersModel(userImage: 'https://images.pexels.com/photos/15011063/pexels-photo-15011063.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', userMessage: 'dsadasdasdasdsadasdsa', userName: "Chris Dunham"),
    UsersModel(userImage: 'https://images.pexels.com/photos/15011063/pexels-photo-15011063.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', userMessage: 'dsadasdasdasdsadasdsa', userName: "Chris Dunham"),
    UsersModel(userImage: 'https://images.pexels.com/photos/15011063/pexels-photo-15011063.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', userMessage: 'dsadasdasdasdsadasdsa', userName: "Chris Dunham"),
    UsersModel(userImage: 'https://images.pexels.com/photos/15011063/pexels-photo-15011063.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', userMessage: 'dsadasdasdasdsadasdsa', userName: "Chris Dunham"),
    UsersModel(userImage: 'https://images.pexels.com/photos/15011063/pexels-photo-15011063.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', userMessage: 'dsadasdasdasdsadasdsa', userName: "Chris Dunham"),
    UsersModel(userImage: 'https://images.pexels.com/photos/15011063/pexels-photo-15011063.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', userMessage: 'dsadasdasdasdsadasdsa', userName: "Chris Dunham"),
  ];

  late final String userName;
  late final String userMessage;
  late final String userImage;

  UsersModel({
    required this.userImage,required this.userMessage,required this.userName,
});
}

Widget buildUsersItem(UsersModel user) =>  Padding(
  padding: const EdgeInsets.only(left: 20.0),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Flexible(
        child: Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              foregroundImage: NetworkImage('${user.userImage}'),
              radius: 29.0,
            ),
            const Stack(
              alignment: AlignmentDirectional.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 7.5,
                ),
                CircleAvatar(
                  radius: 6.0,
                  backgroundColor: Colors.green,
                ),
              ],
            )
          ],
        ),
      ),
      const SizedBox(width: 25,),
      Expanded(
        flex: 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 5,),
            Container(
                width: 200,
                child: Text('${user.userName}', style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w500,),maxLines: 1, )),
            const SizedBox(height: 8,),
            Text('${user.userMessage}', style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w100), maxLines: 2, overflow: TextOverflow.ellipsis,)
          ],
        ),
      ),
      const SizedBox(width: 25,),
      Flexible(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 13,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.notifications_off_rounded, size: 15,),
                SizedBox(width: 10,),
                CircleAvatar(
                  radius: 6,
                  backgroundColor: Colors.green,
                )
              ],
            ),
            const SizedBox(height: 10,),
            Text('8:00 AM', style: TextStyle(color: Colors.grey[600]),),
          ],
        ),
      ),
    ],
  ),
);