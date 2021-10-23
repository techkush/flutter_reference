import 'package:flutter/material.dart';

class AppBarWidgetScreen extends StatefulWidget {
  const AppBarWidgetScreen({Key? key}) : super(key: key);

  @override
  _AppBarWidgetScreenState createState() => _AppBarWidgetScreenState();
}

class _AppBarWidgetScreenState extends State<AppBarWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text('Page title', style: TextStyle(),),
        actions: const [
          Icon(Icons.favorite),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.search),
          ),
          Icon(Icons.more_vert),
        ],
        elevation: 3,
      ),
      body: Container(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
            const Spacer(),
            IconButton(icon: const Icon(Icons.search), onPressed: () {}),
            IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
          ],
        ),
      ),
      floatingActionButton:
          FloatingActionButton(child: const Icon(Icons.add), onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
