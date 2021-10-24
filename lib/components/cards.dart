import 'package:flutter/material.dart';
import 'package:flutter_reference/main.dart';

class CardsWidgetScreen extends StatefulWidget {
  const CardsWidgetScreen({Key? key}) : super(key: key);

  @override
  _CardsWidgetScreenState createState() => _CardsWidgetScreenState();
}

class _CardsWidgetScreenState extends State<CardsWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cards'),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.arrow_drop_down_circle),
                      title: const Text('Card title 1'),
                      subtitle: Text(
                        'Secondary Text',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: () {
                            // Perform some action
                          },
                          child: const Text('ACTION 1', style: buttonTextStyleActive,),
                        ),
                        TextButton(
                          onPressed: () {
                            // Perform some action
                          },
                          child: const Text('ACTION 2', style: buttonTextStyleActive,),
                        ),
                      ],
                    ),
                    Image.asset('assets/images/image1.jpeg'),
                    Image.asset('assets/images/image2.jpeg'),


                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
