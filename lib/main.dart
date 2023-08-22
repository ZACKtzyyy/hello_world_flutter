import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

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
        home: const HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var nameEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink,
        appBar: AppBar(
            title: const Text("Hello World"), backgroundColor: Colors.yellow[300]),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Column(
              children: [
                Text(
                  "Welcome to my app",
                  style: GoogleFonts.racingSansOne(
                    textStyle: const TextStyle(color: Colors.yellow, fontSize: 50),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text("I want you to know"),
                const SizedBox(
                  height: 10,
                ),
                const Text("Nice"),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("This is left"),
                    Text("This is right"),
                  ],
                ),
                Image.network(
                    "https://www.wheninmanila.com/wp-content/uploads/2019/04/Naruto-Theme-Park-header.jpg"),
                const SizedBox(
                  height: 5,
                ),
                Image.network(
                    "https://s3.narvii.com/image/c26us2eeym3x6ak62auray2eik7tryma_hq.jpg"),
                Image.network(
                    "https://i.pinimg.com/originals/01/41/61/0141613806a4c8c73d0d1953a0e86953.jpg"),
                Image.asset("images/kick_drum.png"),
                TextField(decoration:const InputDecoration(hintText: ("Enter your name: ")),
                  controller: nameEditingController,),
                TextButton(
                    onPressed: () {
                      Fluttertoast.showToast(
                          msg: "Hello World Broo ${nameEditingController.text} Woii",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    },
                    child: const Text("TKN ah"))
              ],
            )),
          ),
        ));
  }
}
