import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      darkTheme: ThemeData.dark(),
      theme: ThemeData.light(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AI3"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Column(
                children: [
                  Text(
                    "El contador vale",
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(height: 50),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(Icons.do_not_disturb_on),
                  color: Colors.redAccent,
                  onPressed: () {
                    if (contador < 1) {
                    } else {
                      setState(() {
                        contador--;
                      });
                    }
                    ;
                  },
                ),
                Text(
                  "$contador",
                  style: TextStyle(fontSize: 50),
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  color: Colors.lightBlue,
                  onPressed: () {
                    if (contador > 49) {
                    } else {
                      setState(() {
                        contador++;
                      });
                    }
                    ;
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}