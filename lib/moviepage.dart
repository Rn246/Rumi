/*import 'package:flutter/material.dart';
//import 'package:flutter/widgets/CustomNavBar.dart';

class MoviePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1F1545),
      body: Stack(
        children: [
          Opacity(
            opacity: 0.4,
            child: Image.asset(
              "images/cover.jpg",
              height: 280,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
              child: SafeArea(
                  child: Column(
            children: [
              Padding(
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
              ),
              SizedBox(height: 60),
              /*Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20)
                    )
                  )
                ],
              ),
             )*/
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sempre Ao Seu Lado",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Um professor universitário encontra na estação de trem um filhote de cachorro da raça Akita, conhecida por sua lealdade. O cão passa a acompanhá-lo até a estação de trem e esperar sua volta. Até que um acontecimento inesperado altera sua vida.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ))
            ],
          ))),
        ],
      ),
      //bottomNavigationBar: CustomNavBar(),
    );
  }
}




import 'package:flutter/material.dart';
import 'dart:ui';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
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
          Opacity(
            opacity: 0.4,
            child: Image.asset(
              "assets/SasL.jpg",
              height: 280,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
              child: SafeArea(
                  child: Column(
            children: [
              Padding(
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
              ),
              SizedBox(height: 60),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
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
                    ],
                  )),

            ],
          ))),
        ],
      ),


      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff220037),
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
            icon: Icon(Icons.home_filled),
          ),
          BottomNavigationBarItem(
            label: 'Chat',
            icon: Icon(Icons.chat_bubble_outline),
          ),
          BottomNavigationBarItem(
            label: 'Feed',
            icon: Icon(Icons.play_arrow_rounded),
          ),
          BottomNavigationBarItem(
            label: 'Favoritos',
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: 'Buscar',
            icon: Icon(Icons.search_rounded),
          )
        ],
      ),
    );
  }

  void setState(Null Function() param0) {}
}

class MoviePageButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Icon(Icons.check, color: Colors.white, size: 35),
        ),
        SizedBox(
          width: 100,
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Icon(Icons.thumb_up, color: Colors.white, size: 35),
        ),
        SizedBox(
          width: 100,
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Icon(Icons.share, color: Colors.white, size: 35),
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
              Positioned(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

name: rumi
description: A new Flutter project.

# The following line prevents the package from being accidentally published to
# pub.dev using `flutter pub publish`. This is preferred for private packages.
publish_to: 'none' # Remove this line if you wish to publish to pub.dev

# The following defines the version and build number for your application.
# A version number is three numbers separated by dots, like 1.2.43
# followed by an optional build number separated by a +.
# Both the version and the builder number may be overridden in flutter
# build by specifying --build-name and --build-number, respectively.
# In Android, build-name is used as versionName while build-number used as versionCode.
# Read more about Android versioning at https://developer.android.com/studio/publish/versioning
# In iOS, build-name is used as CFBundleShortVersionString while build-number is used as CFBundleVersion.
# Read more about iOS versioning at
# https://developer.apple.com/library/archive/documentation/General/Reference/InfoPlistKeyReference/Articles/CoreFoundationKeys.html
# In Windows, build-name is used as the major, minor, and patch parts
# of the product and file versions while build-number is used as the build suffix.
version: 1.0.0+1

environment:
  sdk: '>=2.18.1 <3.0.0'

# Dependencies specify other packages that your package needs in order to work.
# To automatically upgrade your package dependencies to the latest versions
# consider running `flutter pub upgrade --major-versions`. Alternatively,
# dependencies can be manually updated by changing the version numbers below to
# the latest version available on pub.dev. To see which dependencies have newer
# versions available, run `flutter pub outdated`.
dependencies:
  flutter:
    sdk: flutter


  # The following adds the Cupertino Icons font to your application.
  # Use with the CupertinoIcons class for iOS style icons.
  cupertino_icons: ^1.0.2

dev_dependencies:
  flutter_test:
    sdk: flutter

  # The "flutter_lints" package below contains a set of recommended lints to
  # encourage good coding practices. The lint set provided by the package is
  # activated in the `analysis_options.yaml` file located at the root of your
  # package. See that file for information about deactivating specific lint
  # rules and activating additional ones.
  flutter_lints: ^2.0.0

# For information on the generic Dart part of this file, see the
# following page: https://dart.dev/tools/pub/pubspec

# The following section is specific to Flutter packages.
flutter:

  # The following line ensures that the Material Icons font is
  # included with your application, so that you can use the icons in
  # the material Icons class.
  uses-material-design: true

  # To add assets to your application, add an assets section, like this:
 #assets:
     #- assets/
  #   - images/a_dot_burr.jpeg
  #   - images/a_dot_ham.jpeg

  # An image asset can refer to one or more resolution-specific "variants", see
  # https://flutter.dev/assets-and-images/#resolution-aware

  # For details regarding adding assets from package dependencies, see
  # https://flutter.dev/assets-and-images/#from-packages

  # To add custom fonts to your application, add a fonts section here,
  # in this "flutter" section. Each entry in this list should have a
  # "family" key with the font family name, and a "fonts" key with a
  # list giving the asset and other descriptors for the font. For
  # example:
  # fonts:
  #   - family: Schyler
  #     fonts:
  #       - asset: fonts/Schyler-Regular.ttf
  #       - asset: fonts/Schyler-Italic.ttf
  #         style: italic
  #   - family: Trajan Pro
  #     fonts:
  #       - asset: fonts/TrajanPro.ttf
  #       - asset: fonts/TrajanPro_Bold.ttf
  #         weight: 700
  #
  # For details regarding fonts from package dependencies,
  # see https://flutter.dev/custom-fonts/#from-packages




*/