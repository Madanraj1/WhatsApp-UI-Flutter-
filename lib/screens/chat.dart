import 'package:flutter/material.dart';
import 'package:whatsapp/model/chat.dart';
import 'package:whatsapp/screens/ChatScreen.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          itemCount: messageData.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Divider(
                  height: 20.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                    maxRadius: 25,
                    backgroundImage: NetworkImage(messageData[index].imageUrl),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        messageData[index].name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(messageData[index].time,
                          style: TextStyle(color: Colors.grey, fontSize: 13))
                    ],
                  ),
                  subtitle: Container(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Text(
                      messageData[index].message,
                      style: TextStyle(color: Colors.grey, fontSize: 12.0),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ChatScreen()));
                  },
                ),
              ],
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 10, 10),
          child: Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Theme.of(context).accentColor,
              child: Icon(
                Icons.message,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
