import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              CircleAvatar(
                radius: 18,
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260"),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                "Hitesh Chaudhry",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.videocam,
                  color: Colors.white,
                ),
                onPressed: () {}),
            IconButton(
                icon: Icon(
                  Icons.call,
                  color: Colors.white,
                ),
                onPressed: () {}),
            PopupMenuButton<int>(
              elevation: 8.0,
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Text("View Contact"),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text("Media, Links, docs"),
                ),
                PopupMenuItem(
                  value: 3,
                  child: Text("Search"),
                ),
                PopupMenuItem(
                  value: 4,
                  child: Text("Mute notifications"),
                ),
                PopupMenuItem(
                  value: 5,
                  child: Text("Wallpaper"),
                ),
                PopupMenuItem(
                  value: 6,
                  child: Text("More"),
                ),
              ],
            ),
          ],
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://user-images.githubusercontent.com/15075759/28719144-86dc0f70-73b1-11e7-911d-60d70fcded21.png"),
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SingleChildScrollView(
                  child: Container(
                    height: 43.0,
                    child: Row(
                      children: [
                        Expanded(
                            child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.camera_alt),
                              suffixIcon: Icon(Icons.attach_file),
                              fillColor: Colors.white,
                              hintText: "Type a message",
                              hintStyle: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50.0)),
                                  borderSide: BorderSide(color: Colors.white)),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50.0)),
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                          ),
                        )),
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xff128C7E), shape: BoxShape.circle),
                          child: IconButton(
                            icon: Icon(
                              Icons.mic,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}

// SingleChildScrollView(
//   child: Container(
//     height: 43.0,
//     child: Row(
//       children: [
//         Expanded(
//             child: ClipRRect(
//           borderRadius: BorderRadius.all(Radius.circular(50.0)),
//           child: TextFormField(
//             keyboardType: TextInputType.text,
//             decoration: InputDecoration(
//               prefixIcon: Icon(Icons.camera_alt),
//               suffixIcon: Icon(Icons.attach_file),
//               fillColor: Colors.white,
//               hintText: "Type a message",
//               hintStyle: TextStyle(
//                   fontSize: 15.0,
//                   color: Colors.grey,
//                   fontWeight: FontWeight.bold),
//               filled: true,
//               border: OutlineInputBorder(
//                   borderRadius:
//                       BorderRadius.all(Radius.circular(50.0)),
//                   borderSide: BorderSide(color: Colors.white)),
//               enabledBorder: OutlineInputBorder(
//                 borderRadius:
//                     BorderRadius.all(Radius.circular(50.0)),
//                 borderSide: BorderSide(color: Colors.white),
//               ),
//             ),
//           ),
//         )),
//         Container(
//           decoration: BoxDecoration(
//               color: Color(0xff128C7E), shape: BoxShape.circle),
//           child: IconButton(
//             icon: Icon(
//               Icons.mic,
//               color: Colors.white,
//             ),
//             onPressed: () {},
//           ),
//         )
//       ],
//     ),
//   ),
// )
