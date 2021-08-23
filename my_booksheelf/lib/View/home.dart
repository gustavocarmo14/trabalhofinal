import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_booksheelf/View/cadastro.dart';
import 'package:my_booksheelf/View/recursos/barraSuperior.dart';
import 'package:my_booksheelf/View/recursos/menu.dart';

class Home extends StatefulWidget {
  @override
  State createState() => new HomeState();
}

class HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new BarraSuperior(),

      backgroundColor: Colors.black,

      drawer: new MenuDrawer(),

      body: SingleChildScrollView(
        child: Column(
          children: [
            new Container(
              height: 520,
              color: Colors.grey.shade100,
            ),
            
            Builder(
              builder: (BuildContext context){
                return ElevatedButton(
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    width: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        new Text(
                          "CADASTRAR",
                          style: new TextStyle(
                            color: Colors.white,  
                            fontSize: 24,                 
                          ),
                        ),
                      ],
                    ),
                  ),

                  style: ElevatedButton.styleFrom(
                    primary: Colors.black
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => new Cadastro()
                      )
                    );
                  }
                );
              }
            
            ),
          ],
        ),
      ),
    );
  }
}