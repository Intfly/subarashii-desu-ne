import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF7F4D9D)),
        useMaterial3: true,
      ),
      home: const Menu(),
    );
  }
}

class Menu extends StatefulWidget {
  const Menu({
    super.key,
  });
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Row(
          children: [
            Row(
              children: [
                Container(
                  child: Image.asset(
                    "assets/logo/logo_main.png",
                    height: 80,
                  ),
                  margin: const EdgeInsets.only(top: 20, left: 50),
                ),
                const Text("Hello World")
              ],
            )
          ],
        )
      ]),
    );
  }
}
