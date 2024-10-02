
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Animationss extends StatefulWidget {
  const Animationss ({super.key});

  @override
  State<Animationss> createState() => _State();
}

class _State extends State<Animationss> {

  Color _color = Colors.black;
  double _margin=0;
  double _Width = 200;
  double _opacity =1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(color: _color,
        duration: Duration(seconds: 3),
      margin: EdgeInsets.all( _margin),
      width: _Width,
        child: Column( crossAxisAlignment: CrossAxisAlignment.center,
          children:<Widget>
             [ ElevatedButton( child: Text("Nora"),
            onPressed: () => setState(() =>  _margin = 50)),
            ElevatedButton( child: Text("Nora"),
          onPressed: () => setState(() => _color = Colors.amber)),
             ElevatedButton(onPressed: () =>setState(() =>(_Width = 400) ),
                 child: Text("nada")),
      ElevatedButton( child: Text("noha"),
              onPressed: () => setState(() =>(_color = Colors.amber)),
              ),
            ElevatedButton( child: Text("opacity"),
              onPressed: () => setState(() =>(_opacity = 0)),
            ),
             AnimatedOpacity(opacity: _opacity,
                 duration: Duration(seconds: 1),
                 child: Text('hide me',style: TextStyle(fontSize: 30,color: Colors.amber),))
             // child: child)

          ],
        ),
      ),
    );
  }
}
