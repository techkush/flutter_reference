import 'package:flutter/material.dart';

class CheckBoxesWidgetScreen extends StatefulWidget {
  const CheckBoxesWidgetScreen({Key? key}) : super(key: key);

  @override
  _CheckBoxesWidgetScreenState createState() => _CheckBoxesWidgetScreenState();
}

class _CheckBoxesWidgetScreenState extends State<CheckBoxesWidgetScreen> {

  List<bool> checked = [true, true, false, false, true];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cards'),),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 40),
        child: Column(
          children: [
            for (var i = 0; i < 5; i += 1)
              Row(
                children: [
                  Checkbox(
                    onChanged: i == 4
                        ? null
                        : (bool? value) {
                      setState(() {
                        checked[i] = value!;
                      });
                    },
                    tristate: i == 1,
                    value: checked[i],
                  ),
                  Text(
                    'Checkbox ${i + 1}',
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(color: i == 4 ? Colors.black38 : Colors.black),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
          ],
        ),
      ),
    );
  }
}
