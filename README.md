## flutter_hover_effect

A Flutter package that adds interactive hover and tilt effects to any widget, enhancing user experience with smooth and responsive animations.

## Features

Add hover/tilt effect to any widget quickly and simply with flutter_hover_effect

## Getting started

```
$ flutter pub add flutter_hover_effect
```
or add in your dependencies in `pubspec.yaml`  
```yaml
dependencies:
  flutter_hover_effect:
```

## Usage

Short example, for a more complex example go to the `/example` folder:  

```dart
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExamplePage(),
    );
  }
}

class ExamplePage extends StatelessWidget {
  ExamplePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff191d2d),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HoverEffect(
            widget: const Column(
              children: [
                Text(
                  'Flutter Hover Effect',
                  style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
```




