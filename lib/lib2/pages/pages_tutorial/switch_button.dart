import 'package:flutter/material.dart';

class SwitchButton extends StatefulWidget {
  SwitchButton({super.key});

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool statusSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch Button'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.grey,
              height: 100,
              width: 200,
              child: Switch(
                value: statusSwitch,
                activeColor: Colors.orange,
              
                inactiveThumbColor: Colors.black,
                inactiveTrackColor: Colors.grey,
              
                activeThumbImage: AssetImage("images/google.png"),
                inactiveThumbImage: AssetImage("images/google.png"),
                onChanged: (value) {
                  setState(() {
                    statusSwitch = !statusSwitch;
                  });
                },
              ),
            ),
            SizedBox(height: 20),
            Text(
              statusSwitch ? 'Switch ON' : 'Switch OFF',
              style: TextStyle(fontSize: 20),
            ),
          ]
        ),
      ),
    );
  }
}