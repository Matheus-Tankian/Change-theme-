import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(

        body:App(),
      ),
    );
  }
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  bool isButton = false;//day

  void funButton(){
    setState(() {
      isButton = !isButton;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Day and Night',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: (isButton? Colors.blueAccent: Colors.blueGrey[900] )
      ),

      backgroundColor: (isButton? Colors.white10 : Colors.blueGrey[800] ),

      body: Align(
        alignment: Alignment.bottomRight,

        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              MaterialButton(
                onPressed: (){
                  funButton();
                },
                padding: const EdgeInsets.fromLTRB(29.0, 12.0, 29.0, 12.0),
                shape: const StadiumBorder(),
                textColor: (isButton? Colors.white: Colors.black),
                color: (isButton? Colors.blue[800]:Colors.cyanAccent[100]),
                splashColor: Colors.blue[100],
                disabledColor: Colors.grey,
                disabledTextColor: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Icon(Icons.wb_sunny),
                    Text(
                      (isButton?'  Day':'  Night'),
                      style: TextStyle(
                        fontSize: 17,
                        // color: (isButton? Colors.white: Colors.black),
                      ),
                    ),

                  ],
                ),

              ),
            ],
          ),
        ),
      ),

    );
  }
}
