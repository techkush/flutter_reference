import 'package:flutter/material.dart';
import 'package:flutter_reference/main.dart';

class ButtonWidgetScreen extends StatefulWidget {
  const ButtonWidgetScreen({Key? key}) : super(key: key);

  @override
  _ButtonWidgetScreenState createState() => _ButtonWidgetScreenState();
}

class _ButtonWidgetScreenState extends State<ButtonWidgetScreen> {

  final isSelected = <bool>[false, false, false];
  var isSelectedButton = false;
  var icon = Icons.favorite_border;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Buttons'),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Text Button'),
              TextButton(
                onPressed: () {

                },
                child: const Text("TEXT BUTTON"),
              ),
              TextButton.icon(
                onPressed: () {

                },
                icon: const Icon(Icons.add, size: 18,),
                label: const Text("TEXT BUTTON"),
              ),
              const Text('Outlined button'),
              OutlinedButton(
                onPressed: () {
                  // Respond to button press
                },
                child: const Text("OUTLINED BUTTON"),
              ),
              OutlinedButton.icon(
                onPressed: () {
                  // Respond to button press
                },
                icon: const Icon(Icons.add, size: 18),
                label: const Text("OUTLINED BUTTON"),
              ),
              const Text('Contained button'),
              ElevatedButton(
                onPressed: () {
                  // Respond to button press
                },
                child: const Text('CONTAINED BUTTON'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.green;
                    }
                    return Colors.blue;
                  }),
                  textStyle: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return const TextStyle(fontSize: 24);
                    }
                    return const TextStyle(fontSize: 16);
                  }),
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  // Respond to button press
                },
                icon: const Icon(Icons.add, size: 18),
                label: const Text("CONTAINED BUTTON"),
              ),
              const SizedBox(height: 16,),
              const Text('Toggle button '),
              const SizedBox(height: 16,),
              ToggleButtons(
                color: Colors.black.withOpacity(0.60),
                selectedColor: const Color(0xFF6200EE),
                selectedBorderColor: const Color(0xFF6200EE),
                fillColor: const Color(0xFF6200EE).withOpacity(0.08),
                splashColor: const Color(0xFF6200EE).withOpacity(0.12),
                hoverColor: const Color(0xFF6200EE).withOpacity(0.04),
                borderRadius: BorderRadius.circular(4.0),
                constraints: const BoxConstraints(minHeight: 36.0),
                isSelected: isSelected,
                onPressed: (index) {
                  // Respond to button selection

                  // If you want to select last selected one
                  isSelected.asMap().forEach((index, value) {
                    isSelected[index] = false;
                  });

                  setState(() {
                    isSelected[index] = !isSelected[index];
                  });
                },
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('BUTTON 1'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('BUTTON 2'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('BUTTON 3'),
                  ),
                ],
              ),
              const SizedBox(height: 16,),
              ToggleButtons(
                color: Colors.black.withOpacity(0.60),
                selectedColor: const Color(0xFF6200EE),
                selectedBorderColor: const Color(0xFF6200EE),
                fillColor: const Color(0xFF6200EE).withOpacity(0.08),
                splashColor: const Color(0xFF6200EE).withOpacity(0.12),
                hoverColor: const Color(0xFF6200EE).withOpacity(0.04),
                borderRadius: BorderRadius.circular(4.0),
                isSelected: isSelected,
                onPressed: (index) {
                  // Respond to button selection
                  setState(() {
                    isSelected[index] = !isSelected[index];
                  });
                },
                children: const [
                  Icon(Icons.favorite),
                  Icon(Icons.visibility),
                  Icon(Icons.notifications),
                ],
              ),
              const SizedBox(height: 16,),
              const Text('Icon button '),
              IconButton(
                icon: Icon(icon),
                color: Colors.black,
                onPressed: () {
                  // Respond to icon toggle
                  setState(() {
                    isSelectedButton = !isSelectedButton;
                    icon = isSelectedButton ? Icons.favorite : Icons.favorite_border;
                  });
                },
              ),
              const Text('Buttons: Floating action button'),
              FloatingActionButton(
                backgroundColor: const Color(0xff03dac6),
                foregroundColor: Colors.black,
                mini: true,
                onPressed: () {
                  // Respond to button press
                },
                child: const Icon(Icons.add),
              ),
              const SizedBox(height: 16,),
              FloatingActionButton.extended(
                backgroundColor: const Color(0xff03dac6),
                foregroundColor: Colors.black,
                onPressed: () {
                  // Respond to button press
                },
                icon: const Icon(Icons.add),
                label: const Text('EXTENDED'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
