import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_booksheelf/View/biblioteca.dart';
import 'package:my_booksheelf/View/cadastro.dart';
import 'package:my_booksheelf/View/cadastroLivro.dart';
import 'package:my_booksheelf/View/cadastroUsuario.dart';
import 'package:my_booksheelf/View/home.dart';

class MenuDrawer extends StatelessWidget {
  final String user = "Gustavo Carmo";
  final String email = "gustavocarmorc@gmail.com";
  final String profile = "img/profile.jpeg";

  Text mostrarTitulo(String texto) {
    return Text(
      texto,
      style: TextStyle(
        fontSize: 18
      )
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          // Foto e Informações do usuário
          new UserAccountsDrawerHeader(
            accountName: Text(user),
            accountEmail: Text(email),
            currentAccountPicture: CircleAvatar(
              child: ClipRRect(
                child: Image.asset(profile),
                borderRadius: BorderRadius.circular(50)
              ),
            )
          ),

          new ListTile(
            title: mostrarTitulo("Início"),
            subtitle: Text("Página Inicial"),
            trailing: FaIcon(FontAwesomeIcons.chevronRight),
            leading: FaIcon(
              FontAwesomeIcons.home,
              color: Colors.amber,
              size: 32,
            ),

            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => new Home()
                )
              );
            },
          ),

          new ListTile(
            title: mostrarTitulo("Usuário"),
            subtitle: Text("Cadastro de Usuário"),
            trailing: FaIcon(FontAwesomeIcons.chevronRight),
            leading: FaIcon(
              FontAwesomeIcons.user,
              color: Colors.blue.shade400,
              size: 32
            ),
            
            // Vai para a página Busca
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => new CadastroUsuario()
                )
              );
            }
          ),

          new ListTile(
            title: mostrarTitulo("Livro"),
            subtitle: Text("Cadastro de Livros"),
            trailing: FaIcon(FontAwesomeIcons.chevronRight),
            leading: FaIcon(
              FontAwesomeIcons.book,
              color: Colors.green.shade300,
              size: 32
            ),
            
            // Vai para a página Busca
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => new CadastroLivro()
                )
              );
            }
          ),

          new ListTile(
            title: mostrarTitulo("Biblioteca"),
            subtitle: Text("Sua Biblioteca"),
            trailing: FaIcon(FontAwesomeIcons.chevronRight),
            leading: FaIcon(
              FontAwesomeIcons.bookmark,
              color: Colors.red.shade300,
              size: 32
            ),
            
            // Vai para a página Busca
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => new Biblioteca()
                )
              );
            }
          )
        ],
      ),
    );
  }
}