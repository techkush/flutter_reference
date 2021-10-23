import 'package:flutter/material.dart';
import 'package:flutter_reference/main.dart';

// A banner displays a prominent message and related optional actions.
// ToDo: Add animation part

class BannersWidgetScreen extends StatefulWidget {
  const BannersWidgetScreen({Key? key}) : super(key: key);

  @override
  _BannersWidgetScreenState createState() => _BannersWidgetScreenState();
}

class _BannersWidgetScreenState extends State<BannersWidgetScreen> {

  bool isOpenBanner = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Banners'),),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            isOpenBanner ? MaterialBanner(
              content: const Text('A banner displays a prominent message and related optional actions.'),
              leading: const CircleAvatar(child: Icon(Icons.delete)),
              actions: [
                TextButton(
                  child: const Text('ACTION 1', style: buttonTextStyleActive,),
                  onPressed: () { },
                ),
                TextButton(
                  child: const Text('ACTION 2', style: buttonTextStyleActive,),
                  onPressed: () { },
                ),
              ],
            ) : Container(),
            Positioned(
              bottom: 20,
              child: TextButton(
                child: const Text('Open/Close Banner', style: buttonTextStyleActive,),
                onPressed: () {
                  setState(() {
                    isOpenBanner = !isOpenBanner;
                  });
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}
