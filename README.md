# smartfluttertoast

Flutter Toast

![image description](https://github.com/dheeraj-bhadoria/Smart-Flutter-Toast/blob/main/demo.png)

## Use this package as a library

## Run this command:

With Flutter:

```yaml
    $ flutter pub add smartfluttertoast
```

## This will add a line like this to your package's pubspec.yaml (and run an implicit flutter pub get):

```yaml
    dependencies:
    smartfluttertoast: ^0.0.5
```

Alternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.
Import it

Now in your Dart code, you can use:

```dart
    import 'package:smartfluttertoast/smartfluttertoast.dart';

    void main() {
      runApp(const MyApp());
    }
    
    class MyApp extends StatefulWidget {
      const MyApp({super.key});
    
      @override
      State<MyApp> createState() => _MyAppState();
    }
    
    class _MyAppState extends State<MyApp> {
      final _smartToaster = Smartfluttertoast();
    
      @override
      void initState() {
        super.initState();
      }
    
    
    
      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              title: const Text('Toast Example'),
            ),
            body: Center(
              child: InkWell(
                child: Text("Show Toast"),
                onTap: (){
                  _smartToaster.showToast('My custom message');
                },
              ),
            ),
          ),
        );
      }
    }

```

## LICENSE
MIT License

Copyright (c) 2022 Dheeraj Singh Bhadoria

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


