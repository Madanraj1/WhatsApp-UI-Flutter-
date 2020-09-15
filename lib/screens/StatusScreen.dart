import 'package:flutter/material.dart';
import 'package:whatsapp/model/status.dart';
import 'package:whatsapp/screens/StoryScreen.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff2f2f2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            color: Colors.white,
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Stack(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      foregroundColor: Colors.grey,
                      backgroundImage: NetworkImage(
                          "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 35, 0, 0),
                      child: Container(
                        child: Icon(
                          Icons.add,
                          size: 20,
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.green, shape: BoxShape.circle),
                      ),
                    ),
                  ],
                ),
                title: Text(
                  "Me Status",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Tap to add status update"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Viewed Updates",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.all(8.0),
            color: Colors.white,
            child: ListView.builder(
              itemCount: statusData.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xff25D366),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(statusData[index].imageUrl),
                    ),
                  ),
                  title: Text(
                    statusData[index].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(statusData[index].time),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StoryPageView()));
                  },
                );
              },
            ),
          )),
        ],
      ),
    );
  }
}
