import 'package:flutter/material.dart';

class ActiveUsers extends StatelessWidget {

  final String userName;
  final Color innerCircleColor;
  final Color outerCircleColor;
  final String userImage;

  const ActiveUsers(
      {Key? key, required this.userName, required this.innerCircleColor, required this.outerCircleColor, required this.userImage}
      ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 60,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
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
          const SizedBox(height: 5,),
           Text(userName,
            textAlign:TextAlign.center ,
            style: const TextStyle(
                overflow: TextOverflow.ellipsis
            ),
            maxLines: 2,
          ),
        ],
      ) ,
    );
  }
}


