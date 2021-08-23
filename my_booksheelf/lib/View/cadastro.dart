import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_booksheelf/View/cadastroLivro.dart';
import 'package:my_booksheelf/View/cadastroUsuario.dart';
import 'package:my_booksheelf/View/recursos/barraSuperior.dart';
import 'package:my_booksheelf/View/recursos/menu.dart';

class Cadastro extends StatefulWidget{
  @override
  State createState() => new CadastroState();
}

class CadastroState extends State<Cadastro>{

  final String fundo = "img/base.jpeg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new BarraSuperior(),

      drawer: new MenuDrawer(),

      body: SingleChildScrollView(
        child: Column(
          children: [
            new Container(
              height: 590,
              width: 500,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(fundo),
                  fit: BoxFit.cover
                )
              ),
              child: Column(

                children: [
                  SizedBox(height: 30),

                  FaIcon(
                    FontAwesomeIcons.bookOpen,
                    color: Color.fromRGBO(231, 231, 231, 1),
                    size: 120,
                  ),

                  Text(
                    "CADASTRAR :",
                    style: TextStyle(
                      fontSize: 32,
                      shadows: [
                        Shadow(
                           offset: Offset(-1, -1),
                            color: Colors.black
                        ),
                        Shadow(
                           offset: Offset(1, -1),
                            color: Colors.black
                        ),
                        Shadow(
                           offset: Offset(1, 1),
                            color: Colors.black
                        ),
                        Shadow(
                           offset: Offset(-1, 1),
                            color: Colors.black
                        ),
                      ],
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 15),

                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new Builder(
                        builder: (BuildContext context){
                          return ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(224, 224, 224, 100),
                              
                            ),
                            child: Container(
                              width: 250,
                              height: 50,
                              alignment: Alignment.center,
                              child: Text(
                                "USUÁRIO",
                                style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,

                                  shadows: [
                                    Shadow(
                                      offset: Offset(-1, -1),
                                      color: Colors.white
                                    ),
                                    Shadow(
                                      offset: Offset(1, -1),
                                      color: Colors.white
                                    ),
                                    Shadow(
                                      offset: Offset(1, 1),
                                      color: Colors.white
                                    ),
                                    Shadow(
                                      offset: Offset(-1, 1),
                                      color: Colors.white
                                    ),
                                  ]
                                ),
                              ),
                            ),

                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => new CadastroUsuario()
                                )
                              ); 
                            }
                          );
                        }
                      )
                    ],
                  ),

                  SizedBox(height: 15),

                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new Builder(
                        builder: (BuildContext context){
                          return ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(224, 224, 224, 100),
                              
                            ),
                            child: Container(
                              width: 250,
                              height: 50,
                              alignment: Alignment.center,
                              child: Text(
                                "LIVRO",
                                style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,

                                  shadows: [
                                    Shadow(
                                      offset: Offset(-1, -1),
                                      color: Colors.white
                                    ),
                                    Shadow(
                                      offset: Offset(1, -1),
                                      color: Colors.white
                                    ),
                                    Shadow(
                                      offset: Offset(1, 1),
                                      color: Colors.white
                                    ),
                                    Shadow(
                                      offset: Offset(-1, 1),
                                      color: Colors.white
                                    ),
                                  ]
                                ),
                              ),
                            ),

                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => new CadastroLivro()
                                )
                              ); 
                            }
                          );
                        }
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}