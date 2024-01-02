import 'package:finalpillidentifier/pageii.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Dewini",
    home: PageI(),
  ));
}

class PageI extends StatefulWidget {
  const PageI({super.key});

  @override
  State<PageI> createState() => _PageIWidgetState();
}

class _PageIWidgetState extends State<PageI> {
  double Minimumpadding = 5;
  @override
  Widget build(BuildContext context) {
    double ButtomMargin = MediaQuery.of(context).size.height * 0.02;
    double TopMargin = MediaQuery.of(context).size.height * 0.11;
    double EdgeMargin = MediaQuery.of(context).size.width * 0.02;
    return Scaffold(
      extendBody: true,
      //appBar: AppBar(
        //title: const Text("Page I"),
      //),
      body: Container(
        width: MediaQuery.of(context).size.width, //   width,
        height: MediaQuery.of(context).size.height, //   height,
        decoration: const BoxDecoration(
          color: Color(0xffa259ff),
        ),
        child: Stack(
          children: [
            Positioned(
              right: 0,
              top: 0,
              child: Align(
                child: SizedBox(
                  child: Image.asset(
                    "images/BG.png"
                    ),
                ),
              ),
            ),
            Positioned(
              left: MediaQuery.of(context).size.width *  0.07,
              top: MediaQuery.of(context).size.width *  0.12,
              child: Container(
                width: MediaQuery.of(context).size.width *  0.17,
                height: MediaQuery.of(context).size.width *  0.17,
                padding: const EdgeInsets.fromLTRB(19.81, 18.2, 20.03, 18.85),
                decoration: BoxDecoration(
                  color: const Color(0xffccffb5),
                  borderRadius: BorderRadius.circular(31.5),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x33270058),
                      offset: Offset(0, 4),
                      blurRadius: 12.5,
                    ),
                  ],
                ),
                child: Center(
                  child: SizedBox(
                    child: Image.asset(
                      "images/logo.png", 
                      //fit: BoxFit.cover
                      ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.fromLTRB(EdgeMargin, 0.7*TopMargin, EdgeMargin, ButtomMargin),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.651,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "images/Backdrop.png"
                      ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                   Container( 
                    width: MediaQuery.of(context).size.width * 0.12,  
                    height: MediaQuery.of(context).size.width * 0.12,
                    child: Center(
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/Group.png"),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),),

                    
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, ButtomMargin),
                      constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.height * 0.0892,
                        maxWidth: MediaQuery.of(context).size.width * 0.787,
                      ),
                      child: const Text(
                        'Dewini',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                          height: 1.2058823529 * 34 / 16,
                          letterSpacing: 6.6,
                          color: Color(0xff2d0c57),
                        ),
                      ),
                    ),
                    

                    
                    Center(
                      child:Container( 
                        margin: EdgeInsets.fromLTRB(0, EdgeMargin, 0, 0),
                        height: MediaQuery.of(context).size.height * 0.25,
                        child: const Text(
                          'Cette application est un prototype pour un travail de thèse d\'un étudiant en pharmacie',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            height: 2.5,
                            letterSpacing: -0.4099999964,
                            color: Color(0xff9586a8),
                          ),
                        ),
                      ),
                    ),
                    
                    Spacer(),
                    
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PageII()),
                        );
                      },
                      child: Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: MediaQuery.of(context).size.height * 0.1,
                        decoration: BoxDecoration(
                          color: const Color(0xff0bce83),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Center(
                          child: Text(
                            'Entrer',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              height: 1.2,
                              letterSpacing: -0.01,
                            ),
                          ),
                        ),
                      ),
                    ),
                    

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// "20 / 12,5 mg"
// "300 / 12,5 mg"
// "300 / 25 mg"
// "150 / 12,5 mg"
// "50 / 12,5 mg"
// "5 / 5 mg"
// "10 / 25 mg"
// "10 / 10 mg"
// "5 / 10 mg"
// "160 / 25 mg"
// "80 / 12,5 mg"
// "5 / 80 mg"