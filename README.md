A Flutter package that creates a clean and minimalist dialog Supports null-safety and Flutter 3

## Features

- Customizable
- Lightweight 

## Getting started 

- Install the package through this command 

```bash 
flutter pub get clean_dialog
```

- Import the package inside the file you desire to include the dialog.

```dart 
import 'package:clean_dialog/clean_dialog.dart';
```

- Add this line to the onPress function of the desired Button or gesture detector.

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
##  Output

<img src="https://github.com/OmarMach/clean_dialog/raw/main/doc/exp.png" width="400" alt="Example 1">
<img src="https://github.com/OmarMach/clean_dialog/raw/main/doc/exp2.png" width="400" alt="Example 2">



