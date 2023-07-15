import 'package:flutter/material.dart';

void main() {
  runApp(WhatsAppCloneApp());
}

class WhatsAppCloneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp Clone',
      theme: ThemeData(
        primaryColor: Colors.green,
        accentColor: Colors.greenAccent,
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      // Number of tabs: Camera, Chats, Status, Calls
      child: Scaffold(
        appBar: AppBar(

          title: Text('WhatsApp'),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Implement search functionality
              },
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                // Implement menu options
              },
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: 'Chats'),
              Tab(text: 'Status'),
              Tab(text: 'Calls'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CameraScreen(),
            ChatsScreen(),
            StatusScreen(),
            CallsScreen(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Implement new chat functionality
          },
          child: Icon(Icons.chat),
        ),
      ),
    );
  }
}

class CameraScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Camera Screen'),
    );
  }
}

class ChatsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Chats Screen'),
    );
  }
}

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Status Screen'),
    );
  }
}

class CallsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Calls Screen'),
    );
  }
}
