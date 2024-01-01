import 'package:finalpillidentifier/main.dart';
import 'package:finalpillidentifier/pagev.dart';
import 'package:finalpillidentifier/pagevi.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:quiver/strings.dart';



class PageII extends StatefulWidget {
  const PageII({Key? key}) : super(key: key);

  @override
  State<PageII> createState() => _PageIIWidgetState();
} 
//validé
class _PageIIWidgetState extends State<PageII> {

  int _currentIndex = 0;

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
    return Scaffold(
      body: Container(
        margin:EdgeInsets.fromLTRB(1.5*EdgeMargin, 0, EdgeMargin, 0) ,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
        color: Color(0xfff6f5f5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                                builder: (context) => const PageI(),
                        ),
                      );
                    },
                  child: Container(
                    padding: EdgeInsets.fromLTRB(EdgeMargin, 0.8*TopMargin, 0,0),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width *  0.025,
                        height: MediaQuery.of(context).size.width *  0.025,
                        child: Image.asset(
                          'images/backup.png',
                        ),
                      ),
                    
                  ),
                ),
              
                SizedBox(height: MediaQuery.of(context).size.width *  0.15,),
              
                Container(

                width: MediaQuery.of(context).size.width *  0.9,
                height: MediaQuery.of(context).size.height * 0.0457,
                padding: EdgeInsets.fromLTRB(1.5*EdgeMargin, 0, 0, 0),
                child: const Text(
                  'Classe thérapeutique ',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      height: 1.2058823529,
                      letterSpacing: 0.41,
                      color: Color(0xff2d0c57)),
                ),
              ),
                
                ]
              ),
            ),
          
            SizedBox(height: MediaQuery.of(context).size.width *  0.1,),

            Container(
              height: MediaQuery.of(context).size.width *  0.44,
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PageIIICardio(),
                        ),
                      );
                    },
                    child: const ClasseTherap(
                      clname: 'Cardiologie', 
                      image1: 'cardio.png'
                      )
                  ),
                                
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PageIIINfect(),
                          ),
                        );
                      },
                      child: const ClasseTherap(
                        clname: 'anti-Infectieux', 
                        image1: 'infect.png'
                        )
                    ),
                  

                ],
              ),
            ),
                  
          Container(
            height: MediaQuery.of(context).size.width *  0.44,
            decoration: const BoxDecoration(
              color: Color(0xfff6f5f5),
              ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PageIIIGastro(),
                        ),
                      );
                    },
                    child: const ClasseTherap(
                      clname: 'Gastrologie', 
                      image1: 'gastro.png'
                      )
                  ),
                              
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PageIIINeuro(),
                        ),
                      );
                    },
                    child: const ClasseTherap(
                      clname: 'Neurologie', 
                      image1: 'neuro.png'
                      )
                  ),
                
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
//validé
class ClasseTherap extends StatefulWidget {
  const ClasseTherap({
    Key? key,
    required this.clname,
    required this.image1,
  }) : super(key: key);

  final String clname;
  final String image1;

