import 'package:flutter/material.dart';
import 'package:messenger/Chats.dart';

class chatBody extends StatelessWidget {
  const chatBody({Key? key,
  required this.chats,
  isOnline= true,
  required this.press,
  })
: super(key: key);
  final Chats chats ;
  final VoidCallback press;
  final bool isOnline = true ;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage(chats.image),
                ),
                CircleAvatar(
                  backgroundColor: chats.isOnline  ? Colors.green : Colors.transparent,
                  radius: 8.0,
                )
              ],
            ),
            SizedBox(width: 10.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(chats.name,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.white),),
                Text(chats.message,style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold,color: Colors.grey[500])),
              ]
            ),
            Spacer(),
            // Text(chats.time,style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.bold,color: Colors.white)),
            Visibility(
              replacement: Text(chats.time,style: TextStyle(color: Colors.white),),
              visible: chats.isOnline,
                child: Text("",style: TextStyle(color: Colors.white),),
            ),

          ],
        ),
      ),
    );
  }
}
