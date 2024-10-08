import 'package:flutter/material.dart';
import 'package:flutter_hover_effect/flutter_hover_effect.dart';

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('This a card example'),
                        Text('Using hover effect'),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Like this package'),
                        Text('Like the repo'),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 56.0,
          ),
          HoverEffect(
              padding: EdgeInsets.zero,
              boxShadowColor: Colors.purple,
              boxShadowBlurRadius: 16.0,
              amplitude: .5,
              returnOriginalPosition: false,
              height: 200,
              width: 200,
              backgroundColor: Colors.transparent,
              shape: BoxShape.circle,
              widget: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://picsum.photos/250?image=9',
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