  @override
  State<ClasseTherap> createState() => _ClasseTherapState();
}
//validé
class _ClasseTherapState extends State<ClasseTherap> {
  @override
  Widget build(BuildContext context) {
    double ButtomMargin = MediaQuery.of(context).size.height * 0.02;
    double TopMargin = MediaQuery.of(context).size.height * 0.11;
    double EdgeMargin = MediaQuery.of(context).size.width * 0.02;
    return Container(
      margin: EdgeInsets.fromLTRB(0.5*ButtomMargin,0.5*ButtomMargin, 0.5*ButtomMargin, 0.5*ButtomMargin),
      width: MediaQuery.of(context).size.width *  0.43,
      height: MediaQuery.of(context).size.width *  0.43,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xffd8d0e3)),
      ),
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
          Center(            
            child: Container(
              width: MediaQuery.of(context).size.width * 0.18,
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/${widget.image1}'),
                  //fit: BoxFit.cover
                ),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
          Center(
            child: SizedBox(
              //width: MediaQuery.of(context).size.width * 0.3,
              //height: MediaQuery.of(context).size.height * 0.5,
              child: Text(
                widget.clname,
                style: const TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  height: 1.1725,
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
//validé
class PageIIICardio extends StatefulWidget {
  final List<String>? result; // this is the type of the result from Safi function

  const PageIIICardio({Key? key, this.result}) : super(key: key);

  @override
  State<PageIIICardio> createState() => _PageIIIcardioState();
}
//validé
class _PageIIIcardioState extends State<PageIIICardio> {


  final List<Widget> _allProds = [];
  List<Widget> _foundProds = [];
  List<Widget> _foundFiltredProds = [];
  
  late List<String>  result ;

  @override
  void initState() {
  super.initState();
  _foundProds = List.from(_allProds);
  _addAllProds();

  if (widget.result != null) {
    _runFiltredFilter(widget.result!);

    // Use Future.delayed to wait for a short duration before updating the state
    Future.delayed(Duration(milliseconds: 1200), () {
      setState(() {
        // This will trigger a rebuild and update the UI after the filter process is complete
      });
    });
  }
}

  void _addAllProds () {  

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Amlodipine 10', 
                  image4: 'amlodipine 10 .jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0225293.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Amlodipine 10', 
          dciP: 'Amlodipine', 
          priceP: '13,215', 
          imageP: 'amlodipine 10 .jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Amlodipine 5', 
                  image4: 'amlodipine 5.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0225293.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Amlodipine 5', 
          dciP: 'Amlodipine', 
          priceP: '9,081', 
          imageP: 'amlodipine 5.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Amlodis 10', 
                  image4: 'amlodis 10.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0225293.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Amlodis 10', 
          dciP: 'Amlodipine', 
          priceP: '21,9', 
          imageP: 'amlodis 10.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Amlodis 5', 
                  image4: 'amlodis 5.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0225293.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Amlodis 5', 
          dciP: 'Amlodipine', 
          priceP: '15,785', 
          imageP: 'amlodis 5.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Angiotec 20', 
                  image4: 'angiotec 20.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0226000.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Angiotec 20', 
          dciP: 'Enalapril Maléate', 
          priceP: '17,525', 
          imageP: 'angiotec 20.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Angiotec 5', 
                  image4: 'angiotec 5.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0197537.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Angiotec 5', 
          dciP: 'Enalapril Maléate', 
          priceP: '6,93', 
          imageP: 'angiotec 5.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Angiozide 20/12,5', 
                  image4: 'angiozide 20-12.5.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0193806.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Angiozide 20/12,5', 
          dciP: 'Enalapril + Hydrochlorothiazide', 
          priceP: '17,83', 
          imageP: 'angiozide 20-12.5.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Aprofort 300/10', 
                  image4: 'aprofort 300-10.png', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0353561.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Aprofort 300/10', 
          dciP: 'Irbésartan + Amlodipine', 
          priceP: '45,32', 
          imageP: 'aprofort 300-10.png',
        ) ,
      ),
    );

  
    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Aradeux plus + 300/10', 
                  image4: 'aradeux plus 300-10.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0353561.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Aradeux plus + 300/10', 
          dciP: 'Irbésartan + Amlodipine', 
          priceP: '40,955', 
          imageP: 'aradeux plus 300-10.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Aradeux plus + 300/5', 
                  image4: 'aradeux plus 300-5.jpg', 
                  url4: 'https://base-donnees-publique.medicaments.gouv.fr/affichageDoc.php?specid=60106862&typedoc=R'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Aradeux plus + 300/5', 
          dciP: 'Irbésartan + Amlodipine', 
          priceP: '39,915', 
          imageP: 'aradeux plus 300-5.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Araven 300', 
                  image4: 'araven 300.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0250637.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Araven 300', 
          dciP: 'Irbésartan', 
          priceP: '37,81', 
          imageP: 'araven 300.jpg',
        ) ,
      ),
    );
    
    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Araven Ic 300/10', 
                  image4: 'araven-ic 300-10.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0353561.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Araven Ic 300/10', 
          dciP: 'Irbésartan + Amlodipine', 
          priceP: '45,32', 
          imageP: 'araven-ic 300-10.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Araven Ic 300/5', 
                  image4: 'araven-ic 300-5.jpg', 
                  url4: 'https://www.vidal.fr/medicaments/aprexevo-300-mg-5-mg-cp-pellic-214511.html#indications'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Araven Ic 300/5', 
          dciP: 'Irbésartan + Amlodipine', 
          priceP: '43.85', 
          imageP: 'araven-ic 300-5.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Bipreterax 10/2,5', 
                  image4: 'bipreterax 10-2.5.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0285701.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Bipreterax 10/2,5', 
          dciP: 'Perindopril + Indapamide', 
          priceP: '62.32', 
          imageP: 'bipreterax 10-2.5.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Bipreterax 5/1,25', 
                  image4: 'bipreterax 5-1.25.jpg', 
                  url4: 'https://base-donnees-publique.medicaments.gouv.fr/affichageDoc.php?specid=61276216&typedoc=R'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Bipreterax 5/1,25', 
          dciP: 'Perindopril + Indapamide', 
          priceP: '51.81', 
          imageP: 'bipreterax 5-1.25.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Bisocor 5', 
                  image4: 'bisocor 5.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0241692.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Bisocor 5', 
          dciP: 'Bisoprolol', 
          priceP: '6.44', 
          imageP: 'bisocor 5.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Bisocor 2.5', 
                  image4: 'bisocor 2.5.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0241692.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Bisocor 2.5', 
          dciP: 'Bisoprolol', 
          priceP: '5.42', 
          imageP: 'bisocor 2.5.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Bisopral 2,5', 
                  image4: 'bisopral 2.5.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0241692.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Bisopral 2,5', 
          dciP: 'Bisoprolol', 
          priceP: '6.28', 
          imageP: 'bisopral 2.5.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Bi-therapil 10/2,5', 
                  image4: 'bi-therapil 10-2.5.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/notice/N0292925.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Bi-therapil 10/2,5', 
          dciP: 'Perindopril + Indapamide', 
          priceP: '34.97', 
          imageP: 'bi-therapil 10-2.5.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Blopress 16', 
                  image4: 'blopress 16.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/frames.php?specid=62910207&typedoc=R&ref=R0212239.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Blopress 16', 
          dciP: 'Candésartan', 
          priceP: '42.445', 
          imageP: 'blopress 16.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Blopress 8', 
                  image4: 'blopress 8.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/frames.php?specid=62910207&typedoc=R&ref=R0212239.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Blopress 8', 
          dciP: 'Candésartan', 
          priceP: '31.67', 
          imageP: 'blopress 8.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Blopress Plus', 
                  image4: 'blopress plus 16-12.5.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0221439.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Blopress Plus', 
          dciP: 'Candésartan + Hydrochlorothiazide', 
          priceP: '43.62', 
          imageP: 'blopress plus 16-12.5.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Capocard 50', 
                  image4: 'capocard 50.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0256378.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Capocard 50', 
          dciP: 'Captopril', 
          priceP: '14.195', 
          imageP: 'capocard 50.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Capocard 25', 
                  image4: 'capocard 25.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0301770.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Capocard 25', 
          dciP: 'Captopril', 
          priceP: '14.195', 
          imageP: 'capocard 25.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Capril 50', 
                  image4: 'capril 50.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0256378.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Capril 50', 
          dciP: 'Captopril', 
          priceP: '18.65', 
          imageP: 'capril 50.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Capril 25', 
                  image4: 'capril 25.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0301770.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Capril 25', 
          dciP: 'Captopril', 
          priceP: '10.17', 
          imageP: 'capril 25.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Cardensiel 5', 
                  image4: 'cardensiel 5.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0241692.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Cardensiel 5', 
          dciP: 'Bisoprolol', 
          priceP: '16.180', 
          imageP: 'cardensiel 5.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Cardensiel 2,5', 
                  image4: 'cardensiel 2.5.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0241692.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Cardensiel 2,5', 
          dciP: 'Bisoprolol', 
          priceP: '16.180', 
          imageP: 'cardensiel 2.5.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Cebutral 400',
                image4: 'cebutral 400.jpg',
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0271960.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Cebutral 400',
          dciP: 'Acebutolol',
          priceP: '12,69',
          imageP: 'cebutral 400.jpg',
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Celiprol 200',
                image4: 'celiprol 200.jpg', // Use 'aldactone 75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0213831.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Celiprol 200',
          dciP: 'Celiprolol',
          priceP: '12,36',
          imageP: 'celiprol 200.jpg', // Use 'aldactone 75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Cincor 10',
                image4: 'cincor 10.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0241692.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Cincor 10',
          dciP: 'Bisoprolol',
          priceP: '14,91',
          imageP: 'cincor 10.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Cincor 5',
                image4: 'cincor 5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0241692.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Cincor 5',
          dciP: 'Bisoprolol',
          priceP: '7,205',
          imageP: 'cincor 5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Cincor 2,5',
                image4: 'cincor 2.5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0241692.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Cincor 2,5',
          dciP: 'Bisoprolol',
          priceP: '7,33',
          imageP: 'cincor 2.5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Clopix 75',
                image4: 'clopix 75.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0245911.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Clopix 75',
          dciP: 'Clopidogrel',
          priceP: '36,52',
          imageP: 'clopix 75.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'CoAprovel 300/12,5',
                image4: 'coaprovel 300-12.5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0222801.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'CoAprovel 300/12,5',
          dciP: 'Irbesartan + Hydrochlorothiazide',
          priceP: '57,925',
          imageP: 'coaprovel 300-12.5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'CoAprozar 300/12,5',
                image4: 'coaprozar 300-12.5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0222801.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'CoAprozar 300/12,5',
          dciP: 'Irbesartan + Hydrochlorothiazide',
          priceP: '36,68',
          imageP: 'coaprozar 300-12.5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'CoAprozar 300/25',
                image4: 'coaprozar 300-25.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0222801.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'CoAprozar 300/25',
          dciP: 'Irbesartan + Hydrochlorothiazide',
          priceP: '39,105',
          imageP: 'coaprozar 300-25.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Co-aradeux 300/12,5',
                image4: 'co-aradeux 300-12.5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0222801.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Co-aradeux 300/12,5',
          dciP: 'Irbesartan + Hydrochlorothiazide',
          priceP: '33,15',
          imageP: 'co-aradeux 300-12.5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Co-aradeux 150/12,5',
                image4: 'co-aradeux 150-12.5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0222801.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Co-aradeux 150/12,5',
          dciP: 'Irbesartan + Hydrochlorothiazide',
          priceP: '21,68',
          imageP: 'co-aradeux 150-12.5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Co-aradeux 150/12,5 (90)',
                image4: 'co-aradeux 150-12.5 90.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0222801.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Co-aradeux 150/12,5 (90)',
          dciP: 'Irbesartan + Hydrochlorothiazide',
          priceP: '65.800', // Placeholder for price
          imageP: 'co-aradeux 150-12.5 90.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Co-aradeux 300/25',
                image4: 'co-aradeux 300-25.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0222801.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Co-aradeux 300/25',
          dciP: 'Irbesartan + Hydrochlorothiazide',
          priceP: '33,155',
          imageP: 'co-aradeux 300-25.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Co-medzar 50/12,5',
                image4: 'co-medzar 50-12.5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0206099.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Co-medzar 50/12,5',
          dciP: 'Losartan + Hydrochlorothiazide',
          priceP: '24,245',
          imageP: 'co-medzar 50-12.5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Concor Amlo 5/5',
                image4: 'concor amlo 5-5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'https://servier.ma/wp-content/uploads/sites/6/2022/01/Cosyrel_10-mg-5-mg_RCP_Web_decembre-2021.pdf?time=1641980752',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Concor Amlo 5/5',
          dciP: 'Bisoprolol + Amlodipine',
          priceP: '21,005',
          imageP: 'concor amlo 5-5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'CoRapril 10/25',
                image4: 'corapril 10-25.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0206562.htm#:~:text=RAMIPRIL%20HYDROCHLOROTHIAZIDE%20ACTAVIS%20sera%20d%C3%A9but%C3%A9,mg%20d\'hydrochlorothiazide%20par%20jour.',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'CoRapril 10/25',
          dciP: 'Ramipril + Hydrochlorothiazide',
          priceP: '29,93',
          imageP: 'corapril 10-25.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Cordarone 200',
                image4: 'cordarone 200.jpg', // Use 'aldactone_75.jpg' here
                url4: 'https://base-donnees-publique.medicaments.gouv.fr/affichageDoc.php?specid=64408662&typedoc=R',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Cordarone 200',
          dciP: 'Amiodarone',
          priceP: '8,565',
          imageP: 'cordarone 200.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Cosimprel 10/10',
                image4: 'cosimprel 10-10.jpg', // Use 'aldactone_75.jpg' here
                url4: 'https://base-donnees-publique.medicaments.gouv.fr/affichageDoc.php?specid=65942427&typedoc=R',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Cosimprel 10/10',
          dciP: 'Bisoprolol + Perindopril',
          priceP: '33,627',
          imageP: 'cosimprel 10-10.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Cosimprel 5/10',
                image4: 'cosimprel 5-10.jpg.jpg', // Use 'aldactone_75.jpg' here
                url4: 'https://base-donnees-publique.medicaments.gouv.fr/affichageDoc.php?specid=68137895&typedoc=R',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Cosimprel 5/10',
          dciP: 'Bisoprolol + Perindopril',
          priceP: '25,052',
          imageP: 'cosimprel 5-10.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Cosimprel 5/5',
                image4: 'cosimprel 5-5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0284155.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Cosimprel 5/5',
          dciP: 'Bisoprolol + Perindopril',
          priceP: '25,052',
          imageP: 'cosimprel 5-5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Cotareg 160/25',
                image4: 'cotareg 160-25.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0359096.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Cotareg 160/25',
          dciP: 'Valsartan + Hydrochlorothiazide',
          priceP: '61,37',
          imageP: 'cotareg 160-25.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Cotareg 80/12,5',
                image4: 'cotareg 80-12.5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'https://base-donnees-publique.medicaments.gouv.fr/affichageDoc.php?specid=63139718&typedoc=R',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Cotareg 80/12,5',
          dciP: 'Valsartan + Hydrochlorothiazide',
          priceP: '27.245',
          imageP: 'cotareg 80-12.5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Dopanore 250',
                image4: 'dopanore 250.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0201870.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Dopanore 250',
          dciP: 'Methyldopa',
          priceP: '6,125',
          imageP: 'dopanore 250.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'DuoFor 160 / 5',
                image4: 'duo for 160-5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'https://base-donnees-publique.medicaments.gouv.fr/affichageDoc.php?specid=65265651&typedoc=R',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'DuoFor 160 / 5',
          dciP: 'Valsartan + Amlodipine',
          priceP: '55.860',
          imageP: 'duo for 160-5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'DuoFor Plus 160 / 10 / 25',
                image4: 'duo for 160-10-12.5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'https://base-donnees-publique.medicaments.gouv.fr/extrait.php?specid=61045063#',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'DuoFor Plus 160 / 10 / 25',
          dciP: 'Valsartan + Amlodipine + Hydrochlorothiazide',
          priceP: '37.240',
          imageP: 'duo for 160-10-12.5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'DuoFor Plus 160 / 10 / 12,5',
                image4: 'duo for 160-10-12.5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'https://base-donnees-publique.medicaments.gouv.fr/extrait.php?specid=64617605',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'DuoFor Plus 160 / 10 / 12,5',
          dciP: 'Valsartan + Amlodipine + Hydrochlorothiazide',
          priceP: '37.240',
          imageP: 'duo for 160-10-12.5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Evocor 2,5',
                image4: 'evocor 2.5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0252671.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Evocor 2,5',
          dciP: 'Bisoprolol',
          priceP: '8',
          imageP: 'evocor 2.5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Fludex LP 1,5',
                image4: 'fludex lp.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0229462.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Fludex LP 1,5',
          dciP: 'Indapamide',
          priceP: '9,255',
          imageP: 'fludex lp.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Hypoten 100',
                image4: 'hypoten 100.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0275747.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Hypoten 100',
          dciP: 'Aténolol',
          priceP: '13,89',
          imageP: 'hypoten 100.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Hypoten 50',
                image4: 'hypoten 50.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0284171.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Hypoten 50',
          dciP: 'Aténolol',
          priceP: '7,595',
          imageP: 'hypoten 50.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Lasicare 500',
                image4: 'lasicare 500.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0237664.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Lasicare 500',
          dciP: 'Furosémide',
          priceP: '49,14',
          imageP: 'lasicare 500.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Lasicare 40',
                image4: 'lasicare 40.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0216212.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Lasicare 40',
          dciP: 'Furosémide',
          priceP: '2,755',
          imageP: 'lasicare 40.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Lasilix 40',
                image4: 'lasilix 40.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0216212.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Lasilix 40',
          dciP: 'Furosémide',
          priceP: '4,02',
          imageP: 'lasilix 40.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Lodipex 5',
                image4: 'lodipex 5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0225293.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Lodipex 5',
          dciP: 'Amlodipine',
          priceP: '9,08',
          imageP: 'lodipex 5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Lopril 50',
                image4: 'lopril 50.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0235981.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Lopril 50',
          dciP: 'Captopril',
          priceP: '23.288',
          imageP: 'lopril 50.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Lopril 25',
                image4: 'lopril 25.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0235981.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Lopril 25',
          dciP: 'Captopril',
          priceP: '13,015',
          imageP: 'lopril 25.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Losar 50',
                image4: 'losar 50.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0221445.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Losar 50',
          dciP: 'Losartan',
          priceP: '26,79',
          imageP: 'losar 50.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'LosarFort 100',
                image4: 'losar fort 100.jpg', // Use 'aldactone_75.jpg' here
                url4: 'https://base-donnees-publique.medicaments.gouv.fr/affichageDoc.php?specid=65029882&typedoc=R',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'LosarFort 100',
          dciP: 'Losartan',
          priceP: '29,755',
          imageP: 'losar fort 100.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Lowrac 5',
                image4: 'lowrac 5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0225293.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Lowrac 5',
          dciP: 'Amlodipine',
          priceP: '14,75',
          imageP: 'lowrac 5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Loxen LP 50',
                image4: 'loxen lp 50.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0291215.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Loxen LP 50',
          dciP: 'Nicardipine',
          priceP: '27,05',
          imageP: 'loxen lp 50.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Lusopress 20',
                image4: 'lusopress 20.jpg', // Use 'aldactone_75.jpg' here
                url4: 'https://base-donnees-publique.medicaments.gouv.fr/affichageDoc.php?specid=65984700&typedoc=R',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Lusopress 20',
          dciP: 'Nicardipine',
          priceP: '12,508',
          imageP: 'lusopress 20.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Medazar Fort 100',
                image4: 'Medazar Fort 100.jpg', // Use 'aldactone_75.jpg' here
                url4: 'https://base-donnees-publique.medicaments.gouv.fr/affichageDoc.php?specid=65984700&typedoc=R',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Medazar Fort 100',
          dciP: 'Losartan',
          priceP: '69,22',
          imageP: 'Medazar Fort 100.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Mibral 5',
                image4: 'mibral 5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0225293.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Mibral 5',
          dciP: 'Amlodipine',
          priceP: '14,445',
          imageP: 'mibral 5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Natrixam 1,5 / 5',
                image4: 'natrixam 1.5-5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0225293.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Natrixam 1,5 / 5',
          dciP: 'Indapamide + Amlodipine',
          priceP: '14,345',
          imageP: 'natrixam 1.5-5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Nebilet 5',
                image4: 'nebilet 5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0206229.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Nebilet 5',
          dciP: 'Nebivolol',
          priceP: '36,24',
          imageP: 'nebilet 5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Noractone 50',
                image4: 'noractone 50.jpg', // Use 'aldactone_75.jpg' here
                url4: 'https://base-donnees-publique.medicaments.gouv.fr/affichageDoc.php?specid=67368301&typedoc=R',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Noractone 50',
          dciP: 'Spironolactone',
          priceP: '13,45',
          imageP: 'noractone 50.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Normocardil 40',
                image4: 'normocardil 40.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0277345.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Normocardil 40',
          dciP: 'Propranolol',
          priceP: '3,925',
          imageP: 'normocardil 40.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Physiotens 0,2',
                image4: 'physiotens 0.2.jpg', // Use 'aldactone_75.jpg' here
                url4: 'https://base-donnees-publique.medicaments.gouv.fr/affichageDoc.php?specid=64532770&typedoc=R',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Physiotens 0,2',
          dciP: 'Moxonidine',
          priceP: '23,07',
          imageP: 'physiotens 0.2.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Pidogrel 75',
                image4: 'pidogrel 75.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0245911.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Pidogrel 75',
          dciP: 'Clopidogrel',
          priceP: '49,7',
          imageP: 'pidogrel 75.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Plagrel 75',
                image4: 'plagrel 75.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0245911.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Plagrel 75',
          dciP: 'Clopidogrel',
          priceP: '31,325',
          imageP: 'plagrel 75.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Plavix 75',
                image4: 'plavix 75.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0245911.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Plavix 75',
          dciP: 'Clopidogrel',
          priceP: '73,525',
          imageP: 'plavix 75.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Procardin 75',
                image4: 'procardin 75.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0276054.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Procardin 75',
          dciP: 'Dipyridamole',
          priceP: '7,74',
          imageP: 'procardin 75.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Rapril 5',
                image4: 'rapril 5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0276881.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Rapril 5',
          dciP: 'Ramipril',
          priceP: '23,555',
          imageP: 'rapril 5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Sintrom 4',
                image4: 'sintrom 4.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0192847.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Sintrom 4',
          dciP: 'Acenocoumarol',
          priceP: '1,83',
          imageP: 'sintrom 4.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Sotalol Mylan 160',
                image4: 'sotalol mylan 160.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0203323.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Sotalol Mylan 160',
          dciP: 'Sotalol',
          priceP: '10,645',
          imageP: 'sotalol mylan 160.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Tareg 80',
                image4: 'tareg 80.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0251570.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Tareg 80',
          dciP: 'Valsartan',
          priceP: '38,955',
          imageP: 'tareg 80.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Telmycor 40',
                image4: 'telmycore 40.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0251570.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Telmycor 40',
          dciP: 'Telmisartan',
          priceP: '25,565',
          imageP: 'telmycore 40.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Telmycor Plus 80 / 12,5',
                image4: 'telmycore plus 80-12.5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'https://base-donnees-publique.medicaments.gouv.fr/affichageDoc.php?specid=65198779&typedoc=R',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Telmycor Plus 80 / 12,5',
          dciP: 'Telmisartan + Hydrochlorothiazide',
          priceP: '28,46',
          imageP: 'telmycore plus 80-12.5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Tenar 0,4',
                image4: 'tenar 0.4.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0302515.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Tenar 0,4',
          dciP: 'Moxonidine',
          priceP: '29,94',
          imageP: 'tenar 0.4.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Tenar 0,2',
                image4: 'tenar 0.2.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0302515.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Tenar 0,2',
          dciP: 'Moxonidine',
          priceP: '16,865',
          imageP: 'tenar 0.2.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Tensopril 50',
                image4: 'tensopril 50.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0256378.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Tensopril 50',
          dciP: 'Captopril',
          priceP: '15,78',
          imageP: 'tensopril 50.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Tensopril 25',
                image4: 'tensopril 25.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0256378.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Tensopril 25',
          dciP: 'Captopril',
          priceP: '8,465',
          imageP: 'tensopril 25.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Tensiovals Duo 5 / 80',
                image4: 'tensiovals duo 5-80.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0298048.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Tensiovals Duo 5 / 80',
          dciP: 'Amlodipine + Valsartan',
          priceP: '41,755',
          imageP: 'tensiovals duo 5-80.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Theraglor 90',
                image4: 'theraglor 90.jpg', // Use 'aldactone_75.jpg' here
                url4: 'https://base-donnees-publique.medicaments.gouv.fr/extrait.php?specid=61958462',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Theraglor 90',
          dciP: 'Ticagrélor',
          priceP: '128,175',
          imageP: 'theraglor 90.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Therapil 5',
                image4: 'therapil 5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0228758.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Therapil 5',
          dciP: 'Périndopril',
          priceP: '20,01',
          imageP: 'therapil 5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Triatec 10',
                image4: 'triatec 10.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0254006.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Triatec 10',
          dciP: 'Ramipril',
          priceP: '48,28',
          imageP: 'triatec 10.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Triatec 5',
                image4: 'triatec 5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0254006.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Triatec 5',
          dciP: 'Ramipril',
          priceP: '42,79',
          imageP: 'triatec 5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Triatec 2,5',
                image4: 'triatec 2.5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0254006.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Triatec 2,5',
          dciP: 'Ramipril',
          priceP: '34,01',
          imageP: 'triatec 2.5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Twynsta 40 / 5',
                image4: 'twynsta 40-5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0354787.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Twynsta 40 / 5',
          dciP: 'Telmisartan + Amlodipine',
          priceP: '41,73',
          imageP: 'twynsta 40-5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Twynsta 80 / 10',
                image4: 'twynsta 80-10.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0354787.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Twynsta 80 / 10',
          dciP: 'Telmisartan + Amlodipine',
          priceP: '47,08',
          imageP: 'twynsta 80-10.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Value Plus 160 / 5',
                image4: 'value plus 160-10.png', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0354787.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Value Plus 160 / 5',
          dciP: 'Telmisartan + Amlodipine',
          priceP: '38,26',
          imageP: 'value plus 160-10.png', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Vastarel 35',
                image4: 'vastarel 35.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0230315.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Vastarel 35',
          dciP: 'Trimétazidine',
          priceP: '28,375',
          imageP: 'vastarel 35.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Zanextra 20 / 10',
                image4: 'zanextra 20-10.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0262344.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Zanextra 20 / 10',
          dciP: 'Enalapril + Lercanidipine',
          priceP: '39,04',
          imageP: 'zanextra 20-10.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Zanextra 20 / 20',
                image4: 'zanextra 20-20.jpg', // Use 'aldactone_75.jpg' here
                url4: 'https://base-donnees-publique.medicaments.gouv.fr/affichageDoc.php?specid=69939179&typedoc=R',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Zanextra 20 / 20',
          dciP: 'Enalapril + Lercanidipine',
          priceP: '51,03',
          imageP: 'zanextra 20-20.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Zanidip 20',
                image4: 'zanidip-20.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0229475.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Zanidip 20',
          dciP: 'Lercanidipine',
          priceP: '35,24',
          imageP: 'zanidip-20.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Zanidip 10',
                image4: 'zanidip 10.jpeg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0229475.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Zanidip 10',
          dciP: 'Lercanidipine',
          priceP: '32,805',
          imageP: 'zanidip 10.jpeg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Zarteg 160',
                image4: 'zarteg 160.jpeg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0251570.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Zarteg 160',
          dciP: 'Valsartan',
          priceP: '32,845',
          imageP: 'zarteg 160.jpeg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

  }


  void _runFilter(String enteredKeyword ) { 
  List<Widget> results = [];

  if (enteredKeyword.isEmpty) {
    results = List.from(_allProds); 
  } else {
    results = _allProds
        .where((widget) => widget is GestureDetector && 
            widget.child is ProductBox &&
            (widget.child as ProductBox)
                .nameP
                .toLowerCase()
                .startsWith(enteredKeyword.toLowerCase()))
        .toList();
  }

  setState(() {
    _foundProds = List.from(results); 
  });
}

  void _runFiltredFilter(List<String> eleEsmou ) { 
  List<Widget> results = [];
  print('object');
  if (eleEsmou.isEmpty) {
    results = List.from(_allProds); 
  } else {
    results = _allProds
      .where((widget) => widget is GestureDetector && 
        widget.child is ProductBox &&
        eleEsmou.any((element) => equalsIgnoreCase((widget.child as ProductBox)
          .nameP, element))) 
    .toList();
  }

  setState(() {
    _foundFiltredProds = List.from(results); 
  });
}
//fait


  @override
  Widget build(BuildContext context) {
    double ButtomMargin = MediaQuery.of(context).size.height * 0.02;
    double TopMargin = MediaQuery.of(context).size.height * 0.11;
    double EdgeMargin = MediaQuery.of(context).size.width * 0.02;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width, //   width,
          height: MediaQuery.of(context).size.height, //   height,
          decoration: const BoxDecoration(
            color: Color(0xfff6f5f5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.2,
                child: Stack(
                  children: [

                    Positioned(
                      left: MediaQuery.of(context).size.width * 0.0483,
                      top: MediaQuery.of(context).size.height * 0.108,
                      child: Align(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.879,
                          height: MediaQuery.of(context).size.height * 0.07,
                          child: const Text(
                            'Systeme Cardio-vasculaire',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              height: 1.3666666667,
                              letterSpacing: 0.4099999964,
                              color: Color(0xff2d0c57),
                            ),
                          ),
                        ),
                      ),
                    ),
                  
                    Positioned(
                      right: 0,
                      top: 0,
                      child: Align(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.48,
                          height: MediaQuery.of(context).size.height * 0.16,
                          child: Opacity(
                            opacity: 0.45,
                            child: Container(
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/cardio.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  
                    Positioned(
                      top: 0,
                      left: 0,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const PageII() ),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 1),
                          padding: const EdgeInsets.fromLTRB(21, 62, 21, 22),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width *  0.025,
                              height: MediaQuery.of(context).size.width *  0.025,
                              child: Image.asset(
                                'images/backup.png',
                               // width: MediaQuery.of(context).size.width *  0.0144,
                                //height: MediaQuery.of(context).size.height * 0.133,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    
                  ],
                ),
              ),
            
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.055,
                margin: EdgeInsets.fromLTRB(2.5*EdgeMargin, 0, EdgeMargin, 0),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffd8d0e3)),
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(27.0),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 5*EdgeMargin,
                      height: 5* EdgeMargin,
                      margin: EdgeInsets.fromLTRB(1.2*EdgeMargin, 0, 0, 0),
                      child: Image.asset(
                        'images/rechercher.png',
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (value) => _runFilter(value),
                        decoration: const InputDecoration(
                        labelText: 'Chercher',
                        hintText: 'Entrez une specialité',
                        hintStyle: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          height: 1.2941176471,
                          letterSpacing: -0.41,
                          color: Color(0xff9586a8),
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                        isDense: true,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(
            child: _foundFiltredProds.isNotEmpty
                ? ListView.builder(
                    itemCount: _foundFiltredProds.length,
                    itemBuilder: (context, index) {
                      return _foundFiltredProds[index];
                    },
                  )
                : _foundProds.isNotEmpty
                    ? ListView.builder(
                        itemCount: _foundProds.length,
                        itemBuilder: (context, index) {
                          return _foundProds[index];
                        },
                      )
                    : ListView.builder( 
                        itemCount: _allProds.length,
                        itemBuilder: (context, index) {
                          return _allProds[index];
                        },
                      ),
                ),

            ],
          ),
        ),
      ),
    );
  }
}
//validé
class PageIIICardio1 extends StatefulWidget {
  final List<String>? result; // this is the type of the result from Safi function

