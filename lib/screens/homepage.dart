import 'package:flutter/material.dart';
import 'package:whatsapp/screens/StatusScreen.dart';
import 'package:whatsapp/screens/calls.dart';
import 'package:whatsapp/screens/camera.dart';
import 'package:whatsapp/screens/chat.dart';
import 'package:camera/camera.dart';

class HomaePage extends StatefulWidget {
  List<CameraDescription> camera;
  HomaePage({this.camera});

  @override
  _HomaePageState createState() => _HomaePageState();
}

class _HomaePageState extends State<HomaePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 1, length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "WhatsApp",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
            color: Colors.white,
          ),
          PopupMenuButton<int>(
            elevation: 8.0,
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: Text("New group"),
              ),
              PopupMenuItem(
                value: 2,
                child: Text("New broadcast"),
              ),
              PopupMenuItem(
                value: 3,
                child: Text("WhatsApp web"),
              ),
              PopupMenuItem(
                value: 4,
                child: Text("Starred messages"),
              ),
              PopupMenuItem(
                value: 2,
                child: Text("Payments"),
              ),
              PopupMenuItem(
                value: 2,
                child: Text("Settings"),
              ),
            ],
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              icon: Icon(
                Icons.camera_alt,
                color: Colors.white,
              ),
            ),
            Tab(
              child: Text(
                "CHAT",
                style: Theme.of(context).textTheme.button,
              ),
            ),
            Tab(
              child: Text(
                "STATUS",
                style: Theme.of(context).textTheme.button,
              ),
            ),
            Tab(
              child: Text(
                "CALLS",
                style: Theme.of(context).textTheme.button,
              ),
            )
          ],
        ),
      ),
      body: TabBarView(
          controller: _tabController,
          children: [Camera(widget.camera), Chat(), StatusScreen(), Calls()]),
    );
  }
}
