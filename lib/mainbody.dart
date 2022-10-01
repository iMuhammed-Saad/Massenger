import 'package:flutter/material.dart';

import 'Chats.dart';
import 'chatBody.dart';
import 'rowBody.dart';


class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key,}): super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override

  var searchText = TextEditingController();

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black38,
        appBar: AppBar(
          backgroundColor: Colors.black38,
          title: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage("https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80"),
                ),
                SizedBox(width: 20.0,),
                Text("Chats",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0),)
              ],
            ),
          actions: [
            IconButton(onPressed: (){},
              icon: CircleAvatar(
              radius: 30.0,
              backgroundColor: Colors.white30,
              child: Icon(Icons.camera_alt,size: 22.0,color: Colors.white,)
            ),
            ),
            IconButton(onPressed: (){},
              icon: CircleAvatar(
              radius: 30.0,
              backgroundColor: Colors.white30,
              child: Icon(Icons.edit,size: 22.0,color: Colors.white,)
            ),
            ),
          ],
          ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextFormField(
                onTap: (){},
                controller: searchText,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(color: Colors.grey[400]),
                  filled: true,
                  fillColor: Colors.grey[800],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0)
                  ),
                  prefixIcon: Icon(Icons.search,color: Colors.grey[400]),
                ),
              ),
              SizedBox(height: 20.0,),
                  Container(
                    height: 120,
                    child: Row(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: chatlist.length,
                            itemBuilder: (context , index) => rowBody(
                              chats: chatlist[index],
                              press: (){},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              SizedBox(height: 5,),
              Expanded(
                child: ListView.builder(
                  itemCount: chatlist.length,
                    itemBuilder: (context , index) => chatBody(
                      chats: chatlist[index],
                      press: (){},
                      isOnline: true,
                    ),
                ),
              )
            ],
          ),
        ),
        ),
    );
  }
}