  const PageIIICardio1({Key? key, this.result}) : super(key: key);

  @override
  State<PageIIICardio1> createState() => _PageIIIcardio1State();
}
//validé
class _PageIIIcardio1State extends State<PageIIICardio1> {


  final List<Widget> _allProds = [];
  List<Widget> _foundProds = [];
  List<Widget> _foundFiltredProds = [];
  
  late List<String>  result ;

  @override
  void initState() {
  super.initState();
  _foundProds = List.from(_allProds);
  _addAllProds();

  if (widget.result != null) {
    _runFiltredFilter(widget.result!);

    // Use Future.delayed to wait for a short duration before updating the state
    Future.delayed(Duration(milliseconds: 1200), () {
      setState(() {
        // This will trigger a rebuild and update the UI after the filter process is complete
      });
    });
  }
}

  void _addAllProds () {  

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Amlodipine 10', 
                  image4: 'amlodipine 10 .jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0225293.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Amlodipine 10', 
          dciP: 'Amlodipine', 
          priceP: '13,215', 
          imageP: 'amlodipine 10 .jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Amlodipine 5', 
                  image4: 'amlodipine 5.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0225293.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Amlodipine 5', 
          dciP: 'Amlodipine', 
          priceP: '9,081', 
          imageP: 'amlodipine 5.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Amlodis 10', 
                  image4: 'amlodis 10.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0225293.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Amlodis 10', 
          dciP: 'Amlodipine', 
          priceP: '21,9', 
          imageP: 'amlodis 10.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Amlodis 5', 
                  image4: 'amlodis 5.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0225293.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Amlodis 5', 
          dciP: 'Amlodipine', 
          priceP: '15,785', 
          imageP: 'amlodis 5.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Angiotec 20', 
                  image4: 'angiotec 20.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0226000.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Angiotec 20', 
          dciP: 'Enalapril Maléate', 
          priceP: '17,525', 
          imageP: 'angiotec 20.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Angiotec 5', 
                  image4: 'angiotec 5.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0197537.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Angiotec 5', 
          dciP: 'Enalapril Maléate', 
          priceP: '6,93', 
          imageP: 'angiotec 5.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Angiozide 20/12,5', 
                  image4: 'angiozide 20-12.5.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0193806.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Angiozide 20/12,5', 
          dciP: 'Enalapril + Hydrochlorothiazide', 
          priceP: '17,83', 
          imageP: 'angiozide 20-12.5.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Aprofort 300/10', 
                  image4: 'aprofort 300-10.png', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0353561.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Aprofort 300/10', 
          dciP: 'Irbésartan + Amlodipine', 
          priceP: '45,32', 
          imageP: 'aprofort 300-10.png',
        ) ,
      ),
    );

  
    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Aradeux plus + 300/10', 
                  image4: 'aradeux plus 300-10.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0353561.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Aradeux plus + 300/10', 
          dciP: 'Irbésartan + Amlodipine', 
          priceP: '40,955', 
          imageP: 'aradeux plus 300-10.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Aradeux plus + 300/5', 
                  image4: 'aradeux plus 300-5.jpg', 
                  url4: 'https://base-donnees-publique.medicaments.gouv.fr/affichageDoc.php?specid=60106862&typedoc=R'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Aradeux plus + 300/5', 
          dciP: 'Irbésartan + Amlodipine', 
          priceP: '39,915', 
          imageP: 'aradeux plus 300-5.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Araven 300', 
                  image4: 'araven 300.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0250637.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Araven 300', 
          dciP: 'Irbésartan', 
          priceP: '37,81', 
          imageP: 'araven 300.jpg',
        ) ,
      ),
    );
    
    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Araven Ic 300/10', 
                  image4: 'araven-ic 300-10.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0353561.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Araven Ic 300/10', 
          dciP: 'Irbésartan + Amlodipine', 
          priceP: '45,32', 
          imageP: 'araven-ic 300-10.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Araven Ic 300/5', 
                  image4: 'araven-ic 300-5.jpg', 
                  url4: 'https://www.vidal.fr/medicaments/aprexevo-300-mg-5-mg-cp-pellic-214511.html#indications'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Araven Ic 300/5', 
          dciP: 'Irbésartan + Amlodipine', 
          priceP: '43.85', 
          imageP: 'araven-ic 300-5.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Bipreterax 10/2,5', 
                  image4: 'bipreterax 10-2.5.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0285701.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Bipreterax 10/2,5', 
          dciP: 'Perindopril + Indapamide', 
          priceP: '62.32', 
          imageP: 'bipreterax 10-2.5.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Bipreterax 5/1,25', 
                  image4: 'bipreterax 5-1.25.jpg', 
                  url4: 'https://base-donnees-publique.medicaments.gouv.fr/affichageDoc.php?specid=61276216&typedoc=R'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Bipreterax 5/1,25', 
          dciP: 'Perindopril + Indapamide', 
          priceP: '51.81', 
          imageP: 'bipreterax 5-1.25.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Bisocor 5', 
                  image4: 'bisocor 5.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0241692.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Bisocor 5', 
          dciP: 'Bisoprolol', 
          priceP: '6.44', 
          imageP: 'bisocor 5.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Bisocor 2.5', 
                  image4: 'bisocor 2.5.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0241692.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Bisocor 2.5', 
          dciP: 'Bisoprolol', 
          priceP: '5.42', 
          imageP: 'bisocor 2.5.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Bisopral 2,5', 
                  image4: 'bisopral 2.5.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0241692.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Bisopral 2,5', 
          dciP: 'Bisoprolol', 
          priceP: '6.28', 
          imageP: 'bisopral 2.5.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Bi-therapil 10/2,5', 
                  image4: 'bi-therapil 10-2.5.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/notice/N0292925.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Bi-therapil 10/2,5', 
          dciP: 'Perindopril + Indapamide', 
          priceP: '34.97', 
          imageP: 'bi-therapil 10-2.5.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Blopress 16', 
                  image4: 'blopress 16.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/frames.php?specid=62910207&typedoc=R&ref=R0212239.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Blopress 16', 
          dciP: 'Candésartan', 
          priceP: '42.445', 
          imageP: 'blopress 16.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Blopress 8', 
                  image4: 'blopress 8.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/frames.php?specid=62910207&typedoc=R&ref=R0212239.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Blopress 8', 
          dciP: 'Candésartan', 
          priceP: '31.67', 
          imageP: 'blopress 8.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Blopress Plus', 
                  image4: 'blopress plus 16-12.5.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0221439.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Blopress Plus', 
          dciP: 'Candésartan + Hydrochlorothiazide', 
          priceP: '43.62', 
          imageP: 'blopress plus 16-12.5.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Capocard 50', 
                  image4: 'capocard 50.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0256378.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Capocard 50', 
          dciP: 'Captopril', 
          priceP: '14.195', 
          imageP: 'capocard 50.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Capocard 25', 
                  image4: 'capocard 25.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0301770.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Capocard 25', 
          dciP: 'Captopril', 
          priceP: '14.195', 
          imageP: 'capocard 25.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Capril 50', 
                  image4: 'capril 50.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0256378.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Capril 50', 
          dciP: 'Captopril', 
          priceP: '18.65', 
          imageP: 'capril 50.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Capril 25', 
                  image4: 'capril 25.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0301770.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Capril 25', 
          dciP: 'Captopril', 
          priceP: '10.17', 
          imageP: 'capril 25.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Cardensiel 5', 
                  image4: 'cardensiel 5.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0241692.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Cardensiel 5', 
          dciP: 'Bisoprolol', 
          priceP: '16.180', 
          imageP: 'cardensiel 5.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Cardensiel 2,5', 
                  image4: 'cardensiel 2.5.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0241692.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Cardensiel 2,5', 
          dciP: 'Bisoprolol', 
          priceP: '16.180', 
          imageP: 'cardensiel 2.5.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Cebutral 400',
                image4: 'cebutral 400.jpg',
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0271960.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Cebutral 400',
          dciP: 'Acebutolol',
          priceP: '12,69',
          imageP: 'cebutral 400.jpg',
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Celiprol 200',
                image4: 'celiprol 200.jpg', // Use 'aldactone 75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0213831.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Celiprol 200',
          dciP: 'Celiprolol',
          priceP: '12,36',
          imageP: 'celiprol 200.jpg', // Use 'aldactone 75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Cincor 10',
                image4: 'cincor 10.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0241692.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Cincor 10',
          dciP: 'Bisoprolol',
          priceP: '14,91',
          imageP: 'cincor 10.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Cincor 5',
                image4: 'cincor 5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0241692.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Cincor 5',
          dciP: 'Bisoprolol',
          priceP: '7,205',
          imageP: 'cincor 5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Cincor 2,5',
                image4: 'cincor 2.5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0241692.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Cincor 2,5',
          dciP: 'Bisoprolol',
          priceP: '7,33',
          imageP: 'cincor 2.5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Clopix 75',
                image4: 'clopix 75.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0245911.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Clopix 75',
          dciP: 'Clopidogrel',
          priceP: '36,52',
          imageP: 'clopix 75.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'CoAprovel 300/12,5',
                image4: 'coaprovel 300-12.5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0222801.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'CoAprovel 300/12,5',
          dciP: 'Irbesartan + Hydrochlorothiazide',
          priceP: '57,925',
          imageP: 'coaprovel 300-12.5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'CoAprozar 300/12,5',
                image4: 'coaprozar 300-12.5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0222801.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'CoAprozar 300/12,5',
          dciP: 'Irbesartan + Hydrochlorothiazide',
          priceP: '36,68',
          imageP: 'coaprozar 300-12.5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'CoAprozar 300/25',
                image4: 'coaprozar 300-25.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0222801.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'CoAprozar 300/25',
          dciP: 'Irbesartan + Hydrochlorothiazide',
          priceP: '39,105',
          imageP: 'coaprozar 300-25.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Co-aradeux 300/12,5',
                image4: 'co-aradeux 300-12.5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0222801.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Co-aradeux 300/12,5',
          dciP: 'Irbesartan + Hydrochlorothiazide',
          priceP: '33,15',
          imageP: 'co-aradeux 300-12.5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Co-aradeux 150/12,5',
                image4: 'co-aradeux 150-12.5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0222801.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Co-aradeux 150/12,5',
          dciP: 'Irbesartan + Hydrochlorothiazide',
          priceP: '21,68',
          imageP: 'co-aradeux 150-12.5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Co-aradeux 150/12,5 (90)',
                image4: 'co-aradeux 150-12.5 90.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0222801.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Co-aradeux 150/12,5 (90)',
          dciP: 'Irbesartan + Hydrochlorothiazide',
          priceP: '65.800', // Placeholder for price
          imageP: 'co-aradeux 150-12.5 90.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Co-aradeux 300/25',
                image4: 'co-aradeux 300-25.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0222801.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Co-aradeux 300/25',
          dciP: 'Irbesartan + Hydrochlorothiazide',
          priceP: '33,155',
          imageP: 'co-aradeux 300-25.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Co-medzar 50/12,5',
                image4: 'co-medzar 50-12.5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0206099.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Co-medzar 50/12,5',
          dciP: 'Losartan + Hydrochlorothiazide',
          priceP: '24,245',
          imageP: 'co-medzar 50-12.5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Concor Amlo 5/5',
                image4: 'concor amlo 5-5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'https://servier.ma/wp-content/uploads/sites/6/2022/01/Cosyrel_10-mg-5-mg_RCP_Web_decembre-2021.pdf?time=1641980752',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Concor Amlo 5/5',
          dciP: 'Bisoprolol + Amlodipine',
          priceP: '21,005',
          imageP: 'concor amlo 5-5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'CoRapril 10/25',
                image4: 'corapril 10-25.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0206562.htm#:~:text=RAMIPRIL%20HYDROCHLOROTHIAZIDE%20ACTAVIS%20sera%20d%C3%A9but%C3%A9,mg%20d\'hydrochlorothiazide%20par%20jour.',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'CoRapril 10/25',
          dciP: 'Ramipril + Hydrochlorothiazide',
          priceP: '29,93',
          imageP: 'corapril 10-25.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Cordarone 200',
                image4: 'cordarone 200.jpg', // Use 'aldactone_75.jpg' here
                url4: 'https://base-donnees-publique.medicaments.gouv.fr/affichageDoc.php?specid=64408662&typedoc=R',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Cordarone 200',
          dciP: 'Amiodarone',
          priceP: '8,565',
          imageP: 'cordarone 200.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Cosimprel 10/10',
                image4: 'cosimprel 10-10.jpg', // Use 'aldactone_75.jpg' here
                url4: 'https://base-donnees-publique.medicaments.gouv.fr/affichageDoc.php?specid=65942427&typedoc=R',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Cosimprel 10/10',
          dciP: 'Bisoprolol + Perindopril',
          priceP: '33,627',
          imageP: 'cosimprel 10-10.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Cosimprel 5/10',
                image4: 'cosimprel 5-10.jpg.jpg', // Use 'aldactone_75.jpg' here
                url4: 'https://base-donnees-publique.medicaments.gouv.fr/affichageDoc.php?specid=68137895&typedoc=R',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Cosimprel 5/10',
          dciP: 'Bisoprolol + Perindopril',
          priceP: '25,052',
          imageP: 'cosimprel 5-10.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Cosimprel 5/5',
                image4: 'cosimprel 5-5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0284155.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Cosimprel 5/5',
          dciP: 'Bisoprolol + Perindopril',
          priceP: '25,052',
          imageP: 'cosimprel 5-5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Cotareg 160/25',
                image4: 'cotareg 160-25.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0359096.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Cotareg 160/25',
          dciP: 'Valsartan + Hydrochlorothiazide',
          priceP: '61,37',
          imageP: 'cotareg 160-25.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Cotareg 80/12,5',
                image4: 'cotareg 80-12.5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'https://base-donnees-publique.medicaments.gouv.fr/affichageDoc.php?specid=63139718&typedoc=R',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Cotareg 80/12,5',
          dciP: 'Valsartan + Hydrochlorothiazide',
          priceP: '27.245',
          imageP: 'cotareg 80-12.5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Dopanore 250',
                image4: 'dopanore 250.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0201870.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Dopanore 250',
          dciP: 'Methyldopa',
          priceP: '6,125',
          imageP: 'dopanore 250.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'DuoFor 160 / 5',
                image4: 'duo for 160-5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'https://base-donnees-publique.medicaments.gouv.fr/affichageDoc.php?specid=65265651&typedoc=R',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'DuoFor 160 / 5',
          dciP: 'Valsartan + Amlodipine',
          priceP: '55.860',
          imageP: 'duo for 160-5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'DuoFor Plus 160 / 10 / 25',
                image4: 'duo for 160-10-12.5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'https://base-donnees-publique.medicaments.gouv.fr/extrait.php?specid=61045063#',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'DuoFor Plus 160 / 10 / 25',
          dciP: 'Valsartan + Amlodipine + Hydrochlorothiazide',
          priceP: '37.240',
          imageP: 'duo for 160-10-12.5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'DuoFor Plus 160 / 10 / 12,5',
                image4: 'duo for 160-10-12.5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'https://base-donnees-publique.medicaments.gouv.fr/extrait.php?specid=64617605',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'DuoFor Plus 160 / 10 / 12,5',
          dciP: 'Valsartan + Amlodipine + Hydrochlorothiazide',
          priceP: '37.240',
          imageP: 'duo for 160-10-12.5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Evocor 2,5',
                image4: 'evocor 2.5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0252671.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Evocor 2,5',
          dciP: 'Bisoprolol',
          priceP: '8',
          imageP: 'evocor 2.5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Fludex LP 1,5',
                image4: 'fludex lp.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0229462.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Fludex LP 1,5',
          dciP: 'Indapamide',
          priceP: '9,255',
          imageP: 'fludex lp.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Hypoten 100',
                image4: 'hypoten 100.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0275747.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Hypoten 100',
          dciP: 'Aténolol',
          priceP: '13,89',
          imageP: 'hypoten 100.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Hypoten 50',
                image4: 'hypoten 50.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0284171.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Hypoten 50',
          dciP: 'Aténolol',
          priceP: '7,595',
          imageP: 'hypoten 50.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Lasicare 500',
                image4: 'lasicare 500.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0237664.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Lasicare 500',
          dciP: 'Furosémide',
          priceP: '49,14',
          imageP: 'lasicare 500.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Lasicare 40',
                image4: 'lasicare 40.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0216212.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Lasicare 40',
          dciP: 'Furosémide',
          priceP: '2,755',
          imageP: 'lasicare 40.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Lasilix 40',
                image4: 'lasilix 40.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0216212.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Lasilix 40',
          dciP: 'Furosémide',
          priceP: '4,02',
          imageP: 'lasilix 40.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Lodipex 5',
                image4: 'lodipex 5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0225293.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Lodipex 5',
          dciP: 'Amlodipine',
          priceP: '9,08',
          imageP: 'lodipex 5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Lopril 50',
                image4: 'lopril 50.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0235981.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Lopril 50',
          dciP: 'Captopril',
          priceP: '23.288',
          imageP: 'lopril 50.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Lopril 25',
                image4: 'lopril 25.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0235981.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Lopril 25',
          dciP: 'Captopril',
          priceP: '13,015',
          imageP: 'lopril 25.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Losar 50',
                image4: 'losar 50.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0221445.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Losar 50',
          dciP: 'Losartan',
          priceP: '26,79',
          imageP: 'losar 50.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'LosarFort 100',
                image4: 'losar fort 100.jpg', // Use 'aldactone_75.jpg' here
                url4: 'https://base-donnees-publique.medicaments.gouv.fr/affichageDoc.php?specid=65029882&typedoc=R',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'LosarFort 100',
          dciP: 'Losartan',
          priceP: '29,755',
          imageP: 'losar fort 100.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Lowrac 5',
                image4: 'lowrac 5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0225293.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Lowrac 5',
          dciP: 'Amlodipine',
          priceP: '14,75',
          imageP: 'lowrac 5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Loxen LP 50',
                image4: 'loxen lp 50.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0291215.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Loxen LP 50',
          dciP: 'Nicardipine',
          priceP: '27,05',
          imageP: 'loxen lp 50.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Lusopress 20',
                image4: 'lusopress 20.jpg', // Use 'aldactone_75.jpg' here
                url4: 'https://base-donnees-publique.medicaments.gouv.fr/affichageDoc.php?specid=65984700&typedoc=R',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Lusopress 20',
          dciP: 'Nicardipine',
          priceP: '12,508',
          imageP: 'lusopress 20.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Medazar Fort 100',
                image4: 'Medazar Fort 100.jpg', // Use 'aldactone_75.jpg' here
                url4: 'https://base-donnees-publique.medicaments.gouv.fr/affichageDoc.php?specid=65984700&typedoc=R',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Medazar Fort 100',
          dciP: 'Losartan',
          priceP: '69,22',
          imageP: 'Medazar Fort 100.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Mibral 5',
                image4: 'mibral 5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0225293.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Mibral 5',
          dciP: 'Amlodipine',
          priceP: '14,445',
          imageP: 'mibral 5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Natrixam 1,5 / 5',
                image4: 'natrixam 1.5-5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0225293.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Natrixam 1,5 / 5',
          dciP: 'Indapamide + Amlodipine',
          priceP: '14,345',
          imageP: 'natrixam 1.5-5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Nebilet 5',
                image4: 'nebilet 5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0206229.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Nebilet 5',
          dciP: 'Nebivolol',
          priceP: '36,24',
          imageP: 'nebilet 5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Noractone 50',
                image4: 'noractone 50.jpg', // Use 'aldactone_75.jpg' here
                url4: 'https://base-donnees-publique.medicaments.gouv.fr/affichageDoc.php?specid=67368301&typedoc=R',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Noractone 50',
          dciP: 'Spironolactone',
          priceP: '13,45',
          imageP: 'noractone 50.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Normocardil 40',
                image4: 'normocardil 40.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0277345.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Normocardil 40',
          dciP: 'Propranolol',
          priceP: '3,925',
          imageP: 'normocardil 40.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Physiotens 0,2',
                image4: 'physiotens 0.2.jpg', // Use 'aldactone_75.jpg' here
                url4: 'https://base-donnees-publique.medicaments.gouv.fr/affichageDoc.php?specid=64532770&typedoc=R',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Physiotens 0,2',
          dciP: 'Moxonidine',
          priceP: '23,07',
          imageP: 'physiotens 0.2.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Pidogrel 75',
                image4: 'pidogrel 75.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0245911.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Pidogrel 75',
          dciP: 'Clopidogrel',
          priceP: '49,7',
          imageP: 'pidogrel 75.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Plagrel 75',
                image4: 'plagrel 75.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0245911.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Plagrel 75',
          dciP: 'Clopidogrel',
          priceP: '31,325',
          imageP: 'plagrel 75.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Plavix 75',
                image4: 'plavix 75.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0245911.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Plavix 75',
          dciP: 'Clopidogrel',
          priceP: '73,525',
          imageP: 'plavix 75.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Procardin 75',
                image4: 'procardin 75.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0276054.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Procardin 75',
          dciP: 'Dipyridamole',
          priceP: '7,74',
          imageP: 'procardin 75.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Rapril 5',
                image4: 'rapril 5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0276881.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Rapril 5',
          dciP: 'Ramipril',
          priceP: '23,555',
          imageP: 'rapril 5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Sintrom 4',
                image4: 'sintrom 4.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0192847.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Sintrom 4',
          dciP: 'Acenocoumarol',
          priceP: '1,83',
          imageP: 'sintrom 4.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Sotalol Mylan 160',
                image4: 'sotalol mylan 160.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0203323.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Sotalol Mylan 160',
          dciP: 'Sotalol',
          priceP: '10,645',
          imageP: 'sotalol mylan 160.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Tareg 80',
                image4: 'tareg 80.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0251570.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Tareg 80',
          dciP: 'Valsartan',
          priceP: '38,955',
          imageP: 'tareg 80.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Telmycor 40',
                image4: 'telmycore 40.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0251570.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Telmycor 40',
          dciP: 'Telmisartan',
          priceP: '25,565',
          imageP: 'telmycore 40.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Telmycor Plus 80 / 12,5',
                image4: 'telmycore plus 80-12.5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'https://base-donnees-publique.medicaments.gouv.fr/affichageDoc.php?specid=65198779&typedoc=R',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Telmycor Plus 80 / 12,5',
          dciP: 'Telmisartan + Hydrochlorothiazide',
          priceP: '28,46',
          imageP: 'telmycore plus 80-12.5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Tenar 0,4',
                image4: 'tenar 0.4.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0302515.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Tenar 0,4',
          dciP: 'Moxonidine',
          priceP: '29,94',
          imageP: 'tenar 0.4.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Tenar 0,2',
                image4: 'tenar 0.2.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0302515.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Tenar 0,2',
          dciP: 'Moxonidine',
          priceP: '16,865',
          imageP: 'tenar 0.2.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Tensopril 50',
                image4: 'tensopril 50.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0256378.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Tensopril 50',
          dciP: 'Captopril',
          priceP: '15,78',
          imageP: 'tensopril 50.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Tensopril 25',
                image4: 'tensopril 25.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0256378.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Tensopril 25',
          dciP: 'Captopril',
          priceP: '8,465',
          imageP: 'tensopril 25.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Tensiovals Duo 5 / 80',
                image4: 'tensiovals duo 5-80.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0298048.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Tensiovals Duo 5 / 80',
          dciP: 'Amlodipine + Valsartan',
          priceP: '41,755',
          imageP: 'tensiovals duo 5-80.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Theraglor 90',
                image4: 'theraglor 90.jpg', // Use 'aldactone_75.jpg' here
                url4: 'https://base-donnees-publique.medicaments.gouv.fr/extrait.php?specid=61958462',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Theraglor 90',
          dciP: 'Ticagrélor',
          priceP: '128,175',
          imageP: 'theraglor 90.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Therapil 5',
                image4: 'therapil 5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0228758.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Therapil 5',
          dciP: 'Périndopril',
          priceP: '20,01',
          imageP: 'therapil 5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Triatec 10',
                image4: 'triatec 10.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0254006.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Triatec 10',
          dciP: 'Ramipril',
          priceP: '48,28',
          imageP: 'triatec 10.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Triatec 5',
                image4: 'triatec 5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0254006.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Triatec 5',
          dciP: 'Ramipril',
          priceP: '42,79',
          imageP: 'triatec 5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Triatec 2,5',
                image4: 'triatec 2.5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0254006.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Triatec 2,5',
          dciP: 'Ramipril',
          priceP: '34,01',
          imageP: 'triatec 2.5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Twynsta 40 / 5',
                image4: 'twynsta 40-5.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0354787.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Twynsta 40 / 5',
          dciP: 'Telmisartan + Amlodipine',
          priceP: '41,73',
          imageP: 'twynsta 40-5.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Twynsta 80 / 10',
                image4: 'twynsta 80-10.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0354787.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Twynsta 80 / 10',
          dciP: 'Telmisartan + Amlodipine',
          priceP: '47,08',
          imageP: 'twynsta 80-10.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Value Plus 160 / 5',
                image4: 'value plus 160-10.png', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0354787.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Value Plus 160 / 5',
          dciP: 'Telmisartan + Amlodipine',
          priceP: '38,26',
          imageP: 'value plus 160-10.png', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Vastarel 35',
                image4: 'vastarel 35.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0230315.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Vastarel 35',
          dciP: 'Trimétazidine',
          priceP: '28,375',
          imageP: 'vastarel 35.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Zanextra 20 / 10',
                image4: 'zanextra 20-10.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0262344.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Zanextra 20 / 10',
          dciP: 'Enalapril + Lercanidipine',
          priceP: '39,04',
          imageP: 'zanextra 20-10.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Zanextra 20 / 20',
                image4: 'zanextra 20-20.jpg', // Use 'aldactone_75.jpg' here
                url4: 'https://base-donnees-publique.medicaments.gouv.fr/affichageDoc.php?specid=69939179&typedoc=R',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Zanextra 20 / 20',
          dciP: 'Enalapril + Lercanidipine',
          priceP: '51,03',
          imageP: 'zanextra 20-20.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Zanidip 20',
                image4: 'zanidip-20.jpg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0229475.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Zanidip 20',
          dciP: 'Lercanidipine',
          priceP: '35,24',
          imageP: 'zanidip-20.jpg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Zanidip 10',
                image4: 'zanidip 10.jpeg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0229475.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Zanidip 10',
          dciP: 'Lercanidipine',
          priceP: '32,805',
          imageP: 'zanidip 10.jpeg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageIV(
                name4: 'Zarteg 160',
                image4: 'zarteg 160.jpeg', // Use 'aldactone_75.jpg' here
                url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0251570.htm',
              ),
            ),
          );
        },
        child: const ProductBox(
          nameP: 'Zarteg 160',
          dciP: 'Valsartan',
          priceP: '32,845',
          imageP: 'zarteg 160.jpeg', // Use 'aldactone_75.jpg' here
        ),
      ),
    );

  }


  void _runFilter(String enteredKeyword ) { 
  List<Widget> results = [];

  if (enteredKeyword.isNotEmpty) {
    results = _allProds
        .where((widget) => widget is GestureDetector && 
            widget.child is ProductBox &&
            (widget.child as ProductBox)
                .nameP
                .toLowerCase()
                .startsWith(enteredKeyword.toLowerCase()))
        .toList();
  }

  setState(() {
    _foundProds = List.from(results); 
  });
}

