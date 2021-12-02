import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:setthetheme/environment/app.dart';
import 'package:setthetheme/modules/home/home_controller.dart';
import 'package:setthetheme/modules/widgets/stylized_flutter_logo.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    App app = App.of(context);

    return GetX<HomeController>(
      builder: (_controller) => Scaffold(
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
                    homeController.resetCounter();
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
                            '${homeController.counter}',
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
          onPressed: () => homeController.incrementCounter(),
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
