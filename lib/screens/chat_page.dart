import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/auth_provider.dart';

class ChatPage extends StatefulWidget{
  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    final ap=Provider.of<AuthProvider>(context, listen: false);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat'),
      ),
    );
  }
}