void _runFiltredFilter(List<String> eleEsmou ) { 
  List<Widget> results = [];
  print('object');
  if (eleEsmou.isNotEmpty) {
    results = _allProds
      .where((widget) => widget is GestureDetector && 
        widget.child is ProductBox &&
        eleEsmou.any((element) => equalsIgnoreCase((widget.child as ProductBox)
          .nameP, element))) 
    .toList();
  }

  setState(() {
    _foundFiltredProds = List.from(results); 
  });
}
//fait


  @override
  Widget build(BuildContext context) {
    double ButtomMargin = MediaQuery.of(context).size.height * 0.02;
    double TopMargin = MediaQuery.of(context).size.height * 0.11;
    double EdgeMargin = MediaQuery.of(context).size.width * 0.02;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width, //   width,
          height: MediaQuery.of(context).size.height, //   height,
          decoration: const BoxDecoration(
            color: Color(0xfff6f5f5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.2,
                child: Stack(
                  children: [

                    Positioned(
                      left: MediaQuery.of(context).size.width * 0.0483,
                      top: MediaQuery.of(context).size.height * 0.108,
                      child: Align(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.879,
                          height: MediaQuery.of(context).size.height * 0.07,
                          child: const Text(
                            'Systeme Cardio-vasculaire',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              height: 1.3666666667,
                              letterSpacing: 0.4099999964,
                              color: Color(0xff2d0c57),
                            ),
                          ),
                        ),
                      ),
                    ),
                  
                    Positioned(
                      right: 0,
                      top: 0,
                      child: Align(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.48,
                          height: MediaQuery.of(context).size.height * 0.16,
                          child: Opacity(
                            opacity: 0.45,
                            child: Container(
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/cardio.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  
                    Positioned(
                      top: 0,
                      left: 0,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const PageII() ),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 1),
                          padding: const EdgeInsets.fromLTRB(21, 62, 21, 22),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width *  0.025,
                              height: MediaQuery.of(context).size.width *  0.025,
                              child: Image.asset(
                                'images/backup.png',
                               // width: MediaQuery.of(context).size.width *  0.0144,
                                //height: MediaQuery.of(context).size.height * 0.133,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    
                  ],
                ),
              ),
            
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.055,
                margin: EdgeInsets.fromLTRB(2.5*EdgeMargin, 0, EdgeMargin, 0),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffd8d0e3)),
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(27.0),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 5*EdgeMargin,
                      height: 5* EdgeMargin,
                      margin: EdgeInsets.fromLTRB(1.2*EdgeMargin, 0, 0, 0),
                      child: Image.asset(
                        'images/rechercher.png',
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (value) => _runFilter(value),
                        decoration: const InputDecoration(
                        labelText: 'Chercher',
                        hintText: 'Entrez une specialité',
                        hintStyle: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          height: 1.2941176471,
                          letterSpacing: -0.41,
                          color: Color(0xff9586a8),
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                        isDense: true,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(
            child: _foundFiltredProds.isNotEmpty
                ? ListView.builder(
                    itemCount: _foundFiltredProds.length,
                    itemBuilder: (context, index) {
                      return _foundFiltredProds[index];
                    },
                  )
                : _foundProds.isNotEmpty
                    ? ListView.builder(
                        itemCount: _foundProds.length,
                        itemBuilder: (context, index) {
                          return _foundProds[index];
                        },
                      )
                    : Center(
                        child: Container(
                        margin: EdgeInsets.fromLTRB(1.5*EdgeMargin, 0, 1.5*EdgeMargin, 0),
                        child: Text(
                          'Les caractéristiques choisies ne correspondent pas à une spécialité de médicament présente dans la base de données \n \nMERCI de réinitialisez avant de filtrer une autre fois ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            height: 1.4,
                            letterSpacing: -0.41,
                            color: Color(0xff9586a8),
                          ),
                        ),
                      ),),
          ),

  
              



            ],
          ),
        ),
      ),
    );
  }
}
//validé
class PageIIIGastro extends StatefulWidget {
  const PageIIIGastro({super.key});

