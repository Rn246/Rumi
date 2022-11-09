import 'package:flutter/material.dart';
import 'dart:ui';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, routes: {
      /*"/": (context) => BackgroundGradient(),*/
      //debugShowCheckedModeBanner: false,
      "/": (context) => MoviePage(),
      //"Category page": (context) => MoviePage(),
    });
  }
}

//import 'package:flutter/widgets/CustomNavBar.dart';

class MoviePage extends StatelessWidget {
  int _currentIndex = 0;
  List<Widget> body = const [
    Icon(Icons.home_filled),
    Icon(Icons.chat_bubble_outline),
    Icon(Icons.play_arrow_rounded),
    Icon(Icons.favorite),
    Icon(Icons.search_rounded)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundGradient(),
          
          SingleChildScrollView(
              child: SafeArea(
                  child: Column(
            children: [
              Opacity(
            opacity: 1.0,
            child: Stack(
              children: [
                Container(
                  child: Image.asset(
                    "assets/SasL.jpg",
                    height: 210,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
            alignment: Alignment.topLeft,
            child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        ),
          ),
              ],
            ),
          ),
          
           /*   Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),*/
              //SizedBox(height: 110),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sempre Ao Seu Lado",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 27,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 15),
                      Infoline(),
                      SizedBox(height: 15),
                      Text(
                        "Um professor universitário encontra na estação de trem um filhote de cachorro da raça Akita, conhecida por sua lealdade. O cão passa a acompanhá-lo até a estação de trem e esperar sua volta. Até que um acontecimento inesperado altera sua vida.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(height: 10),
                      MoviePageButtons(),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Onde assistir",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      WatchButtons(),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Assistir ao trailer",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Trailers(),
                      SizedBox(
                        height: 45,
                      ),
                      Text(
                        "Avaliações",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                      RatingBar(),
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(15.0),
                            primary: Color.fromARGB(255, 97, 5, 158),
                            fixedSize: Size(
                              MediaQuery.of(context).size.width * 0.900,
                              50,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Comentários",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ))
                    ],
                  )),
            ],
          ))),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF000000),
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Color.fromARGB(255, 163, 163, 163),
        selectedItemColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Início',
            icon: ImageIcon(
              AssetImage("assets/home512.png"),
            ),
            activeIcon: ImageIcon(
              AssetImage('assets/home512cheio.png'),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Chat',
            icon: ImageIcon(
              AssetImage("assets/chat512.png"),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Feed',
            icon: ImageIcon(
              AssetImage("assets/lumi_icon.png"),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Favoritos',
            icon: ImageIcon(
              AssetImage("assets/heart512.png"),
            ),
            activeIcon: ImageIcon(
              AssetImage('assets/heart512cheio.png'),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Buscar',
            icon: ImageIcon(
              AssetImage("assets/lupa512.png"),
            ),
            //activeIcon: ImageIcon(AssetImage('assets/lupa512forte.png'),),
          )
        ],
      ),
    );
  }

  //void setState(Null Function() param0) {}
}

void setState(Null Function() param0) {}

class MoviePageButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Container(
              child: Icon(Icons.check, color: Colors.white, size: 50),
            ),
            Text(
              "Minha lista",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 60,
        ),
        Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Icon(Icons.thumb_up, color: Colors.white, size: 35),
            ),
            Text(
              "Avaliar",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 60,
        ),
        Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: ImageIcon(
                color: Colors.white,
                AssetImage(
                  "assets/send.png",
                ),
                size: 35,
              ),
            ),
            Text(
              "Compartilhar",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class Infoline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Text(
            "97% relevante",
            style: TextStyle(
              color: Colors.green,
              fontSize: 14,
            ),
          ),
        ),
        SizedBox(
          width: 25,
        ),
        Container(
          child: Text(
            "2009",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
        SizedBox(
          width: 25,
        ),
        Container(
          child: Text(
            "Drama",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}

class BackgroundGradient extends StatelessWidget {
  const BackgroundGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff220037),
                Colors.black,
              ],
              tileMode: TileMode.mirror,
            ),
          ),
          child: Stack(
            children: [
              /* Positioned(
                top: 88,
                left: -125,
                child: Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xff5500ff).withOpacity(0.5),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 200,
                      sigmaY: 200,
                    ),
                    child: Container(
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}

class WatchButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /*ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(15.0),
            primary: Color.fromARGB(255, 59, 59, 59),
            fixedSize: Size( MediaQuery.of(context).size.width * 0.425,50,),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
          onPressed: () {},
          child: RichText(
            
            ),
          
        ),*/

        FloatingActionButton.extended(
          label: Text('PRIME VIDEO'),
          backgroundColor: Colors.grey,
          icon: ImageIcon(
            AssetImage("assets/play-button.png"),
          ),
          onPressed: () {},
        ),
        SizedBox(
          width: 60,
        ),
        FloatingActionButton.extended(
          label: Text('GLOBOPLAY'),
          backgroundColor: Colors.red,
          icon: ImageIcon(
            AssetImage("assets/play-button.png"),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}

class Trailers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          alignment: Alignment.bottomLeft,
          height: 75,
          child: Image.asset(
            "assets/SasL.JPG",
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          bottom: 28,
          left: 56,
          child: ImageIcon(
            size: 30,
            color: Colors.white,
            AssetImage("assets/play-button.png"),
          ),
        )
      ],
    );
  }
}

class RatingBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          size: 12,
          Icons.star,
          color: Colors.amber,
        ),
        SizedBox(
          width: 3,
        ),
        Icon(
          size: 12,
          Icons.star,
          color: Colors.amber,
        ),
        SizedBox(
          width: 3,
        ),
        Icon(
          size: 12,
          Icons.star,
          color: Colors.amber,
        ),
        SizedBox(
          width: 3,
        ),
        Icon(
          size: 12,
          Icons.star,
          color: Colors.amber,
        ),
        SizedBox(
          width: 3,
        ),
        Icon(
          size: 12,
          Icons.star_half,
          color: Colors.amber,
        ),
        SizedBox(
          width: 3,
        ),
        Text(
          "1.6 mil",
          style: TextStyle(
            color: Colors.white,
            fontSize: 13,
          ),
        )
      ],
    );
  }
}
