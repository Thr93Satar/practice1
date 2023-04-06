import 'dart:ui';

import 'package:flutter/material.dart';

class BottomActiveUsers extends StatelessWidget {

  final String userName;
  final String recentMessage;
  final Color innerCircleColor;
  final Color outerCircleColor;
  final String userImage;

  const BottomActiveUsers(
      {Key? key,required this.recentMessage, required this.userName, required this.innerCircleColor, required this.outerCircleColor, required this.userImage}
      ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  foregroundImage: NetworkImage(userImage),
                  radius: 29.0,
                ),
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: innerCircleColor,
                      radius: 7.5,
                    ),
                    CircleAvatar(
                      radius: 6.0,
                      backgroundColor: outerCircleColor,
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
                SizedBox(height: 5,),
                Container(
                  width: 200,
                    child: Text(userName, style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w500,),maxLines: 1, )),
                const SizedBox(height: 8,),
                Text(recentMessage, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w100), maxLines: 2, overflow: TextOverflow.ellipsis,)
              ],
            ),
          ),
          const SizedBox(width: 25,),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 13,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.notifications_off_rounded, size: 15,),
                    const SizedBox(width: 10,),
                    CircleAvatar(
                      radius: 6,
                      backgroundColor: outerCircleColor,
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Text('8:00 AM', style: TextStyle(color: Colors.grey[600]),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


