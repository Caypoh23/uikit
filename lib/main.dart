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
      themeMode: ThemeMode.light,
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
            // uikit.Button(
            // count: 8,
            //   text: 'Оплатить',
            //   onTap: _incrementCounter,
            //   subtext: 'Subtext',
            //   iconStart: const Icon(
            //     Icons.refresh_rounded,
            //     color: Colors.white,
            //   ),
            //   iconEnd: const Icon(
            //     Icons.arrow_forward_ios,
            //     color: Colors.white,
            //   ),
            // ),
            // uikit.ButtonCell(
            //   direction: Axis.vertical,
            //   primaryText: 'Primary',
            //   onPrimaryTap: () {},
            //   secondaryText: 'Secondary',
            //   onSecondaryTap: () {},
            //   tertiaryText: 'Cancel',
            //   onTertiaryTap: () {},
            //   captionText:
            //       'By clicking on the button, you agree to process your data and the "Public Offer"',
            //   captionHighlight: '"Public Offer"',
            //   onCaptionTap: () {},
            //   anchorTitle: 'Text at the Top of the button',
            //   anchorIcon: const Icon(Icons.chevron_right),
            //   informativeTitle: 'Informative',
            //   informativeIcon: const Icon(
            //     Icons.info_outline,
            //     color: Colors.white,
            //   ),
            // ),
            // uikit.Accordion(
            //   title: const Text('Title'),
            //   content: const Text('Content'),
            // ),
            // const Text(
            //   'You have pushed the button this many times:',
            // ),
            // Text(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.headlineMedium,
            // ),
          ],
        ),
      ),
    );
  }
}
