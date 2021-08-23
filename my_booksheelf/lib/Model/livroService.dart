import 'package:my_booksheelf/Model/livro.dart';

class LivroService {

  void cadastrarLivro(Livro livro) {}

  List listarLivro() {
    // Cria a lista de livros
    List<Livro> livros = [
      Livro(
        id: 1,
        nome: "O Senhor dos Anéis",
        categoria: "Fantasia",
        faixaetaria: "+16",
        foto: "img/livro.jpg",
        sinopse: "Um jovem hobbit, vivia pacificamente em sua casa. mal sabia ele que o retorno de um velho amigo o levaria em uma jornada perigosa parada destruir um anél do mal"
      ),

      Livro(
        id: 2,
        nome: "Harry Potter",
        categoria: "Fantasia",
        faixaetaria: "+8",
        foto: "img/harry.jpg",
        sinopse: "Harry Potter vive com os tios Dursley, onde é mal tratado até completar seus 11 anos. É com essa idade que o jovem bruxo começa a receber cartas da escola de Hogwarts. ... Porém Voldemort falha em sua missão e foge de Harry que passa a pedra filosofal para o diretor da escola destruir-la."
      ),
      Livro(
        id: 3,
        nome: "Demon Slayer",
        categoria: "Aventura/Japonês",
        faixaetaria: "+16",
        foto: "img/kny.jpg",
        sinopse: "Após sua família ter sido brutalmente assassinada por um demônio e sua irmã transformada em um, Tanjiro irá fazer de tudo para ter sua irmã de volta ao normal"
      ),
      Livro(
        id: 4,
        nome: "Memórias Postumas",
        categoria: "Romance",
        faixaetaria: "+15",
        foto: "img/memoria.jpg",
        sinopse: "Após ter morrido, em pleno ano de 1869, Brás Cubas decide por narrar sua história e revisitar os fatos mais importantes de sua vida, a fim de se distrair na eternidade. A partir de então ele relembra de amigos como Quincas Borba, de sua displicente formação acadêmica em Portugal, dos amores de sua vida e ainda do privilégio que teve de nunca ter precisado trabalhar em sua vida."
      ),
    ];

    return livros;
  }
}