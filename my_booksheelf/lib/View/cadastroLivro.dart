import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_booksheelf/View/recursos/barraSuperior.dart';
import 'package:my_booksheelf/View/recursos/menu.dart';

class CadastroLivro extends StatefulWidget{
  @override
  State createState() => new CadastroState();
}

class CadastroState extends State<CadastroLivro>{

  final String fundo = "img/base.jpeg";
  final titulo = TextEditingController();
  final categoria = TextEditingController();
  final faixaetaria = TextEditingController();
  final sinopse = TextEditingController();

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
                    "LIVRO",
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

                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                    margin: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(255, 255, 255, 300)
                  ),
                   child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                      new Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(bottom: 15),
                      ),


                        campoInput("Título:", titulo),
                        campoInput("Categoria:", categoria),
                        campoInput("Faixa Etária:", faixaetaria),
                        campoInput("Sinopse:", sinopse),

                        new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Builder(
                              builder: (BuildContext context){
                                return ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                primary: Colors.grey.shade300,
                            ),
                              child: Container(
                                width: 220,
                                height: 45,
                                alignment: Alignment.center,
                                  child: Text(
                                    "INICIAR",
                                    style: TextStyle(
                                      fontSize: 28,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                onPressed: (){

                                },
                                );
                              }
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container campoInput(String nomeCampo, TextEditingController controlador) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: TextField(
        // Atributo que recebe o valor do campo
        controller: controlador,

        decoration: InputDecoration(
          labelText: nomeCampo,
          labelStyle: TextStyle(
            color: Colors.black,
            fontSize: 18
          ),

          // Borda do Input
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white)
          ),

          // Borda selecionada
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black)
          )
        )
      )
    );
  }
}