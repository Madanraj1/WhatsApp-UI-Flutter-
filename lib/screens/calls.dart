import 'package:flutter/material.dart';
import 'package:whatsapp/model/calls.dart';

class Calls extends StatefulWidget {
  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callData.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Divider(
              height: 20.0,
            ),
            ListTile(
              leading: CircleAvatar(
                maxRadius: 25.0,
                backgroundImage: NetworkImage(callData[index].imageUrl),
              ),
              title: Text(
                callData[index].name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Container(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Text(
                    callData[index].time,
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  )),
              trailing: Icon(
                Icons.call,
              ),
              onTap: () {},
              selected: true,
            )
          ],
        );
      },
    );
  }
}
