import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String text = "";

  // inisialisasi controller dengan TextEditingController untuk text input
  final myController = TextEditingController();

  // Merubah variable text menjadi value dari myController
  changeText() {
    setState(() {
      // memanggil text dari myController
      text = myController.text;
      // menghapus value dari myController
      myController.clear();
    });
  }


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.



    @override
    void dispose() {
      // Menghentikan controller jika tidak digunakan
      myController.dispose();
      super.dispose();
    }

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Padding(
        // mengatur padding
        padding: const EdgeInsets.all(16.0),
        // child dengan Column
        child: Column(
          // childern dengan widget
          children: <Widget>[
            Padding(
              // mengatur padding
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              // child dengan TextField
              child: TextField(
                // menambahkan dekorasi dengan hint
                decoration: InputDecoration(
                  hintText: "Masukan text"
                ),
                // inisialisasi controller
                controller: myController,
              ),
            ),
            Padding(
              // mengatur padding
              padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
              // child dengan text
              child: Text(
                // value dari Text adalah variable text
                '$text'
              ),
            ),
            Padding(
              // mengatur padding
              padding: EdgeInsets.fromLTRB(40, 40, 40, 40),
              // child dengan RaisedButton
              child: RaisedButton(
                // mengatur ukuran button
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                // menambahkan event jika button dipencet
                onPressed: changeText,
                // text pada button
                child: Text("Update Text"),
              ),
            )
          ],
        )

      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
