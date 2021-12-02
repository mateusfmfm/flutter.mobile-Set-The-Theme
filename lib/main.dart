import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:setthetheme/environment/app.dart';
import 'package:setthetheme/widgets/stylized_flutter_logo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Set the Theme - A White Label APP'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    App app = App.of(context);

    return Scaffold(
      backgroundColor: app.colors!.background,
      appBar: AppBar(
        backgroundColor: app.colors!.primary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          width: Get.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              StylizedFlutterLogo(colorFilter: app.colors!.colorFilter!),
              const SizedBox(height: 24),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text:
                      'Welcome to the Set The Theme app! \nOn this project, we build a very simple app setting the colors and assets with the --flavor command on terminal.\n\n',
                  style: TextStyle(fontSize: 14, color: app.colors!.text),
                  children: <InlineSpan>[
                    const TextSpan(text: 'On this one, you choose the '),
                    TextSpan(
                      text: app.strings!.appName + ".",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: app.colors!.primary!),
                    ),
                    const TextSpan(
                        text:
                            ' All the colors are defined by the color resource. The asset above the counter${"'"}s container is randomly choose for each color.'),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              GestureDetector(
                onTap: () {
                  _resetCounter();
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: app.colors!.container,
                      border: Border.all(color: app.colors!.primary!),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        const Text(
                          'You have pushed the button this many times:',
                        ),
                        Text(
                          '$_counter',
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        const Text(
                          'Press this container to reset the counter.',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 48),
              SvgPicture.asset(
                app.assets.svg,
                height: 80,
                color: app.colors!.primary,
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: app.colors!.primary,
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
