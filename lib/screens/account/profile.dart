import 'package:flutter/material.dart';
import 'dart:math' as math;

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}
class _ProfileState extends State<Profile>{
  int _currentIndex = 0;

  get children => null;
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator ProfilWidget - FRAME
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    const SizedBox(
    height: 40,
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    IconButton(
    onPressed: () {},
    icon: const Icon(Icons.arrow_back),
    ),
    Text(
    "Profile",
    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
    fontWeight: FontWeight.bold,
    color: Theme.of(context).colorScheme.primary,
    ),
    ),
    Image.asset(
    "assets/images/splash.png",
    width: 35,
    ),
    ],
    ),
    const SizedBox(height: 20),
    Text(
    "Votre Profil : 0 élément",
    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
    fontWeight: FontWeight.bold,
    ),
    ),
        Container(
        width: 360,
        height: 650,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              top: 103,
              left: 24,
              child: Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(196, 196, 196, 1),
                    image: DecorationImage(
                        image: AssetImage('assets/images/Avatar.png'),
                        fit: BoxFit.fitWidth),
                    borderRadius: BorderRadius.all(Radius.elliptical(90, 90)),
                  ))),
          Positioned(
              top: 121,
              left: 125,
              child: Text(
                ' David Philips',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(1, 2, 5, 1),
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                    letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.55),
              )),

          Icon(
            Icons.change_circle_outlined,
            color: Colors.green,
            size: 30.0,
          ),

          Positioned(
            top: 231,
            left: 75,
            child: Text(
              'Modifier le profil',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'Montserrat',
                  fontSize: 16,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1),
            ),
          ),

          Icon(
            Icons.password,
            color: Colors.green,
            size: 30.0,
          ),

          Positioned(
              top: 278,
              left: 75,
              child: Text(
                'Changer le mot de passe',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    letterSpacing: 0,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),

          Icon(
            Icons.discount,
            color: Colors.green,
            size: 30.0,
          ),
          Positioned(
            top: 325,
            left: 75,
            child: Text(
              'Se deconnecter',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'Montserrat',
                  fontSize: 16,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1),
            ),
          ),
        ],
      ),
    ),
        ],
      ),
    ),
            bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        unselectedItemColor: Colors.black,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        currentIndex: _currentIndex,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Recherche',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favoris',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),




    );



    }







}

