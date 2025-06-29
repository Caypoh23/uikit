// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:im_uikit/uikit.dart' as uikit;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: uikit.lightTheme,
      darkTheme: uikit.darkTheme,
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            uikit.Button(
              text: 'Open Buttons Example',
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const uikit.ButtonsExamplePage(),
                  ),
                );
              },
              iconEnd: Icon(
                Icons.arrow_forward_ios,
                color: Theme.of(context).brightness == Brightness.light
                    ? Colors.white
                    : Colors.black,
              ),
            ),
            const SizedBox(height: 16),
            uikit.Button(
              text: 'Open ButtonCell Example',
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const uikit.ButtonCellExamplePage(),
                  ),
                );
              },
              type: uikit.ButtonType.secondary,
              iconEnd: Icon(
                Icons.arrow_forward_ios,
                color: Theme.of(context).brightness == Brightness.light
                    ? Colors.white
                    : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
