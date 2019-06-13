# flutter_read_more_text

![flutter_read_more](https://user-images.githubusercontent.com/14943106/59435621-5471fc80-8dee-11e9-87ca-0cc43dcd8a26.gif)

### Installation

Add `flutter_read_more_text` to your `pubspec.yamlfile`.

### Usage

```dart
import 'package:flutter/material.dart';
import 'package:flutter_read_more_text/flutter_read_more_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
      
    final text = 'What is Lorem Ipsum?\nLorem Ipsum is simply dummy 
    text of the printing and typesetting industry.
    Lorem Ipsum has been the industry standard dummy text ever since the 1500s,
    when an unknown printer took a galley
    of type and scrambled it to make a type specimen book. 
    It has survived not only five centuries, but also the leap
    into electronic typesetting, remaining essentially unchanged.
    It was popularised in the 1960s with the release of 
    Letraset sheets containing Lorem Ipsum passages, 
    and more recently with desktop publishing software like Aldus 
    PageMaker including versions of Lorem Ipsum';

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Your app'),
        ),
        body: ReadMoreText(text),
      ),
    );
  }
}
```