  @override
  State<PageIIIGastro> createState() => _PageIIIgastroState();
}
//validé
class _PageIIIgastroState extends State<PageIIIGastro> {


  final List<Widget> _allProds = [];
  List<Widget> _foundProds = [];

  @override
  void initState() {
    super.initState();
    _foundProds = List.from(_allProds);
    _addAllProds();
  }

   void _addAllProds () {

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Primperan 10', 
                  image4: 'primperan 10.jpeg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0241455.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Primperan 10', 
          dciP: 'Metoclopramide', 
          priceP: '4.080', 
          imageP: 'primperan 10.jpeg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Spasmocalm 80', 
                  image4: 'spasmocalm.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0235261.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Spasmocalm 80', 
          dciP: 'Phloroglucinol', 
          priceP: '7.704', 
          imageP: 'spasmocalm.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Gastral 20', 
                  image4: 'gastral.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0227266.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Gastral 20', 
          dciP: 'Oméprazole', 
          priceP: '43.560', 
          imageP: 'gastral.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Ippsium 40', 
                  image4: 'ippsium 40.png', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0206444.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Ippsium 40', 
          dciP: 'Esomeprazole', 
          priceP: '26.355', 
          imageP: 'ippsium 40.png',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Nautamine 90', 
                  image4: 'nautamine 90.jpeg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/frames.php?specid=62444574&typedoc=R&ref=R0214741.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Nautamine 90', 
          dciP: 'Di(acéfylline) diphénhydramine', 
          priceP: '3.645', 
          imageP: 'nautamine 90.jpeg',
        ) ,
      ),
    );

  }


  void _runFilter(String enteredKeyword) {
  List<Widget> results = [];

  if (enteredKeyword.isEmpty) {
    results = List.from(_allProds);
  } else {
    results = _allProds
        .where((widget) => widget is GestureDetector &&
            widget.child is ProductBox &&
            (widget.child as ProductBox)
                .nameP
                .toLowerCase()
                .startsWith(enteredKeyword.toLowerCase()))
        .toList();
  }

  setState(() {
    _foundProds = List.from(results);
  });
}



  @override
  Widget build(BuildContext context) {
    double ButtomMargin = MediaQuery.of(context).size.height * 0.02;
    double TopMargin = MediaQuery.of(context).size.height * 0.11;
    double EdgeMargin = MediaQuery.of(context).size.width * 0.02;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width, //   width,
          height: MediaQuery.of(context).size.height, //   height,
          decoration: const BoxDecoration(
            color: Color(0xfff6f5f5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.2,
                child: Stack(
                  children: [

                    Positioned(
                      left: MediaQuery.of(context).size.width * 0.0483,
                      top: MediaQuery.of(context).size.height * 0.108,
                      child: Align(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.879,
                          height: MediaQuery.of(context).size.height * 0.07,
                          child: const Text(
                            'Systeme Gastro-intestinal',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              height: 1.3666666667,
                              letterSpacing: 0.4099999964,
                              color: Color(0xff2d0c57),
                            ),
                          ),
                        ),
                      ),
                    ),
                  
                    Positioned(
                      right: 0,
                      top: 0,
                      child: Align(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.16,
                          child: Opacity(
                            opacity: 0.45,
                            child: Container(
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/gastro.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  
                    Positioned(
                      top: 0,
                      left: 0,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const PageII() ),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 1),
                          padding: const EdgeInsets.fromLTRB(21, 62, 21, 22),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width *  0.025,
                              height: MediaQuery.of(context).size.width *  0.025,
                              child: Image.asset(
                                'images/backup.png',
                               // width: MediaQuery.of(context).size.width *  0.0144,
                                //height: MediaQuery.of(context).size.height * 0.133,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    
                  ],
                ),
              ),
            
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.055,
                margin: EdgeInsets.fromLTRB(2.5*EdgeMargin, 0, EdgeMargin, 0),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffd8d0e3)),
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(27.0),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 5*EdgeMargin,
                      height: 5* EdgeMargin,
                      margin: EdgeInsets.fromLTRB(1.2*EdgeMargin, 0, 0, 0),
                      child: Image.asset(
                        'images/rechercher.png',
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (value) => _runFilter(value),
                        decoration: const InputDecoration(
                        labelText: 'Chercher',
                        hintText: 'Entrez une specialité',
                        hintStyle: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          height: 1.2941176471,
                          letterSpacing: -0.41,
                          color: Color(0xff9586a8),
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                        isDense: true,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(
                child: _foundProds.isNotEmpty
                  ? ListView.builder(
                      itemCount: _foundProds.length,
                      itemBuilder: (context, index) {
                        return _foundProds[index];
                      },
                    )
                  : ListView.builder(
                      itemCount: _allProds.length,
                      itemBuilder: (context, index) {
                        return _allProds[index];
                      },
                    ),
              ),




            ],
          ),
        ),
      ),
    );
  }
}
//validé
class PageIIINeuro extends StatefulWidget {
  const PageIIINeuro({super.key});

