
import 'package:flutter/material.dart';

import 'Chats.dart';

class rowBody extends StatelessWidget {
  const rowBody({Key? key,
  required this.chats,
    required this.press
  })
  : super(key: key);
  final Chats chats ;
  final VoidCallback press;
  @override

  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                    height: 100.0,
                    width: 60.0,
                    child: Column(
                      // mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(chats.image),
                              radius: 30.0,
                            ),
                        CircleAvatar(
                          backgroundColor: chats.isOnline  ? Colors.green : Colors.transparent,
                          radius: 8.0,
                        ),
                          ],
                        ),
                        SizedBox(height: 10.0,),
                        Text(chats.name,maxLines: 2,style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.bold,color: Colors.white),),

                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
