import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_booksheelf/View/recursos/barraSuperior.dart';
import 'package:my_booksheelf/View/recursos/menu.dart';
import 'package:my_booksheelf/Model/livro.dart';
import 'package:my_booksheelf/Model/livroService.dart';

class Biblioteca extends StatefulWidget{
  @override
  State createState() => new BibliotecaState();
  
}

class BibliotecaState extends State<Biblioteca>{
  LivroService service = new LivroService();

  final String fundo = "img/base.jpeg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new BarraSuperior(),

      drawer: new MenuDrawer(),

      body: new ListView.builder(
        padding: EdgeInsets.fromLTRB(8, 8, 8, 75),
        itemCount: service.listarLivro().length,
        itemBuilder: (BuildContext context, int index){
          Livro livro = service.listarLivro().elementAt(index);

          return Container(

            color: Colors.grey.shade800,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 5),

            child: ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                new ClipRRect(
                  child: Image.asset(
                    livro.foto,
                    width: 75,
                    height: 100,
                    fit: BoxFit.cover
                  )
                ),

                  new Column(
                    children: [

                      new Text(
                        livro.nome,
                        style: TextStyle(
                          fontSize: 24
                        ),
                      ),

                      SizedBox(height: 10),

                      new Text(
                        livro.categoria + "  " + livro.faixaetaria
                      ),
                    ],
                  ),

                  SizedBox(width: 15)
                ],
              ),

              trailing: IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.chevronRight,
                  color: Colors.grey,
                  size: 32,
                ),

                onPressed: () {
                  /*Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => new Perfil(id: contato.id)
                    )
                  );*/
                }
              )
            ),
          );
        }
      ),
    );
  }
}