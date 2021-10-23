import 'package:flutter/material.dart';

// Bottom navigation bars allow movement between primary destinations in an app.
// https://material.io/components/bottom-navigation/flutter
// ToDo: Add animated icons from Rive animation tool

class BottomNavigationWidgetScreen extends StatefulWidget {
  const BottomNavigationWidgetScreen({Key? key}) : super(key: key);

  @override
  _BottomNavigationWidgetScreenState createState() => _BottomNavigationWidgetScreenState();
}

class _BottomNavigationWidgetScreenState extends State<BottomNavigationWidgetScreen> {

  int _currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(title: const Text('Bottom Navigation Bar'),),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: colorScheme.surface,
        selectedItemColor: colorScheme.onSurface,
        unselectedItemColor: colorScheme.onSurface.withOpacity(.60),
        selectedLabelStyle: textTheme.caption,
        unselectedLabelStyle: textTheme.caption,
        onTap: (value) {
          // Respond to item press.
          setState(() => _currentIndex = value);
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Favorites',
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: 'Music',
            icon: Icon(Icons.music_note),
          ),
          BottomNavigationBarItem(
            label: 'Places',
            icon: Icon(Icons.location_on),
          ),
          BottomNavigationBarItem(
            label: 'News',
            icon: Icon(Icons.library_books),
          ),
        ],
      ),
    );
  }
}
