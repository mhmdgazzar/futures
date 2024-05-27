import 'dart:async';

import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var txt = 'Go!';

  delayedButton() {
    txt = (txt == 'Go!' ? txt * 3 : 'Go!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              txt,
              style: const TextStyle(fontSize: 32),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () async {
                await Future.delayed(const Duration(seconds: 2));
                setState(() {
                  delayedButton();
                });
              },
              child: const Text(
                'Text ändern',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
