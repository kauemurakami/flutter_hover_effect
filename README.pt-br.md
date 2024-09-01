## flutter_hover_effect

Um pacote Flutter que adiciona efeitos interativos de foco e inclinação a qualquer widget, aprimorando a experiência do usuário com animações suaves e responsivas.

## Funcionalidades

Adicione o efeito hover/tilt em qualquer widget de maneira simples e rápida com flutter_hover_effect

## Instalação

```
$ flutter pub add flutter_hover_effect
```
ou adicione em suas `dependencies` em `pubspec.yaml`  
```yaml
dependencies:
  flutter_hover_effect:
```

## Usando

Exemplo curto, para um exemplo mais complexo acesse a pasta `/example`:  

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


