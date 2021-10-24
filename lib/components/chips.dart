import 'package:flutter/material.dart';

/*
Chips allow users to enter information, make selections, filter content,
or trigger actions. While buttons are expected to appear consistently and with
familiar calls to action, chips should appear dynamically as a group of
multiple interactive elements.
*/

class ChipsWidgetScreen extends StatefulWidget {
  const ChipsWidgetScreen({Key? key}) : super(key: key);

  @override
  _ChipsWidgetScreenState createState() => _ChipsWidgetScreenState();
}

class _ChipsWidgetScreenState extends State<ChipsWidgetScreen> {
  List selectedList = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chips'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text('Input chips'),
            InputChip(
              avatar: selectedList[0] ? Container() : const Icon(Icons.remove),
              label: const Text('Input 1'),
              selected: selectedList[0],
              onSelected: (bool value) {
                setState(() {
                  selectedList[0] = !selectedList[0];
                });
              },
            ),
            const Text('Choice chips'),
            ChoiceChip(
                label: const Text('Choice 1'),
                selected: selectedList[1],
                onSelected: (bool value) {
                  setState(() {
                    selectedList[1] = !selectedList[1];
                  });
                }),
            const Text('Filter chips'),
            FilterChip(
              label: const Text('Filter 1'),
                selected: selectedList[2],
                onSelected: (bool value) {
                  setState(() {
                    selectedList[2] = !selectedList[2];
                  });
                }
            ),
            const Text('Action chips'),
            ActionChip(
              avatar: const Icon(Icons.favorite),
              label: const Text('Action 1'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
