A Flutter package that creates a clean and minimalist dialog Supports null-safety and Flutter 3

## Features

- Customizable
- Lightweight 

## Usage

Sample Alert
```dart
showDialog(
    context: context,
    builder: (context) => CleanDialog(
    title: 'Error',
    content: 'We were not able to update your information.',
    backgroundColor: const Color(0XFFbe3a2c),
    titleTextStyle: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
    contentTextStyle: const TextStyle(fontSize: 16, color: Colors.white),
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
```
Output

![Example 1](https://github.com/OmarMach/clean_dialog/doc/exp.jpg?raw=true)
![Example 2](https://github.com/OmarMach/clean_dialog/doc/exp2.jpg?raw=true)


