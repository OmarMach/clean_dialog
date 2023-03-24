import 'package:clean_dialog/clean_dialog.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Clean Dialog example app',
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => CleanDialog(
                    title: 'Success',
                    content: 'You have successfully updated your information.',
                    backgroundColor: const Color(0XFF27ae61),
                    titleTextStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    contentTextStyle:
                        const TextStyle(fontSize: 16, color: Colors.white),
                    actions: [
                      CleanDialogActionButtons(
                          actionTitle: 'Accept', onPressed: () {}),
                      CleanDialogActionButtons(
                        actionTitle: 'Cancel',
                        onPressed: () => Navigator.pop(context),
                        textColor: const Color(0XFFbe3a2c),
                      ),
                    ],
                  ),
                );
              },
              child: const Center(child: Text('First Example')),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => CleanDialog(
                    title: 'Error',
                    content: 'We were not able to update your information.',
                    backgroundColor: const Color(0XFFbe3a2c),
                    titleTextStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    contentTextStyle:
                        const TextStyle(fontSize: 16, color: Colors.white),
                    actions: [
                      CleanDialogActionButtons(
                        actionTitle: 'Cancel',
                        onPressed: () => Navigator.pop(context),
                      ),
                      CleanDialogActionButtons(
                        actionTitle: 'Try again',
                        textColor: const Color(0XFF27ae61),
                        onPressed: () {},
                      ),
                    ],
                  ),
                );
              },
              child: const Center(child: Text('Second Example')),
            ),
          ],
        ),
      ),
    );
  }
}