  @override
  State<PageIIINeuro> createState() => _PageIIIneuroState();
}
//validé
class _PageIIIneuroState extends State<PageIIINeuro> {


  final List<Widget> _allProds = [];
  List<Widget> _foundProds = [];

  @override
  void initState() {
    super.initState();
    _foundProds = List.from(_allProds);
    _addAllProds();
  }

  void _addAllProds () {

      _allProds.add(
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const PageIV(
                    name4: 'Atarax 25', 
                    image4: 'atarax 25.jpeg', 
                    url4: 'https://base-donnees-publique.medicaments.gouv.fr/affichageDoc.php?specid=61519586&typedoc=R'
                    ),
                  ),
            );
          },
          child: const ProductBox(
            nameP: 'Atarax 25', 
            dciP: 'Hydroxyzine', 
            priceP: '6.086', 
            imageP: 'atarax 25.jpeg',
          ) ,
        ),
      );

      _allProds.add(
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const PageIV(
                    name4: 'Dogmatil 50', 
                    image4: 'dogmatil 50.jpg', 
                    url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0223308.htm'
                    ),
                  ),
            );
          },
          child: const ProductBox(
            nameP: 'Dogmatil 50', 
            dciP: 'Sulpiridum', 
            priceP: '5.430', 
            imageP: 'dogmatil 50.jpg',
          ) ,
        ),
      );

      _allProds.add(
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const PageIV(
                    name4: 'Lysanxia 10', 
                    image4: 'lysanxia 10.jpg', 
                    url4: 'https://base-donnees-publique.medicaments.gouv.fr/affichageDoc.php?specid=62949690&typedoc=R'
                    ),
                  ),
            );
          },
          child: const ProductBox(
            nameP: 'Lysanxia 10', 
            dciP: 'Prazépam', 
            priceP: '5.602', 
            imageP: 'lysanxia 10.jpg',
          ) ,
        ),
      );

      _allProds.add(
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const PageIV(
                    name4: 'Xanax 0.5', 
                    image4: 'xanax 0.5.jpg', 
                    url4: 'https://base-donnees-publique.medicaments.gouv.fr/affichageDoc.php?specid=60647049&typedoc=R'
                    ),
                  ),
            );
          },
          child: const ProductBox(
            nameP: 'Xanax 0.5', 
            dciP: 'Alprazolam', 
            priceP: '6,015', 
            imageP: 'xanax 0.5.jpg',
          ) ,
        ),
      );


    }
  

  void _runFilter(String enteredKeyword) {
  List<Widget> results = [];

  if (enteredKeyword.isEmpty) {
    results = List.from(_allProds);
  } else {
    results = _allProds
        .where((widget) => widget is GestureDetector &&
            widget.child is ProductBox &&
            (widget.child as ProductBox)
                .nameP
                .toLowerCase()
                .startsWith(enteredKeyword.toLowerCase()))
        .toList();
  }

  setState(() {
    _foundProds = List.from(results);
  });
}


  @override
  Widget build(BuildContext context) {
    double ButtomMargin = MediaQuery.of(context).size.height * 0.02;
    double TopMargin = MediaQuery.of(context).size.height * 0.11;
    double EdgeMargin = MediaQuery.of(context).size.width * 0.02;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width, //   width,
          height: MediaQuery.of(context).size.height, //   height,
          decoration: const BoxDecoration(
            color: Color(0xfff6f5f5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.2,
                child: Stack(
                  children: [

                    Positioned(
                      left: MediaQuery.of(context).size.width * 0.0483,
                      top: MediaQuery.of(context).size.height * 0.108,
                      child: Align(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.879,
                          height: MediaQuery.of(context).size.height * 0.07,
                          child: const Text(
                            'Systeme Neurologique',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              height: 1.3666666667,
                              letterSpacing: 0.4099999964,
                              color: Color(0xff2d0c57),
                            ),
                          ),
                        ),
                      ),
                    ),
                  
                    Positioned(
                      right: 0,
                      top: 0,
                      child: Align(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.35,
                          height: MediaQuery.of(context).size.height * 0.16,
                          child: Opacity(
                            opacity: 0.45,
                            child: Container(
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/neuro.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  
                    Positioned(
                      top: 0,
                      left: 0,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const PageII() ),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 1),
                          padding: const EdgeInsets.fromLTRB(21, 62, 21, 22),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width *  0.025,
                              height: MediaQuery.of(context).size.width *  0.025,
                              child: Image.asset(
                                'images/backup.png',
                               // width: MediaQuery.of(context).size.width *  0.0144,
                                //height: MediaQuery.of(context).size.height * 0.133,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    
                  ],
                ),
              ),
            
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.055,
                margin: EdgeInsets.fromLTRB(2.5*EdgeMargin, 0, EdgeMargin, 0),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffd8d0e3)),
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(27.0),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 5*EdgeMargin,
                      height: 5* EdgeMargin,
                      margin: EdgeInsets.fromLTRB(1.2*EdgeMargin, 0, 0, 0),
                      child: Image.asset(
                        'images/rechercher.png',
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (value) => _runFilter(value),
                        decoration: const InputDecoration(
                        labelText: 'Chercher',
                        hintText: 'Entrez une specialité',
                        hintStyle: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          height: 1.2941176471,
                          letterSpacing: -0.41,
                          color: Color(0xff9586a8),
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                        isDense: true,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(
                child: _foundProds.isNotEmpty
                  ? ListView.builder(
                      itemCount: _foundProds.length,
                      itemBuilder: (context, index) {
                        return _foundProds[index];
                      },
                    )
                  : ListView.builder(
                      itemCount: _allProds.length,
                      itemBuilder: (context, index) {
                        return _allProds[index];
                      },
                    ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
//validé
class PageIIINfect extends StatefulWidget {
  const PageIIINfect({super.key});

  @override
  State<PageIIINfect> createState() => _PageIIINfectState();
}
//validé
class _PageIIINfectState extends State<PageIIINfect> {


  final List<Widget> _allProds = [];
  List<Widget> _foundProds = [];

  @override
  void initState() {
    super.initState();
    _foundProds = List.from(_allProds);
    _addAllProds();
  }

  void _addAllProds () {

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Azro 500', 
                  image4: 'azro.png', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0235752.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Azro 500', 
          dciP: 'Azithromycine', 
          priceP: '11.925', 
          imageP: 'azro.png',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Augmentin 1g', 
                  image4: 'augmentin 1.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0235119.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Augmentin 1g', 
          dciP: 'Amoxicilline + acid clav', 
          priceP: '5.430', 
          imageP: 'augmentin 1.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Flagyl 250', 
                  image4: 'flagyl 250.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0240905.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Flagyl 250', 
          dciP: 'Metronidazole', 
          priceP: '3.685', 
          imageP: 'flagyl 250.jpg',
        ) ,
      ),
    );

    _allProds.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageIV(
                  name4: 'Tamizol 500', 
                  image4: 'tamizol 500.jpg', 
                  url4: 'http://agence-prd.ansm.sante.fr/php/ecodex/rcp/R0240905.htm'
                  ),
                ),
          );
        },
        child: const ProductBox(
          nameP: 'Tamizol 500', 
          dciP: 'Métronidazole', 
          priceP: '4.164', 
          imageP: 'tamizol 500.jpg',
        ) ,
      ),
    );

  }


  void _runFilter(String enteredKeyword) {
  List<Widget> results = [];

  if (enteredKeyword.isEmpty) {
    results = List.from(_allProds);
  } else {
    results = _allProds
        .where((widget) => widget is GestureDetector &&
            widget.child is ProductBox &&
            (widget.child as ProductBox)
                .nameP
                .toLowerCase()
                .startsWith(enteredKeyword.toLowerCase()))
        .toList();
  }

  setState(() {
    _foundProds = List.from(results);
  });
}


  @override
  Widget build(BuildContext context) {
    double ButtomMargin = MediaQuery.of(context).size.height * 0.02;
    double TopMargin = MediaQuery.of(context).size.height * 0.11;
    double EdgeMargin = MediaQuery.of(context).size.width * 0.02;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width, //   width,
          height: MediaQuery.of(context).size.height, //   height,
          decoration: const BoxDecoration(
            color: Color(0xfff6f5f5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.2,
                child: Stack(
                  children: [

                    Positioned(
                      left: MediaQuery.of(context).size.width * 0.0483,
                      top: MediaQuery.of(context).size.height * 0.108,
                      child: Align(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.879,
                          height: MediaQuery.of(context).size.height * 0.07,
                          child: const Text(
                            'Systeme Anti-infectieux',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              height: 1.3666666667,
                              letterSpacing: 0.4099999964,
                              color: Color(0xff2d0c57),
                            ),
                          ),
                        ),
                      ),
                    ),
                  
                    Positioned(
                      right: 0,
                      top: 0,
                      child: Align(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.35,
                          height: MediaQuery.of(context).size.height * 0.16,
                          child: Opacity(
                            opacity: 0.45,
                            child: Container(
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/infect.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  
                    Positioned(
                      top: 0,
                      left: 0,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const PageII() ),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 1),
                          padding: const EdgeInsets.fromLTRB(21, 62, 21, 22),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width *  0.025,
                              height: MediaQuery.of(context).size.width *  0.025,
                              child: Image.asset(
                                'images/backup.png',
                                fit: BoxFit.contain,
                               // width: MediaQuery.of(context).size.width *  0.0144,
                                //height: MediaQuery.of(context).size.height * 0.133,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    
                  ],
                ),
              ),
            
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.055,
                margin: EdgeInsets.fromLTRB(2.5*EdgeMargin, 0, EdgeMargin, 0),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffd8d0e3)),
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(27.0),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 5*EdgeMargin,
                      height: 5* EdgeMargin,
                      margin: EdgeInsets.fromLTRB(1.2*EdgeMargin, 0, 0, 0),
                      child: Image.asset(
                        'images/rechercher.png',
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (value) => _runFilter(value),
                        decoration: const InputDecoration(
                        labelText: 'Chercher',
                        hintText: 'Entrez une specialité',
                        hintStyle: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          height: 1.2941176471,
                          letterSpacing: -0.41,
                          color: Color(0xff9586a8),
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                        isDense: true,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(
                child: _foundProds.isNotEmpty
                  ? ListView.builder(
                      itemCount: _foundProds.length,
                      itemBuilder: (context, index) {
                        return _foundProds[index];
                      },
                    )
                  : ListView.builder(
                      itemCount: _allProds.length,
                      itemBuilder: (context, index) {
                        return _allProds[index];
                      },
                    ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
//validé
class ProductBox extends StatefulWidget {
  const ProductBox({
    Key? key,
    required this.nameP,
    required this.dciP,
    required this.priceP,
    required this.imageP,
  }) : super(key: key);

  final String nameP;
  final String dciP;
  final String priceP;
  final String imageP;

  @override
  State<ProductBox> createState() => _ProductBoxState();
}
//validé
class _ProductBoxState extends State<ProductBox> {

  @override
  Widget build(BuildContext context) {
    return Container(
      
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 16),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height *  0.13,
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height *  0.13,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
              width: MediaQuery.of(context).size.width *  0.28,
              height: MediaQuery.of(context).size.height * 0.12,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: const Color(0xff000000)),
                color: const Color(0xffdbd8dd),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'images/${widget.imageP}'
                    ),
                  
                  ),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x3f000000),
                    offset: Offset(0, 4),
                    blurRadius: 2,
                  ),
                ],
              ),
            ),


            
            Expanded(
              flex: 1,
              child:SizedBox(
                height: MediaQuery.of(context).size.height * 0.12,
                width: MediaQuery.of(context).size.width * 0.5,
                child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Expanded(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                      //margin: const EdgeInsets.fromLTRB(0, 0, 0, 14),
                      child: Text(
                        widget.nameP,
                        style: const TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          height: 1.222,
                          letterSpacing: -0.41,
                          color: Color(0xff2d0c57),
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                      //margin: const EdgeInsets.fromLTRB(1, 0, 0, 22),
                      child: Text(
                        widget.dciP,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          height: 1.375,
                          letterSpacing: -0.41,
                          color: Color(0xff9586a8),
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                      width: MediaQuery.of(context).size.width * 0.49,
                        child: Row(
                        children: [
                          Text(
                            widget.priceP,
                            style: const TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 22,
                              fontWeight: FontWeight.w400,
                              height: 1,
                              letterSpacing: -0.41,
                              color: Color(0xff2d0c57),
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          const Text(
                            'Dt',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              height: 1.375,
                              letterSpacing: -0.41,
                              color: Color(0xff9586a8),
                            ),
                          ),
                        ],
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
//validé
class PageIV extends StatefulWidget {
  const PageIV({
    Key? key,
    required this.name4,
    required this.image4,
    required this.url4
  }) : super(key: key);

  final String name4;
  final String image4;
  final String url4;

  @override
  State<PageIV> createState() => _PageIVState();
}
//validé
class _PageIVState extends State<PageIV> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      //  title: const Text("Page IV"),
      //),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            color: Color(0xfff6f5f5),
          ),
          child: Stack(
            children: [

              Positioned(
                right: 0,
                top: 0,
                child: Align(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.372,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("images/${widget.image4}"),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Positioned(
                top: 0,
                left: 0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PageIIICardio()),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 1),
                    padding: const EdgeInsets.fromLTRB(21, 62, 21, 22),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width *  0.025,
                        height: MediaQuery.of(context).size.width *  0.025,
                        child: Image.asset(
                          'images/backup.png',
                          //width: MediaQuery.of(context).size.width *  0.0144,
                          //height: MediaQuery.of(context).size.height * 0.133,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              
              Positioned(
                left: 0,
                top: MediaQuery.of(context).size.height * 0.313,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.687,
                  decoration: const BoxDecoration(
                    color: Color(0xfff6f5f5),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(20, 37, 20, 69),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                          child: Text(
                            widget.name4,
                            style: const TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                              height: 1.3666666667,
                              letterSpacing: 0.4099999964,
                              color: Color(0xff2d0c57),
                            ),
                          ),
                        ),

                        SizedBox(
                          width: MediaQuery.of(context).size.width *  0.84,
                          height: MediaQuery.of(context).size.height * 0.37,
                          child: Column(
                            children: [

                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height * 0.04,
                              ),

                              Expanded(
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.84,
                                  height: MediaQuery.of(context).size.height * 0.25,
                                  child: GestureDetector(
                                    onTap: () async {
                                      var url = widget.url4;
                                      if (await canLaunch(widget.url4)) {
                                        await launch(widget.url4);
                                      } else {
                                        throw 'Cannot launch URL';
                                      }
                                    },
                                    child: RichText(
                                      text: const TextSpan(
                                        text: 'Lien pour le RCP du médicament: ',
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5,
                                          letterSpacing: -0.4099999964,
                                          color: Color(0xff9586a8),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
       
                            ],
                          ),
                        ),
                      
                      ],
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
//validé
class PageIVGastro extends StatefulWidget {
  const PageIVGastro({
    Key? key,
    required this.name4,
    required this.image4,
    required this.url4
  }) : super(key: key);

  final String name4;
  final String image4;
  final String url4;

  @override
  State<PageIVGastro> createState() => _PageIVGastroState();
}
//validé
class _PageIVGastroState extends State<PageIVGastro> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      //  title: const Text("Page IV"),
      //),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            color: Color(0xfff6f5f5),
          ),
          child: Stack(
            children: [

              Positioned(
                right: 0,
                top: 0,
                child: Align(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.372,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("images/${widget.image4}"),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Positioned(
                top: 0,
                left: 0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PageIIIGastro()),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 1),
                    padding: const EdgeInsets.fromLTRB(21, 62, 21, 22),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width *  0.025,
                        height: MediaQuery.of(context).size.width *  0.025,
                        child: Image.asset(
                          'images/backup.png',
                         // width: MediaQuery.of(context).size.width *  0.0144,
                          //height: MediaQuery.of(context).size.height * 0.133,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              
              Positioned(
                left: 0,
                top: MediaQuery.of(context).size.height * 0.313,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.687,
                  decoration: const BoxDecoration(
                    color: Color(0xfff6f5f5),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(20, 37, 20, 69),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                          child: Text(
                            widget.name4,
                            style: const TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                              height: 1.3666666667,
                              letterSpacing: 0.4099999964,
                              color: Color(0xff2d0c57),
                            ),
                          ),
                        ),

                        SizedBox(
                          width: MediaQuery.of(context).size.width *  0.84,
                          height: MediaQuery.of(context).size.height * 0.37,
                          child: Column(
                            children: [

                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height * 0.04,
                              ),

                              Expanded(
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.84,
                                  height: MediaQuery.of(context).size.height * 0.25,
                                  child: GestureDetector(
                                    onTap: () async {
                                      var url = widget.url4;
                                      if (await canLaunch(widget.url4)) {
                                        await launch(widget.url4);
                                      } else {
                                        throw 'Cannot launch URL';
                                      }
                                    },
                                    child: RichText(
                                      text: const TextSpan(
                                        text: 'Lien pour le RCP du médicament: ',
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5,
                                          letterSpacing: -0.4099999964,
                                          color: Color(0xff9586a8),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
       
                            ],
                          ),
                        ),
                      
                      ],
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
//validé
class PageIVNeuro extends StatefulWidget {
  const PageIVNeuro({
    Key? key,
    required this.name4,
    required this.image4,
    required this.url4
  }) : super(key: key);

  final String name4;
  final String image4;
  final String url4;

  @override
  State<PageIVNeuro> createState() => _PageIVNeuroState();
}
//validé
class _PageIVNeuroState extends State<PageIVNeuro> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      //  title: const Text("Page IV"),
      //),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            color: Color(0xfff6f5f5),
          ),
          child: Stack(
            children: [

              Positioned(
                right: 0,
                top: 0,
                child: Align(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.372,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("images/${widget.image4}"),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Positioned(
                top: 0,
                left: 0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PageIIINeuro()),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 1),
                    padding: const EdgeInsets.fromLTRB(21, 62, 21, 22),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width *  0.025,
                        height: MediaQuery.of(context).size.width *  0.025,
                        child: Image.asset(
                          'images/backup.png',
                         // width: MediaQuery.of(context).size.width *  0.0144,
                          //height: MediaQuery.of(context).size.height * 0.133,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              
              Positioned(
                left: 0,
                top: MediaQuery.of(context).size.height * 0.313,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.687,
                  decoration: const BoxDecoration(
                    color: Color(0xfff6f5f5),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(20, 37, 20, 69),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                          child: Text(
                            widget.name4,
                            style: const TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                              height: 1.3666666667,
                              letterSpacing: 0.4099999964,
                              color: Color(0xff2d0c57),
                            ),
                          ),
                        ),

                        SizedBox(
                          width: MediaQuery.of(context).size.width *  0.84,
                          height: MediaQuery.of(context).size.height * 0.37,
                          child: Column(
                            children: [

                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height * 0.04,
                              ),

                              Expanded(
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.84,
                                  height: MediaQuery.of(context).size.height * 0.25,
                                  child: GestureDetector(
                                    onTap: () async {
                                      var url = widget.url4;
                                      if (await canLaunch(widget.url4)) {
                                        await launch(widget.url4);
                                      } else {
                                        throw 'Cannot launch URL';
                                      }
                                    },
                                    child: RichText(
                                      text: const TextSpan(
                                        text: 'Lien pour le RCP du médicament: ',
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5,
                                          letterSpacing: -0.4099999964,
                                          color: Color(0xff9586a8),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
       
                            ],
                          ),
                        ),
                      
                      ],
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
//validé
class PageIVInf extends StatefulWidget {
  const PageIVInf({
    Key? key,
    required this.name4,
    required this.image4,
    required this.url4
  }) : super(key: key);

  final String name4;
  final String image4;
  final String url4;

  @override
  State<PageIVInf> createState() => _PageIVInfState();
}
//validé
class _PageIVInfState extends State<PageIVInf> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      //  title: const Text("Page IV"),
      //),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            color: Color(0xfff6f5f5),
          ),
          child: Stack(
            children: [

              Positioned(
                right: 0,
                top: 0,
                child: Align(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.372,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("images/${widget.image4}"),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Positioned(
                top: 0,
                left: 0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PageIIINfect()),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 1),
                    padding: const EdgeInsets.fromLTRB(21, 62, 21, 22),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width *  0.025,
                        height: MediaQuery.of(context).size.width *  0.025,
                        child: Image.asset(
                          'images/backup.png',
                          //width: MediaQuery.of(context).size.width *  0.0144,
                          //height: MediaQuery.of(context).size.height * 0.133,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              
              Positioned(
                left: 0,
                top: MediaQuery.of(context).size.height * 0.313,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.687,
                  decoration: const BoxDecoration(
                    color: Color(0xfff6f5f5),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(20, 37, 20, 69),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                          child: Text(
                            widget.name4,
                            style: const TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                              height: 1.3666666667,
                              letterSpacing: 0.4099999964,
                              color: Color(0xff2d0c57),
                            ),
                          ),
                        ),

                        SizedBox(
                          width: MediaQuery.of(context).size.width *  0.84,
                          height: MediaQuery.of(context).size.height * 0.37,
                          child: Column(
                            children: [

                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height * 0.04,
                              ),

                              Expanded(
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.84,
                                  height: MediaQuery.of(context).size.height * 0.25,
                                  child: GestureDetector(
                                    onTap: () async {
                                      var url = widget.url4;
                                      if (await canLaunch(widget.url4)) {
                                        await launch(widget.url4);
                                      } else {
                                        throw 'Cannot launch URL';
                                      }
                                    },
                                    child: RichText(
                                      text: const TextSpan(
                                        text: 'Lien pour le RCP du médicament: ',
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5,
                                          letterSpacing: -0.4099999964,
                                          color: Color(0xff9586a8),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
       
                            ],
                          ),
                        ),
                      
                      ],
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
//validé

