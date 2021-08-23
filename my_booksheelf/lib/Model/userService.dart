import 'package:my_booksheelf/Model/user.dart';

class userService{

  void cadastrarUser(User user) {}

  List listaruser() {
    // Cria a lista de users
    List<User> users = [
      User(
        id: 1,
        nome: "Carmo",
        email: "gustavocarmorc@gmail.com",
        senha: "12345678"
      ),

      User(
        id: 2,
        nome: "Darski",
        email: "darski@gmail.com",
        senha: "87654321"
      ),

      User(
        id: 3,
        nome: "Bernardo",
        email: "pipzera@gmail.com",
        senha: "10101121"
      ),
    ];

    return users;
  }
}