import 'package:finalpillidentifier/pageii.dart';
import 'package:finalpillidentifier/pagev.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';



class PageVI extends StatefulWidget{
  const PageVI({super.key});


  @override
  State<StatefulWidget> createState() {
    return _PageVI();
  }
}

class _PageVI extends State<PageVI> {
  int _currentIndex = 2;

void _onTabTapped(int index) {
  setState(() {
    _currentIndex = index;
  });

  switch (index) {
    case 0:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const PageII()),
      );
      break;
    case 1:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const PageV()),
      );
      break;
    case 2:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const PageVI()),
      );
      break;
    default:
      break;
  }
}


  @override
  Widget build(BuildContext context) {
    double ButtomMargin = MediaQuery.of(context).size.height * 0.02;
    double TopMargin = MediaQuery.of(context).size.height * 0.11;
    double EdgeMargin = MediaQuery.of(context).size.width * 0.02;
    return Scaffold( //appBar: AppBar( title: const Text("Page VI"),),
    body: Container(
      padding:  const EdgeInsets.fromLTRB(0, 0, 0, 2),
      width:  MediaQuery.of(context).size.width,
      height: double.infinity,
      decoration:  const BoxDecoration (
        color:  Color(0xfff6f5f5),
      ),

      child: ListView(
        children: [

          Container(
            height: MediaQuery.of(context).size.height * 0.0714,
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(3*EdgeMargin, 6*EdgeMargin, 0, EdgeMargin),
            child: const Text(
              'Profil',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 30,
                fontWeight: FontWeight.bold,
                height: 1.3666666667,
                letterSpacing: 0.4099999964,
                color: Color(0xff2d0c57),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, EdgeMargin),
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.267,
            child: const CustomCircleAvatar(
              size: 260,
              borderWidth: 5,
              borderColor: Colors.white, 
            ),
          ),

          
          Container(
            padding: const EdgeInsets.fromLTRB(20.0, 13.0, 20.0, 93.0),
            width: double.infinity,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                
                Cbox(name: 'KADDOUR', name1: 'Nom'),
                Cbox(name: 'Aziz', name1: 'Prénom'),
                Cbox(name: '30/09/1997', name1: 'Date de naissance'),
                Cbox(name: 'Homme', name1: 'Sexe')

              ],
            ),
          ),
          

          

        ],
      ),
    ),





      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),

    );
  }
}

class Cbox extends StatefulWidget {
  final String name;
  final String name1;
  const Cbox({Key? key, required this.name, required this.name1}) : super(key: key);

  @override
  State<Cbox> createState() => _CboxState();
}

class _CboxState extends State<Cbox> {

  String utilisateur = "";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            margin: const EdgeInsets.fromLTRB(14.0, 0.0, 0.0, 0.0),
            //width: MediaQuery.of(context).size.width * 0.5,
            child: Text(
              widget.name1,
              style: const TextStyle(
                fontFamily: 'Roboto',
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                height: 1.5714285714,
                letterSpacing: -0.4099999964,
                color: Color.fromARGB(255, 108, 72, 155),
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.fromLTRB(13.0, 13.0, 13.0, 13.0),
            width: double.infinity,
            height: 48.0,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffd8d0e3)),
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: double.infinity,
              child: Text(
                widget.name,
                style: const TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 17.0,
                  fontWeight: FontWeight.w400,
                  height: 1.2941176471,
                  letterSpacing: -0.4099999964,
                  color: Color(0xff2d0c57),
                ),
              ),
            ),
          ),
        ],
      ),
    );

  }
}

class CustomCircleAvatar extends StatefulWidget {
  final ImageProvider? image;
  final double size;
  final double borderWidth;
  final Color borderColor;

  const CustomCircleAvatar({
    Key? key,
    this.image,
    required this.size,
    required this.borderWidth,
    required this.borderColor,
  }) : super(key: key);

  @override
  State<CustomCircleAvatar> createState() => _CustomCircleAvatarState ();
}

class _CustomCircleAvatarState extends State<CustomCircleAvatar> {
  ImageProvider? _image;

  @override
  void initState() {
    super.initState();
    _image = widget.image;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
        if (pickedFile != null) {
          setState(() {
            _image = FileImage(File(pickedFile.path));
          });
        }
      },
      child: Container(
        width: widget.size,
        height: widget.size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          border: Border.all(
            color: widget.borderColor,
            width: widget.borderWidth,
          ),
        ),
        child: ClipOval(
          child: _image != null
              ? Image(image: _image!, fit: BoxFit.cover)
              : Icon(Icons.add_a_photo, size: widget.size / 2, color: widget.borderColor),
        ),
      ),
    );
  }
}
