import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

    var arrColors = [
    Colors.tealAccent,
    Colors.limeAccent,
    Colors.brown,
    Colors.pinkAccent,
    Colors.lightBlue,
    Colors.lightGreen,
    Colors.deepPurpleAccent,
    Colors.pink,
    Colors.yellow,
    Colors.black,
    Colors.white,
    Colors.black26,];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      // body: GridView.builder(
      //   itemBuilder: (context, index) {
      //     return Container(
      //       color: arrColors[index],
      //     );
      //   },
      //   itemCount: arrColors.length,
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //       crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
      // ),






      // body: GridView.count(
      //   crossAxisCount: 3,
      //   crossAxisSpacing: 10,
      //   mainAxisSpacing: 10,
      //   children: [
      //     Container(
      //       color: Colors.brown,
      //     ),
      //     Container(
      //       color: Colors.white,
      //     ),
      //     Container(
      //       color: Colors.greenAccent,
      //     ),
      //     Container(
      //       color: Colors.pink,
      //     ),
      //     Container(
      //       color: Colors.blueAccent
      //     ),
      //     Container(
      //       color: Colors.deepPurpleAccent,
      //     ),
      //     Container(
      //       color: Colors.limeAccent,
      //     ),
      //     Container(
      //       color: Colors.tealAccent,
      //     ),
      //   ],
      // ),

      body :GridView.extent(
        maxCrossAxisExtent: 50,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          Container(
            color: arrColors[0]
          ),
          Container(
              color: arrColors[1]
          ),
          Container(
              color: arrColors[2]
          ),
          Container(
              color: arrColors[3]
          ),
          Container(
              color: arrColors[4]
          ),
          Container(
              color: arrColors[5]
          ),
          Container(
              color: arrColors[6]
          ),
          Container(
              color: arrColors[7]
          ),
        ],
      ),
    );
  }
}
