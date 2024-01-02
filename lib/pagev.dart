import 'package:finalpillidentifier/pageii.dart';
import 'package:finalpillidentifier/pagevi.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Pill Identifier",
    home: PageV(),
  ));
}

class PageV extends StatefulWidget {
  const PageV({super.key});

  @override
  State<PageV> createState() => _PageVWidgetState();
}

class _PageVWidgetState extends State<PageV> {
  int _currentIndex = 1;

  final GlobalKey<_DropDowState> _dciDropdownKey = GlobalKey();
  final GlobalKey<_DropDowState> _formegeoDropdownKey = GlobalKey();
  final GlobalKey<_DropDowState> _nbDciDropdownKey = GlobalKey();
  final GlobalKey<_DropDowState> _dosageDropdownKey = GlobalKey();
  final GlobalKey<_DropDowState> _contenanceDropdownKey = GlobalKey();
  final GlobalKey<_DropDowState> _industrieDropdownKey = GlobalKey();
  final GlobalKey<_DropDowState> _nbCIDropdownKey = GlobalKey();
  final GlobalKey<_DropDowState> _perCIDropdownKey = GlobalKey();
  final GlobalKey<_DropDowState> _nbUnCIDropdownKey = GlobalKey();
  final GlobalKey<_DropDowState> _enrPelDropdownKey = GlobalKey();
  final GlobalKey<_DropDowState> _secabiliteDropdownKey = GlobalKey();
  final GlobalKey<_DropDowState> _couleurCIbackDropdownKey = GlobalKey();
  final GlobalKey<_DropDowState> _formeCIDropdownKey = GlobalKey();
  final GlobalKey<_DropDowState> _prixDropdownKey = GlobalKey();
  final GlobalKey<_DropDowState> _couleurCIIDropdownKey = GlobalKey();
  final GlobalKey<_DropDowState> _couleurCIDropdownKey = GlobalKey();

  List<Element> elements = [
    Element(
      "Amlodipine",
      "cercle",
      "1",
      "10 mg",
      "30",
      "Medis",
      "2",
      "non",
      "15",
      "oui",
      "oui",
      "blanc",
      "tablette",
      "13.215",
      "blanc + rouge + bleu", 
      "gris + bleu + rouge",
      "Amlodipine 10" // Placed at the last position
    ),

    Element(
      "Amlodipine",
      "cercle",
      "1",
      "5 mg",
      "30",
      "Medis",
      "2",
      "non",
      "15",
      "oui",
      "oui",
      "blanc",
      "tablette",
      "9.081",
      "blanc + bleu + violet", //manquant
      "gris + violet + bleu",
      "Amlodipine 5" // Placed at the last position
    ),

    Element(
      "Amlodipine",
      "cercle",
      "1",
      "10 mg",
      "30",
      "Teriak",
      "2",
      "non",
      "15",
      "non",
      "non",
      "blanc",
      "tablette",
      "21.9",
      "blanc + rouge + bleu",
      "gris + noir + rouge",
      "Amlodis 10" // Placed at the last position
    ),

    Element(
      "Amlodipine",
      "cercle",
      "1",
      "5 mg",
      "30",
      "Teriak",
      "2",
      "non",
      "15",
      "non",
      "non",
      "blanc",
      "tablette",
      "15.785",
      "blanc + bleu",
      "gris + noir + rouge",
      "Amlodis 5" // Placed at the last position
    ),

    Element(
      "Enalapril",
      "cercle",
      "1",
      "5 mg",
      "30",
      "Saiph",
      "3",
      "non",
      "10",
      "non",
      "oui",
      "gris",
      "tablette",
      "6.93",
      "Blanc + rouge",
      "gris + noir + rouge",
      "Angiotec 5" // Placed at the last position
    ),

    Element(
      "Enalapril",
      "cercle",
      "1",
      "20 mg",
      "30",
      "Saiph",
      "3",
      "non",
      "10",
      "non",
      "oui",
      "gris",
      "tablette",
      "17.525",
      "blanc + bleu",
      "gris + noir + rouge",
      "Angiotec 20" // Placed at the last position
    ),

    Element(
      "Enalapril + Hydrochlorothiazide",
      "cercle",
      "2",
      "20 / 12,5 mg", 
      "30",
      "Saiph",
      "3",
      "non",
      "10",
      "non",
      "oui",
      "gris",
      "tablette",
      "17.83",
      "blanc + rouge + bleu",
      "gris + noir + rouge",
      "Angiozide 20/12,5" // Placed at the last position
    ),

    Element(
      "Irbésartan + Amlodipine",
      "stade",
      "2",
      "300 / 10 mg", 
      "30",
      "Teriak",
      "2",
      "non",
      "15",
      "oui",
      "non",
      "blanc",
      "tablette",
      "45.32",
      "blanc + rouge + bleu",
      "gris + noir + rouge",
      "Aprofort 300/10" // Placed at the last position
    ),

    Element(
      "Irbésartan + Amlodipine",
      "stade",
      "2",
      "300 / 5 mg",
      "30",
      "Saiph",
      "5",
      "non",
      "6",
      "oui",
      "non",
      "gris",
      "tablette",
      "39.915",
      "blanc + rouge + bleu",
      "gris + noir + rouge",
      "Aradeux plus + 300/5" // Placed at the last position
    ),

    Element(
      "Irbésartan + Amlodipine",
      "stade",
      "2",
      "300 / 10 mg",
      "30",
      "Saiph",
      "5",
      "non",
      "6",
      "oui",
      "non",
      "gris",
      "tablette",
      "40.955",
      "blanc + jaune + rouge",
      "gris + noir + rouge",
      "Aradeux plus + 300/10" // Placed at the last position
    ),

    Element(
      "Irbésartan",
      "stade",
      "1",
      "300 mg",
      "30",
      "Philadelphia Pharma",
      "2",
      "non",
      "15",
      "oui",
      "non",
      "blanc",
      "tablette",
      "37.81",
      "blanc + bleu",
      "gris + noir + rouge",
      "Araven 300" // Placed at the last position
    ),

    Element(
      "Irbésartan + Amlodipine",
      "stade",
      "2",
      "300 / 10 mg",
      "30",
      "Philadelphia Pharma",
      "3",
      "non",
      "10",
      "oui",
      "non",
      "gris",
      "tablette",
      "45.32",
      "blanc + rouge + bleu",
      'gris + bleu + rouge',
      "Araven Ic 300/10" // Placed at the last position
    ),

    Element(
      "Irbésartan + Amlodipine",
      "stade",
      "2",
      "300 / 5 mg",
      "30",
      "Philadelphia Pharma",
      "3",
      "non",
      "10",
      "oui",
      "non",
      "gris",
      "tablette",
      "43.85",
      "blanc + bleu",
      'gris + bleu + rouge',
      "Araven Ic 300/5" // Placed at the last position
    ),

    Element(
      "Perindopril + Indapamide",
      "cercle",
      "2",
      "10 / 5 mg", 
      "30",
      "Servier",
      "1",
      "non",
      "30",
      "oui",
      "non",
      "blanc",
      "boite",
      "62.32",
      "blanc + rouge + bleu",
      "blanc + rouge + bleu",
      "Bipreterax 10/2,5" // Placed at the last position
    ),

    Element(
      "Perindopril + Indapamide",
      "stade",
      "2",
      "5 / 1,25 mg",
      "30",
      "Servier",
      "1",
      "non",
      "30",
      "oui",
      "non",
      "blanc",
      "boite",
      "51.81",
      "blanc + rouge + bleu",
      "blanc + rouge + bleu",
      "Bipreterax 5/1,25" // Placed at the last position
    ),

    Element(
      "Bisoprolol",
      "cercle",
      "1",
      "5 mg",
      "30",
      "Pharmacare",
      "2",
      "oui",
      "15",
      "oui",
      "oui",
      "transparent",
      "tablette",
      "6.44",
      "blanc + noir + vert",
      'gris + bleu + rouge',
      "Bisocor 5" // Placed at the last position
    ),

    Element(
      "Bisoprolol",
      "cercle",
      "1",
      "2,5 mg",
      "30",
      "Pharmacare",
      "2",
      "oui",
      "15",
      "oui",
      "oui",
      "transparent",
      "tablette",
      "5.42",
      "blanc + noir + orangé",
      'gris + bleu + rouge',
      "Bisocor 2.5" // Placed at the last position
    ),

    Element(
      "Bisoprolol",
      "cercle",
      "1",
      "2,5 mg",
      "30",
      "Taha Pharma",
      "3",
      "oui",
      "10",
      "oui",
      "oui",
      "transparent",
      "tablette",
      "6.28",
      "blanc + bleu + noir",
      "gris + noir + rouge",
      "Bisopral 2,5" // Placed at the last position
    ),

    Element(
      "Perindopril + Indapamide",
      "?",
      "2",
      "10 / 2,5 mg",
      "30",
      "Thera",
      "1",
      "non",
      "30",
      "non",
      "non",
      "blanc",
      "boite",
      "34.97",
      "blanc + bleu",
      "blanc + bleu",
      "Bi-therapil 10/2,5" // Placed at the last position
    ),

    Element(
      "Candésartan",
      "cercle",
      "1",
      "16 mg",
      "30",
      "Hikma",
      "2",
      "oui",
      "15",
      "non",
      "oui",
      "transparent",
      "tablette",
      "42.445",
      "blanc + bleu + violet",
      "gris + noir + rouge",
      "Blopress 16" // Placed at the last position
    ),

    Element(
      "Candésartan",
      "cercle",
      "1",
      "8 mg",
      "30",
      "Hikma",
      "2",
      "oui",
      "15",
      "non",
      "oui",
      "transparent",
      "tablette",
      "31.67",
      "blanc + bleu + marron",
      "gris + noir + rouge",
      "Blopress 8" // Placed at the last position
    ),

    Element(
      "Candésartan + Hydrochlorothiazide",
      "stade",
      "2",
      "16 / 12,5",
      "30",
      "Hikma",
      "2",
      "oui",
      "15",
      "non",
      "oui",
      "transparent",
      "tablette",
      "43.62",
      "blanc + bleu + orange",
      "gris + noir + rouge",
      "Blopress Plus" // Placed at the last position
    ),

    Element(
      "Captopril",
      "cercle",
      "1",
      "50 mg",
      "30",
      "Saiph",
      "2",
      "oui",
      "15",
      "non",
      "oui",
      "transparent",
      "tablette",
      "14.195",
      "blanc + jaune + rouge",
      "gris + noir + rouge",
      "Capocard 50" // Placed at the last position
    ),

    Element(
      "Captopril",
      "cercle",
      "1",
      "25 mg",
      "30",
      "Saiph",
      "2",
      "oui",
      "15",
      "non",
      "oui",
      "transparent",
      "tablette",
      "8.230",
      "blanc + bleu + jaune",
      "gris + noir + rouge",
      "Capocard 25" // Placed at the last position
    ),

    Element(
      "Captopril",
      "stade",
      "1",
      "50 mg",
      "30",
      "Hikma",
      "2",
      "oui",
      "15",
      "non",
      "oui",
      "transparent",
      "tablette",
      "18.650",
      "blanc + bleu + gris",
      "gris + noir + rouge",
      "Capril 50" // Placed at the last position
    ),

    Element(
      "Captopril",
      "stade",
      "1",
      "25 mg",
      "30",
      "Hikma",
      "2",
      "oui",
      "15",
      "non",
      "oui",
      "transparent",
      "tablette",
      "10.170",
      "blanc + rouge + bleu",
      "gris + noir + rouge",
      "Capril 25" // Placed at the last position
    ),

    Element(
      "Bisoprolol",
      "cœur",
      "1",
      "2,5 mg",
      "30",
      "Merck",
      "3",
      "oui",
      "10",
      "oui",
      "oui",
      "transparent",
      "tablette",
      "16.180",
      "blanc + noir + orangé",
      "gris + noir + rouge",
      "Cardensiel 2,5" // Placed at the last position
    ),

    Element(
      "Bisoprolol",
      "cœur",
      "1",
      "5 mg",
      "30",
      "Merck",
      "3",
      "oui",
      "10",
      "oui",
      "oui",
      "transparent",
      "tablette",
      "16.180",
      "blanc + bleu + noir",
      "gris + noir + rouge",
      "Cardensiel 5" // Placed at the last position
    ),

    Element(
      "Acebutolol",
      "stade",
      "1",
      "400 mg",
      "30",
      "Dar Essaydali",
      "3",
      "oui",
      "10",
      "oui",
      "oui",
      "transparent",
      "tablette",
      "12.690",
      "blanc + bleu + noir",
      "gris + noir + rouge",
      "Cebutral 400" // Placed at the last position
    ),

    Element(
      "Celiprolol",
      "stade",
      "1",
      "200 mg",
      "30",
      "Adwya",
      "2",
      "oui",
      "15",
      "oui",
      "oui",
      "transparent",
      "tablette",
      "12.360",
      "blanc + rouge + noir",
      "gris + bleu + rouge",
      "Celiprol 200" // Placed at the last position
    ),

    Element(
      "Bisoprolol",
      "cercle",
      "1",
      "10 mg",
      "30",
      "Saiph",
      "1",
      "oui",
      "30",
      "oui",
      "oui",
      "transparent",
      "tablette",
      "14.910",
      "blanc + rouge + noir",
      "gris + bleu + rouge",
      "Cincor 10" // Placed at the last position
    ),

    Element(
      "Bisoprolol",
      "cercle",
      "1",
      "5 mg",
      "30",
      "Saiph",
      "1",
      "oui",
      "30",
      "oui",
      "oui",
      "transparent",
      "tablette",
      "7.205",
      "blanc + noir + vert",
      "gris + noir + rouge",
      "Cincor 5" // Placed at the last position
    ),

    Element(
      "Bisoprolol",
      "stade",
      "1",
      "2,5 mg",
      "30",
      "Saiph",
      "1",
      "oui",
      "30",
      "oui",
      "oui",
      "transparent",
      "tablette",
      "7.330",
      "blanc + bleu + noir",
      "gris + bleu + rouge",
      "Cincor 2,5" // Placed at the last position
    ),

    Element(
      "Clopidogrel",
      "cercle",
      "1",
      "75 mg",
      "30",
      "Saiph",
      "1",
      "non",
      "10",
      "oui",
      "non",
      "gris",
      "tablette",
      "36.520",
      "blanc + rouge + bleu",
      "gris + noir + rouge",
      "Clopix 75" // Placed at the last position
    ),

    Element(
      "Irbésartan + Hydrochlorothiazide",
      "stade",
      "2",
      "300 / 12,5 mg", 
      "30",
      "Sanofi",
      "3",
      "non",
      "10",
      "oui",
      "non",
      "blanc",
      "tablette",
      "57.925",
      "blanc + rouge + bleu",
      "gris + noir + rouge",
      "CoAprovel 300/12,5"
    ),

    Element(
      "Irbésartan + Hydrochlorothiazide",
      "stade",
      "2",
      "300 / 12,5 mg", 
      "30",
      "Teriak",
      "2",
      "non",
      "15",
      "oui",
      "non",
      "blanc",
      "tablette",
      "36.680",
      "blanc + rouge + vert",
      "gris + noir + rouge",
      "CoAprozar 300/12,5"
    ),

    Element(
      "Irbésartan + Hydrochlorothiazide",
      "stade",
      "2",
      "300 / 25 mg", 
      "30",
      "Teriak",
      "2",
      "non",
      "15",
      "oui",
      "non",
      "blanc",
      "tablette",
      "39.105",
      "blanc + rouge + vert",
      "gris + noir + rouge",
      "CoAprozar 300/25"
    ),

    Element(
      "Irbésartan + Hydrochlorothiazide",
      "stade",
      "2",
      "300 / 12,5 mg", 
      "30",
      "Saiph",
      "2",
      "non",
      "15",
      "oui",
      "non",
      "blanc",
      "tablette",
      "33.150",
      "blanc + bleu + jaune",
      "gris + noir + rouge",
      "Co-aradeux 300/12,5"
    ),

    Element(
      "Irbésartan + Hydrochlorothiazide",
      "stade",
      "2",
      "150 / 12,5 mg", 
      "30",
      "Saiph",
      "2",
      "non",
      "15",
      "oui",
      "non",
      "blanc",
      "tablette",
      "21.680",
      "blanc + bleu + jaune",
      "gris + noir + rouge",
      "Co-aradeux 150/12,5"
    ),
    
    Element(
      "Irbésartan + Hydrochlorothiazide",
      "stade",
      "2",
      "150 / 12,5 mg", 
      "90", // Updated quantity to 90
      "Saiph",
      "6", // Updated the value to 6
      "non",
      "15",
      "oui",
      "non",
      "blanc",
      "tablette",
      "65.800", // Updated the price 
      "blanc + bleu + jaune",
      "gris + noir + rouge",
      "Co-aradeux 150/12,5 (90)"
    ),

    Element(
      "Irbésartan + Hydrochlorothiazide",
      "stade",
      "2",
      "300 / 25 mg", 
      "30",
      "Saiph",
      "2",
      "non",
      "15",
      "oui",
      "non",
      "blanc",
      "tablette",
      "33.155",
      "blanc + rouge + bleu",
      "gris + bleu + rouge",
      "Co-aradeux 300/25"
    ),

    Element(
      "losartan + hydrochlorothiazide",
      "stade",
      "2",
      "50 / 12,5 mg", 
      "28",
      "Dar Essaydali",
      "2",
      "non",
      "14",
      "oui",
      "oui",
      "blanc",
      "tablette",
      "24.245",
      "orange + bleu + violet",
      "gris + noir + rouge",
      "Co-medzar 50/12,5"
    ),

    Element(
      "Bisoprolol + Amlodipine",
      "stade",
      "2",
      "5 / 5 mg", 
      "30",
      "Merck",
      "3",
      "non",
      "10",
      "non",
      "non",
      "gris",
      "tablette",
      "21.005",
      "blanc + rouge + bleu",
      "blanc + rouge + bleu",
      "Concor Amlo 5/5"
    ),

    Element(
      "Ramipril + Hydrochlorothiazide",
      "cercle",
      "2",
      "10 / 25 mg", 
      "30",
      "Teriak",
      "2",
      "non",
      "15",
      "non",
      "oui",
      "blanc",
      "tablette",
      "29.930",
      "blanc + bleu + gris",
      "gris + noir + rouge",
      "CoRapril 10/25"
    ),

    Element(
      "amiodarone",
      "cercle",
      "1",
      "200 mg",
      "20",
      "Sanofi",
      "2",
      "oui",
      "10",
      "non",
      "oui",
      "transparent",
      "tablette",
      "8.565",
      "blanc + rouge + bleu",
      "gris + noir + rouge",
      "Cordarone 200"
    ),

    Element(
      "Bisoprolol + Perindopril",
      "stade",
      "2",
      "10 / 10 mg", 
      "30",
      "Servier",
      "1",
      "non",
      "30",
      "oui",
      "non",
      "blanc",
      "boite",
      "33.627",
      "blanc + bleu",
      "blanc + bleu",
      "Cosimprel 10/10"
    ),

    Element(
      "Bisoprolol + Perindopril",
      "stade",
      "2",
      "5 / 10 mg", 
      "30",
      "Servier",
      "1",
      "non",
      "30",
      "oui",
      "non",
      "blanc",
      "boite",
      "25.052",
      "blanc + bleu",
      "blanc + bleu",
      "Cosimprel 5/10"
    ),

    Element(
      "Bisoprolol + Perindopril",
      "stade",
      "2",
      "5 / 5 mg", 
      "30",
      "Servier",
      "1",
      "non",
      "30",
      "oui",
      "non",
      "blanc",
      "boite",
      "25.052",
      "blanc + bleu",
      "blanc + bleu",
      "Cosimprel 5/5"
    ),

    Element(
      "valsartan + hydrochlorothiazide",
      "stade",
      "2",
      "160 / 25 mg", 
      "30",
      "Novartis",
      "2",
      "oui",
      "15",
      "oui",
      "non",
      "transparent",
      "tablette",
      "61.370",
      "blanc + jaune + rouge",
      "gris + noir + rouge",
      "Cotareg 160/25"
    ),

    Element(
      "Methyldopa",
      "cercle",
      "1",
      "250 mg",
      "30",
      "Saiph",
      "2",
      "oui",
      "15",
      "oui",
      "non",
      "transparent",
      "tablette",
      "6.125",
      "blanc + rouge + noir",
      "gris + noir + rouge",
      "Dopanore 250"
    ),

    Element(
      "Valsartan + Amlodipine",
      "cercle",
      "2",
      "160 / 5 mg", 
      "30",
      "Philadelphia",
      "3",
      "non",
      "3",
      "oui",
      "non",
      "gris",
      "tablette",
      "55.860",
      "blanc + bleu + vert",
      "gris + rouge + vert",
      "DuoFor 160 / 5"
    ),

    Element(
      "Valsartan + Amlodipine + Hydrochlorothiazide",
      "cercle",
      "3",
      "160 / 10 / 25 mg",
      "30",
      "Philadelphia",
      "3",
      "non",
      "3",
      "oui",
      "non",
      "gris",
      "tablette",
      "37.240",
      "blanc + rouge + bleu",
      'gris + bleu + rouge',
      "DuoFor Plus 160 / 10 / 25"
    ),

    Element(
      "Valsartan + Amlodipine + Hydrochlorothiazide",
      "cercle",
      "3",
      "160 / 10 / 12,5 mg",
      "30",
      "Philadelphia",
      "3",
      "non",
      "3",
      "oui",
      "non",
      "gris",
      "tablette",
      "37.240",
      "blanc + rouge + bleu",
      'gris + bleu + rouge',
      "DuoFor Plus 160 / 10 / 12,5"
    ),

    Element(
      "Bisoprolol",
      "cercle",
      "1",
      "2,5 mg",
      "30",
      "Philadelphia",
      "3",
      "oui",
      "10",
      "oui",
      "non",
      "transparant",
      "tablette",
      "8",
      "blanc + bleu",
      "gris + bleu + rouge",
      "Evocor 2,5"
    ),

    Element(
      "Indapamide",
      "cercle",
      "1",
      "1,5 mg",
      "30",
      "Teriak",
      "2",
      "oui",
      "15",
      "oui",
      "non",
      "transparent",
      "tablette",
      "9.255",
      "blanc + rouge + noir",
      "gris + noir + rouge",
      "Fludex LP 1,5"
    ),

    Element(
      "Aténolol",
      "cercle",
      "1",
      "100 mg",
      "30",
      "Hikma",
      "3",
      "oui",
      "10",
      "oui",
      "oui",
      "transparent",
      "tablette",
      "13.89",
      "blanc + bleu + orangé",
      "gris + noir + rouge",
      "Hypoten 100"
    ),

    Element(
      "Aténolol",
      "cercle",
      "1",
      "50 mg",
      "30",
      "Hikma",
      "3",
      "oui",
      "10",
      "oui",
      "oui",
      "transparent",
      "tablette",
      "7.595",
      "blanc + rouge + bleu",
      "gris + noir + rouge",
      "Hypoten 50"
    ),

    Element(
      "Furosémide",
      "stade",
      "1",
      "500 mg",
      "50",
      "Pharmacare",
      "5",
      "non",
      "10",
      "non",
      "oui",
      "vert",
      "tablette",
      "49.14",
      "blanc + rouge + bleu",
      "gris + noir + rouge",
      "Lasicare 500"
    ),

    Element(
      "Furosémide",
      "cercle",
      "1",
      "40 mg",
      "20",
      "Pharmacare",
      "1",
      "non",
      "20",
      "non",
      "oui",
      "vert",
      "tablette",
      "2.755",
      "blanc + rouge + bleu",
      "gris + bleu + rouge",
      "Lasicare 40"
    ),

    Element(
      "Furosémide",
      "cercle",
      "1",
      "40 mg",
      "20",
      "Sanofi",
      "1",
      "non",
      "20",
      "non",
      "oui",
      "vert",
      "tablette",
      "4.02",
      "blanc + rouge + bleu",
      "gris + bleu + rouge",
      "Lasilix 40"
    ),

    Element(
      "Amlodipine",
      "cercle",
      "1",
      "5 mg",
      "30",
      "Taha Pharma",
      "3",
      "non",
      "10",
      "non",
      "non",
      "blanc",
      "tablette",
      "9.08",
      "blanc + rouge + noir",
      "gris + noir + rouge",
      "Lodipex 5"
    ),

    Element(
      "Captopril",
      "?",
      "1",
      "50 mg",
      "30",
      "IPS",
      "?",
      "?",
      "?",
      "non",
      "oui",
      "?",
      "tablette",
      "23.288",
      "blanc + rouge + vert",
      "?",
      "Lopril 50"
    ),

    Element(
      "Captopril",
      "?",
      "1",
      "25 mg",
      "30",
      "IPS",
      "?",
      "?",
      "?",
      "non",
      "oui",
      "?",
      "tablette",
      "13.015",
      "blanc + rouge + bleu",
      "?",
      "Lopril 25"
    ),

    Element(
      "Losartan",
      "stade",
      "1",
      "50 mg",
      "30",
      "Medis",
      "2",
      "non",
      "15",
      "oui",
      "oui",
      "blanc",
      "tablette",
      "26.79",
      "blanc + bleu + vert",
      "gris + noir + rouge",
      "Losar 50"
    ),

    Element(
      "Losartan",
      "stade",
      "1",
      "100 mg",
      "30",
      "Medis",
      "3",
      "non",
      "10",
      "oui",
      "oui",
      "blanc",
      "tablette",
      "29.755",
      "blanc + bleu + vert",
      "gris + noir + rouge",
      "LosarFort 100"
    ),

    Element(
      "Amlodipine",
      "géllule",
      "1",
      "5 mg",
      "30",
      "Saiph",
      "2",
      "oui",
      "15",
      "non",
      "non",
      "transparant",
      "tablette",
      "14.75",
      "blanc + bleu + jaune",
      "gris + noir + rouge",
      "Lowrac 5"
    ),

    Element(
      "Nicardipine",
      "géllule",
      "1",
      "50 mg",
      "60",
      "Novartis",
      "6",
      "non",
      "10",
      "non",
      "non",
      "blanc",
      "tablette",
      "27.05",
      "blanc + rouge + noir",
      "gris + bleu + rouge",
      "Loxen LP 50"
    ),

    Element(
      "Nicardipine",
      "cercle",
      "1",
      "20 mg",
      "28",
      "Luso Farmaco IT",
      "4",
      "non",
      "7",
      "non",
      "oui",
      "gris",
      "tablette",
      "12.508",
      "blanc + bleu + noir",
      "gris + noir + rouge",
      "Lusopress 20"
    ),

    Element(
      "Losartan",
      "stade",
      "1",
      "100 mg",
      "90",
      "Dar Essaydali",
      "6",
      "non",
      "15",
      "oui",
      "oui",
      "blanc",
      "tablette",
      "69.22",
      "blanc + rouge + bleu",
      "gris + noir + rouge",
      "Medazar Fort 100"
    ),

    Element(
      "Amlodipine",
      "cercle",
      "1",
      "5 mg",
      "30",
      "Pharmaghreb",
      "2",
      "non",
      "15",
      "non",
      "oui",
      "blanc",
      "tablette",
      "14.445",
      "blanc + rouge + bleu",
      "gris + noir + rouge",
      "Mibral 5"
    ),

    Element(
      "Indapamide + Amlodipine",
      "cercle",
      "2",
      "1,5 / 5 mg", 
      "30",
      "Servier",
      "2",
      "oui",
      "15",
      "oui",
      "non",
      "transparant",
      "tablette",
      "14.345",
      "blanc + rouge + bleu",
      "gris + noir + rouge",
      "Natrixam 1,5 / 5"
    ),

    Element(
      "Nebivolol",
      "cercle",
      "1",
      "5 mg",
      "30",
      "Berlin-Chemie AG",
      "3",
      "oui",
      "10",
      "non",
      "oui",
      "transparant",
      "tablette",
      "36.24",
      "blanc + bleu + noir",
      "gris + noir + rouge",
      "Nebilet 5"
    ),

    Element(
      "Spironolactone",
      "stade",
      "1",
      "50 mg",
      "30",
      "Saiph",
      "2",
      "oui",
      "15",
      "oui",
      "oui",
      "transparant",
      "tablette",
      "13.45",
      "blanc + jaune + rouge",
      "gris + noir + rouge",
      "Noractone 50"
    ),

    Element(
      "Propranolol",
      "cercle",
      "1",
      "40 mg",
      "45",
      "Dar Essaydali",
      "3",
      "oui",
      "15",
      "non",
      "oui",
      "transparant",
      "tablette",
      "3.925",
      "blanc + rouge + bleu",
      "gris + noir + rouge",
      "Normocardil 40"
    ),

    Element(
      "Moxonidine",
      "cercle",
      "1",
      "0,2 mg",
      "30",
      "Abbott Products S.A.S",
      "1",
      "oui",
      "30",
      "oui",
      "non",
      "transparent",
      "tablette",
      "23.07",
      "blanc + rouge + noir",
      "gris + noir + rouge",
      "Physiotens 0,2"
    ),

    Element(
      "Clopidogrel",
      "cercle",
      "1",
      "75 mg",
      "30",
      "Medis",
      "3",
      "non",
      "10",
      "oui",
      "non",
      "gris",
      "tablette",
      "49.7",
      "blanc + bleu + vert",
      'gris + bleu + rouge',
      "Pidogrel 75"
    ),

    Element(
      "Clopidogrel",
      "cercle",
      "1",
      "75 mg",
      "30",
      "Dar Essaydaly",
      "2",
      "oui",
      "15",
      "oui",
      "non",
      "transparent",
      "tablette",
      "31.325",
      "blanc + rouge + bleu",
      "gris + noir + rouge",
      "Plagrel 75"
    ),

    Element(
      "Clopidogrel",
      "cercle",
      "1",
      "75 mg",
      "28",
      "Sanofi",
      "2",
      "oui",
      "14",
      "oui",
      "non",
      "transparent",
      "tablette",
      "73.525",
      "blanc + rouge + bleu",
      'gris + bleu + rouge',
      "Plavix 75"
    ),

    Element(
      "Dipyridamole",
      "cercle",
      "1",
      "75 mg",
      "120",
      "Medochemie",
      "12",
      "oui",
      "10",
      "oui",
      "non",
      "transparent",
      "tablette",
      "7.74",
      "blanc + noir + vert",
      "gris + noir",
      "Procardin 75"
    ),

    Element(
      "Ramipril",
      "stade",
      "1",
      "5 mg",
      "30",
      "Teriak",
      "2",
      "non",
      "15",
      "non",
      "oui",
      "blanc",
      "tablette",
      "23.555",
      "blanc + gris + vert",
      "gris + noir + rouge",
      "Rapril 5"
    ),

    Element(
      "Acenocoumarol",
      "cercle",
      "1",
      "4 mg",
      "20",
      "Juvise",
      "2",
      "oui",
      "10",
      "non",
      "oui",
      "transparent",
      "tablette",
      "1.83",
      "blanc + noir + jaune",
      "gris + noir + rouge",
      "Sintrom 4"
    ),

    Element(
      "Sotalol",
      "cercle",
      "1",
      "160 mg",
      "30",
      "Mylan",
      "3",
      "oui",
      "10",
      "non",
      "oui",
      "transparent",
      "tablette",
      "10.645",
      "blanc + bleu + noir",
      "gris + noir + rouge",
      "Sotalol Mylan 160"
    ),

    Element(
      "valsartan",
      "cercle",
      "1",
      "80 mg",
      "30",
      "Novartis",
      "2",
      "oui",
      "15",
      "oui",
      "non",
      "transparent",
      "tablette",
      "38.955",
      "blanc + noir + jaune",
      "gris + bleu + rouge",
      "Tareg 80"
    ),

    Element(
      "Telmisartan",
      "stade",
      "1",
      "40 mg",
      "30",
      "Thera",
      "5",
      "non",
      "6",
      "non",
      "non",
      "gris",
      "tablette",
      "25.565",
      "blanc + bleu + vert",
      "gris + bleu + rouge",
      "Telmycor 40"
    ),

    Element(
      "Telmisartan + Hydrochlorothiazide",
      "stade",
      "2",
      "80 / 12,5 mg", 
      "30",
      "Thera",
      "5",
      "non",
      "6",
      "non",
      "non",
      "gris",
      "tablette",
      "28.46",
      "blanc + bleu + jaune",
      "gris + bleu + rouge",
      "Telmycor Plus 80 / 12,5"
    ),

    Element(
      "Moxonidine",
      "cercle",
      "1",
      "0,4 mg",
      "30",
      "Philadelphia",
      "3",
      "oui",
      "10",
      "oui",
      "non",
      "transparent",
      "tablette",
      "29.94",
      "blanc + bleu",
      "gris + bleu + rouge",
      "Tenar 0,4"
    ),

    Element(
      "Moxonidine",
      "cercle",
      "1",
      "0,2 mg",
      "30",
      "Philadelphia",
      "3",
      "oui",
      "10",
      "oui",
      "non",
      "transparent",
      "tablette",
      "16.865",
      "blanc + bleu + violet",
      "gris + rouge + violet",
      "Tenar 0,2"
    ),

    Element(
      "Captopril",
      "stade",
      "1",
      "50 mg",
      "30",
      "Dar Essaydaly",
      "2",
      "oui",
      "15",
      "non",
      "oui",
      "transparent",
      "tablette",
      "15.78",
      "blanc + rouge + vert",
      "gris + noir + rouge",
      "Tensopril 50"
    ),

    Element(
      "Captopril",
      "carré",
      "1",
      "25 mg",
      "30",
      "Dar Essaydaly",
      "2",
      "oui",
      "15",
      "non",
      "oui",
      "transparent",
      "tablette",
      "8.465",
      "blanc + rouge + violet",
      "gris + noir + rouge",
      "Tensopril 25"
    ),

    Element(
      "Amlodipine + Valsartan",
      "cercle",
      "2",
      "5 / 80 mg", 
      "30",
      "Taha Pharma",
      "3",
      "oui",
      "10",
      "oui",
      "non",
      "transparent",
      "tablette",
      "41.755",
      "blanc + bleu + noir",
      'gris + bleu + rouge',
      "Tensiovals Duo 5 / 80"
    ),

    Element(
      "Ticagrélor",
      "cercle",
      "1",
      "90 mg",
      "60",
      "Thera",
      "6",
      "oui",
      "10",
      "oui",
      "non",
      "transparent",
      "tablette",
      "128.175",
      "blanc + rouge + bleu",
      'gris + bleu + rouge',
      "Theraglor 90"
    ),

    Element(
      "Périndopril",
      "stade",
      "1",
      "5 mg",
      "30",
      "Thera",
      "1",
      "non",
      "30",
      "non",
      "oui",
      "blanc",
      "boite",
      "20.01",
      "blanc + bleu + vert",
      "blanc + bleu + vert",
      "Therapil 5"
    ),

    Element(
      "Ramipril",
      "stade",
      "1",
      "10 mg",
      "30",
      "Sanofi",
      "2",
      "oui",
      "2",
      "non",
      "oui",
      "transparent",
      "tablette",
      "48.28",
      "blanc + bleu + gris",
      "gris + noir + rouge",
      "Triatec 10"
    ),

    Element(
      "Ramipril",
      "stade",
      "1",
      "5 mg",
      "30",
      "Sanofi",
      "2",
      "oui",
      "2",
      "non",
      "oui",
      "transparent",
      "tablette",
      "42.79",
      "blanc + bleu + vert",
      "gris + rouge + vert",
      "Triatec 5"
    ),

    Element(
      "Ramipril",
      "stade",
      "1",
      "2,5 mg",
      "30",
      "Sanofi",
      "2",
      "oui",
      "15",
      "non",
      "oui",
      "transparent",
      "tablette",
      "34.01",
      "blanc + rouge + bleu",
      "gris + rouge",
      "Triatec 2,5"
    ),

    Element(
      "Telmisartan + Amlodipine",
      "stade",
      "2",
      "40 / 5 mg", 
      "28",
      "Boehringer Ing",
      "4",
      "non",
      "7",
      "non",
      "non",
      "gris",
      "tablette",
      "41.73",
      "blanc + bleu + vert",
      "gris + noir",
      "Twynsta 40 / 5"
    ),

    Element(
      "Telmisartan + Amlodipine",
      "stade",
      "2",
      "80 / 5 mg",
      "28",
      "Boehringer Ing",
      "4",
      "non",
      "7",
      "non",
      "non",
      "gris",
      "tablette",
      "47.08",
      "blanc + bleu + vert",
      "gris + noir",
      "Twynsta 80 / 10"
    ),

    Element(
      "Valsartan + Amlodipine",
      "stade",
      "2",
      "160 / 5 mg",
      "30",
      "Saiph",
      "5",
      "non",
      "6",
      "oui",
      "non",
      "gris",
      "tablette",
      "38.26",
      "blanc + bleu + orange",
      "gris + noir + rouge",
      "Value Plus 160 / 5"
    ),

    Element(
      "Trimétazidine",
      "cercle",
      "1",
      "35 mg",
      "60",
      "Teriak",
      "4",
      "oui",
      "15",
      "oui",
      "non",
      "transparent",
      "tablette",
      "28.375",
      "blanc + rouge + noir",
      "gris + noir + rouge",
      "Vastarel 35"
    ),

    Element(
      "Enalapril + Lercanidipine",
      "cercle",
      "2",
      "20 / 10 mg", 
      "30",
      "Bouchara-Recordati",
      "2",
      "non",
      "15",
      "oui",
      "non",
      "gris",
      "tablette",
      "39.04",
      "blanc + rouge + gris",
      "gris + noir + rouge",
      "Zanextra 20 / 10"
    ),

    Element(
      "Enalapril + Lercanidipine",
      "cercle",
      "2",
      "20 / 20 mg",
      "30",
      "Bouchara-Recordati",
      "2",
      "non",
      "15",
      "oui",
      "non",
      "gris",
      "tablette",
      "51.03",
      "blanc + vFiolet + gris",
      "gris + noir + rouge",
      "Zanextra 20 / 20"
    ),

    Element(
      "Lercanidipine",
      "cercle",
      "1",
      "20 mg",
      "30",
      "Opalia",
      "2",
      "non",
      "15",
      "oui",
      "non",
      "blanc",
      "tablette",
      "35.24",
      "blanc + rouge + bleu",
      "gris + noir + rouge",
      "Zanidip 20"
    ),

    Element(
      "Lercanidipine",
      "cercle",
      "1",
      "10 mg",
      "30",
      "Opalia",
      "1",
      "non",
      "30",
      "oui",
      "non",
      "blanc",
      "tablette",
      "32.805",
      "blanc + rouge + bleu",
      "gris + noir + rouge",
      "Zanidip 10"
    ),

    Element(
      "valsartan",
      "cercle",
      "1",
      "160 mg",
      "30",
      "Adwya",
      "3",
      "non",
      "10",
      "oui",
      "non",
      "blanc",
      "tablette",
      "32.845",
      "blanc + bleu + noir",
      "gris + noir + rouge",
      "Zarteg 160"
    ),


  ];

  String selectedDci = '';
  String selectedFormegeo = '';
  String selectedNbDci = '';
  String selectedDosage = '';
  String selectedContenance = '';
  String selectedIndustrie = '';
  String selectedNbCI = '';
  String selectedPerCI = '';
  String selectedNbUnCI = '';
  String selectedEnrPel = '';
  String selectedSecabilite = '';
  String selectedCouleurCIback = '';
  String selectedFormeCI = '';
  String selectedPrix = '';
  String selectedCouCII = '';
  String selectedCouCI = '';

  

  void resetDropdownValues() {
    setState(() {
      selectedDci = '';
      selectedFormegeo = '';
      selectedNbDci = '';
      selectedDosage = '';
      selectedContenance = '';
      selectedIndustrie = '';
      selectedNbCI = '';
      selectedPerCI = '';
      selectedNbUnCI = '';
      selectedEnrPel = '';
      selectedSecabilite = '';
      selectedCouleurCIback = '';
      selectedFormeCI = '';
      selectedPrix = '';
      selectedCouCII = '';
      selectedCouCI = '';
    });
    _dciDropdownKey.currentState!.resetValue();
    _formegeoDropdownKey.currentState!.resetValue();
    _nbDciDropdownKey.currentState!.resetValue();
    _dosageDropdownKey.currentState!.resetValue();
    _contenanceDropdownKey.currentState!.resetValue();
    _industrieDropdownKey.currentState!.resetValue();
    _nbCIDropdownKey.currentState!.resetValue();
    _perCIDropdownKey.currentState!.resetValue();
    _nbUnCIDropdownKey.currentState!.resetValue();
    _enrPelDropdownKey.currentState!.resetValue();
    _secabiliteDropdownKey.currentState!.resetValue();
    _couleurCIbackDropdownKey.currentState!.resetValue();
    _formeCIDropdownKey.currentState!.resetValue();
    _prixDropdownKey.currentState!.resetValue();
    _couleurCIIDropdownKey.currentState!.resetValue();
    _couleurCIDropdownKey.currentState!.resetValue();
  }
  
  List <String> test = [];
  

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
      //appBar: AppBar(
      //  title: const Text("Filtrer"),
      //),
      body: SingleChildScrollView(
        child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Color(0xfff6f5f5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width:  MediaQuery.of(context).size.width,
            ),

            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.1,
              child: Center(
                child : Align(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: const Center(child:Text(
                      'Filtrer',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        height: 1.5,
                        letterSpacing: 0.4099999964,
                        color: Color(0xff2d0c57),
                      ),
                    ),
                  ),
                ),
              ),),
            ),

            Padding(
              padding: EdgeInsets.symmetric(vertical: EdgeMargin), 
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.75,
                child: ListView(
                  shrinkWrap: true,
                  children: [

                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.16,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(4*EdgeMargin, 0, EdgeMargin, EdgeMargin), //hna
                            width: MediaQuery.of(context).size.width,
                            child: SizedBox( //hna
                              width: MediaQuery.of(context).size.width * 0.3,
                              height: MediaQuery.of(context).size.height * 0.05,
                                child: const Text(
                                  'Comprimé:',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold, //hna
                                    height: 1.5,
                                    letterSpacing: 0.41,
                                    color: Color(0xff2d0c57),
                                  ),
                                ),
                              ),
                            ),
                          
                          SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(1.5*EdgeMargin, 0, 1.5*EdgeMargin, 0),
                                width: MediaQuery.of(context).size.width * 0.94 ,
                                height: MediaQuery.of(context).size.height * 0.09,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(27),
                                  border: Border.all(color: const Color(0xffd8d0e3)),
                                  color: const Color(0xffffffff),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x3f000000),
                                      offset: Offset(0, 4),
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                                child: Row(
                                  children: <Widget>[
                                    // Your DropDown widgets here
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: DropDow(
                                        key: _formegeoDropdownKey,
                                        items: const [
                                        'carré',
                                        'cercle',
                                        'cœur',
                                        'stade',
                                        'Forme'
                                        ],

                                        value: 'Forme', 
                                        onChanged: (newValue) {
                                                    setState(() {
                                                      selectedFormegeo = newValue!;
                                                    });
                                                  },
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: DropDow(
                                        key: _secabiliteDropdownKey,
                                        items: const [
                                          'non',
                                          'oui',
                                          'Sécabilité',
                                        ],
                                        value: 'Sécabilité', 
                                        onChanged: (newValue) {
                                                    setState(() {
                                                      selectedSecabilite = newValue!;
                                                    });
                                                  },
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: DropDow(
                                        key: _enrPelDropdownKey,
                                        items: const [
                                          'non',
                                          'oui',
                                          'Enrobage',
                                        ],
                                        value: 'Enrobage', 
                                        onChanged: (newValue) {
                                                    setState(() {
                                                      selectedEnrPel = newValue!;
                                                    });
                                                  },
                                      ),
                                    ),                                      

                                  ],
                                ),
                              ),
                            ),
                        
                        ],
                      ),
                    ),
                    //validé
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                      width:  MediaQuery.of(context).size.width,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.16,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(4*EdgeMargin, 0, EdgeMargin, EdgeMargin), //hna
                            width: MediaQuery.of(context).size.width,
                            child: SizedBox( //hna
                              width: MediaQuery.of(context).size.width * 0.3,
                              height: MediaQuery.of(context).size.height * 0.05,
                                child: const Text(
                                  'Conditionnement Primaire:',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold, //hna
                                    height: 1.5,
                                    letterSpacing: 0.41,
                                    color: Color(0xff2d0c57),
                                  ),
                                ),
                              ),
                            ),

                          SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(1.5*EdgeMargin, 0, 1.5*EdgeMargin, 0),
                                //width: MediaQuery.of(context).size.width ,
                                height: MediaQuery.of(context).size.height * 0.09,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(27),
                                  border: Border.all(color: const Color(0xffd8d0e3)),
                                  color: const Color(0xffffffff),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x3f000000),
                                      offset: Offset(0, 4),
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                                child: Row(
                                  children: <Widget>[
                                    // Your DropDown widgets here
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: DropDow(
                                        key: _nbCIDropdownKey,
                                        items: const [
                                          '1',
                                          '2',
                                          '3',
                                          '4',
                                          '5',
                                          '6',
                                          '12',
                                          'Nombre CI'
                                        ],

                                        value: 'Nombre CI', 
                                        onChanged: (newValue) {
                                                    setState(() {
                                                      selectedNbCI = newValue!;
                                                    });
                                                  },
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: DropDow(
                                        key: _formeCIDropdownKey,
                                        items: const [
                                          'tablette',
                                          'boite',
                                          'Forme CI'
                                        ],
                                        value: 'Forme CI', 
                                        onChanged: (newValue) {
                                                    setState(() {
                                                      selectedFormeCI = newValue!;
                                                    });
                                                  },
                                      ),
                                    ),
                                    
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: DropDow(
                                        key: _nbUnCIDropdownKey,
                                        items: const [
                                          '2',
                                          '3',
                                          '6',
                                          '7',
                                          '10',
                                          '14',
                                          '15',
                                          '20',
                                          '30',
                                          'Nombre d\'Unité'
                                        ],

                                        value: 'Nombre d\'Unité', 
                                        onChanged: (newValue) {
                                                    setState(() {
                                                      selectedNbUnCI = newValue!;
                                                    });
                                                  },
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: DropDow(
                                        key: _perCIDropdownKey,
                                        items: const [
                                          'oui',
                                          'non',
                                          'Visibilité Du Médicament',
                                        ],
                                        value: 'Visibilité Du Médicament', 
                                        onChanged: (newValue) {
                                                    setState(() {
                                                      selectedPerCI = newValue!;
                                                    });
                                                  },
                                      ),
                                    ), 

                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: DropDow(
                                        key: _couleurCIbackDropdownKey,
                                        items: const [
                                          'blanc',
                                          'gris',
                                          'transparent',
                                          'vert',
                                          'Couleur En Arrière'  
                                        ],

                                        value: 'Couleur En Arrière', 
                                        onChanged: (newValue) {
                                                    setState(() {
                                                      selectedCouleurCIback = newValue!;
                                                    });
                                                  },
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: DropDow(
                                        key: _couleurCIDropdownKey,
                                        items: const [
                                          'blanc + bleu',
                                          'blanc + rouge + bleu',
                                          'blanc + bleu + vert',
                                          'gris + noir',
                                          'gris + rouge',
                                          'gris + noir + rouge',
                                          'gris + bleu + rouge',
                                          'gris + rouge + vert',
                                          'gris + rouge + violet',
                                          'gris + violet + bleu',
                                          'Couleur Frontale'
                                        ],

                                        value: 'Couleur Frontale', 
                                        onChanged: (newValue) {
                                                    setState(() {
                                                      selectedCouCI = newValue!;
                                                    });
                                                  },
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                        
                        ],
                      ),
                    ),
                    //validé
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                      width:  MediaQuery.of(context).size.width,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.16,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(4*EdgeMargin, 0, EdgeMargin, EdgeMargin), //hna
                            width: MediaQuery.of(context).size.width,
                            child: SizedBox( //hna
                              width: MediaQuery.of(context).size.width * 0.3,
                              height: MediaQuery.of(context).size.height * 0.05,
                                child: const Text(
                                  'Conditionnement Secondaire:',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold, //hna
                                    height: 1.5,
                                    letterSpacing: 0.41,
                                    color: Color(0xff2d0c57),
                                  ),
                                ),
                              ),
                            ),
  
                          SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(1.5*EdgeMargin, 0, 1.5*EdgeMargin, 0),
                                //width: double.infinity, // Adjust the width as needed
                                height: MediaQuery.of(context).size.height * 0.09,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(27),
                                  border: Border.all(color: const Color(0xffd8d0e3)),
                                  color: const Color(0xffffffff),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x3f000000),
                                      offset: Offset(0, 4),
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                                child: Row(
                                  children: <Widget>[
                                    // Your DropDown widgets here
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: DropDow(
                                        key: _dciDropdownKey,
                                        items: const [
                                          'Acebutolol',
                                          'Amlodipine',
                                          'Aténolol',
                                          'Bisoprolol',
                                          'Candésartan',
                                          'Celiprolol',
                                          'Clopidogrel',
                                          'Dipyridamole',
                                          'Enalapril',
                                          'Enalapril + Hydrochlorothiazide',
                                          'Furosémide',
                                          'Irbésartan',
                                          'Irbésartan + Amlodipine',
                                          'Indapamide',
                                          'Indapamide + Amlodipine',
                                          'Lercanidipine',
                                          'Losartan',
                                          'Methyldopa',
                                          'Moxonidine',
                                          'Nebivolol',
                                          'Nicardipine',
                                          'Perindopril + Indapamide',
                                          'Prazosine',
                                          'Propranolol',
                                          'Ramipril',
                                          'Sotalol',
                                          'Spironolactone',
                                          'Telmisartan',
                                          'Telmisartan + Amlodipine',
                                          'Telmisartan + Hydrochlorothiazide',
                                          'Ticagrélor',
                                          'Trimétazidine',
                                          'Valsartan',
                                          'Valsartan + Amlodipine',
                                          'Valsartan + Amlodipine + Hydrochlorothiazide',
                                          'DCI'
                                        ],

                                        value: 'DCI', 
                                        onChanged: (newValue) {
                                                    setState(() {
                                                      selectedDci = newValue!;
                                                    });
                                                  },
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: DropDow(
                                        key: _nbDciDropdownKey,
                                        items: const [
                                          '1',
                                          '2',
                                          '3',
                                          'Nombre Dci'
                                        ],

                                        value: 'Nombre Dci', 
                                        onChanged: (newValue) {
                                                    setState(() {
                                                      selectedNbDci = newValue!;
                                                    });
                                                  },
                                      ),
                                    ),
                                    
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: DropDow(
                                        key: _dosageDropdownKey,
                                        items: const [
                                          '0,2 mg',
                                          '0,4 mg',
                                          '1,5 mg',
                                          '1,5 / 5 mg',
                                          '2,5 mg',
                                          '4 mg',
                                          '5 / 1,25 mg',
                                          '5 mg',
                                          '5 / 5 mg',
                                          '5 / 80 mg',
                                          '8 mg',
                                          '10 mg',
                                          '10 / 2,5 mg',
                                          '10 / 5 mg',
                                          '16 mg', 
                                          '20 mg',
                                          '20 / 10 mg',
                                          '20 / 20 mg',
                                          '25 mg',
                                          '35 mg',
                                          '40 mg',
                                          '40 / 5 mg',
                                          '50 mg',
                                          '50 / 12,5 mg',
                                          '75 mg',
                                          '80 mg',
                                          '80 / 5 mg',
                                          '5 / 10 mg',
                                          '80 / 12,5 mg',
                                          '90 mg',
                                          '100 mg',
                                          '150 / 12,5 mg',
                                          '160 mg',
                                          '160 / 5 mg',
                                          '160 / 10 / 12,5 mg',
                                          '160 / 10 / 25 mg',
                                          '200 mg',
                                          '250 mg',
                                          '300 / 5 mg',
                                          '300 mg',
                                          '300 / 10 mg',
                                          '300 / 12,5 mg',
                                          '400 mg',
                                          '500 mg',
                                          'Dosage'
                                        ],

                                        value: 'Dosage', 
                                        onChanged: (newValue) {
                                                    setState(() {
                                                      selectedDosage = newValue!;
                                                    });
                                                  },
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: DropDow(
                                        key: _contenanceDropdownKey,
                                        items: const [
                                          '20',
                                          '28',
                                          '30',
                                          '45',
                                          '50',
                                          '60',
                                          '90',
                                          '120',
                                          'Contenance'
                                        ],

                                        value: 'Contenance', 
                                        onChanged: (newValue) {
                                                    setState(() {
                                                      selectedContenance = newValue!;
                                                    });
                                                  },
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: DropDow(
                                        key: _industrieDropdownKey,
                                        items: const [
                                          'Abbott Products S.A.S',
                                          'Adwya',
                                          'Berlin-Chemie AG',
                                          'Bouchara-Recordati',
                                          'Dar Essaydali',
                                          'Hikma',
                                          'IPS',
                                          'Juvise',
                                          'LUSO FARMACO IT',
                                          'Medis',
                                          'Medochemie',
                                          'Merck',
                                          'Mylan',
                                          'Novartis',
                                          'Opalia',
                                          'Pfizer',
                                          'Philadelphia',
                                          'Philadelphia Pharma',
                                          'Pharmaghreb',
                                          'Pharmacare',
                                          'Sanofi',
                                          'Saiph',
                                          'Servier',
                                          'Taha Pharma',
                                          'Teriak',
                                          'Thera',
                                          'Industrie'
                                        ],

                                        value: 'Industrie', 
                                        onChanged: (newValue) {
                                                    setState(() {
                                                      selectedIndustrie = newValue!;
                                                    });
                                                  },
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: DropDow(
                                        key: _prixDropdownKey,
                                        items: const [
                                          '0,10',
                                          '10,25', 
                                          '25,40',
                                          '40,60', 
                                          '60,100',
                                          '100,150',
                                          'Prix'
                                        ], 
                                        value: 'Prix', 
                                        onChanged: (newValue) {
                                                    setState(() {
                                                      selectedPrix = newValue!;
                                                    });
                                                  },
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: DropDow(
                                        key: _couleurCIIDropdownKey,
                                        items: const [
                                        'blanc + bleu',
                                        'blanc + bleu + gris',
                                        'blanc + bleu + jaune',
                                        'blanc + bleu + marron',
                                        'blanc + bleu + noir',
                                        'blanc + bleu + orange',
                                        'blanc + bleu + vert',
                                        'blanc + bleu + violet',
                                        'blanc + gris + vert',
                                        'blanc + jaune + rouge',
                                        'blanc + noir + jaune',
                                        'blanc + noir + orangé',
                                        'blanc + noir + vert',
                                        'blanc + rouge',
                                        'blanc + rouge + bleu',
                                        'blanc + rouge + gris',
                                        'blanc + rouge + noir',
                                        'blanc + rouge + vert',
                                        'blanc + rouge + violet',
                                        'orange + bleu + violet',
                                        'Couleur'
                                      ],

                                        value: 'Couleur', 
                                        onChanged: (newValue) {
                                                    setState(() {
                                                      selectedCouCII = newValue!;
                                                    });
                                                  },
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          
                        ],
                      ),
                    ),
                    //validé

                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                      width:  MediaQuery.of(context).size.width,
                    ),
                    GestureDetector(
                      onTap: () async {
                        test = await Safi(
                          selectedDci,
                          selectedFormegeo,
                          selectedNbDci,
                          selectedDosage,
                          selectedContenance,
                          selectedIndustrie,
                          selectedNbCI,
                          selectedPerCI,
                          selectedNbUnCI,
                          selectedEnrPel,
                          selectedSecabilite,
                          selectedCouleurCIback,
                          selectedFormeCI,
                          selectedPrix,
                          selectedCouCII,
                          selectedCouCI,
                          elements);
                        Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => PageIIICardio1(result : test)),
                        ); 
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(12*EdgeMargin, EdgeMargin, 12*EdgeMargin, 0),
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.0625,
                        decoration: BoxDecoration(
                          color: const Color(0xff0bce83),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Center(
                          child: Text(
                            'Filtrer',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              height: 1.2,
                              letterSpacing: -0.01,
                            ),
                          ),
                        ),
                      ),
                    ),
                    //validé
                    GestureDetector(
                      onTap: () {
                        resetDropdownValues();
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(12*EdgeMargin, 1.5*EdgeMargin, 12*EdgeMargin, EdgeMargin),
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.0625,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 205, 207, 206),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Center(
                          child: Text(
                            'Réinitialiser',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              height: 1.2,
                              letterSpacing: -0.01,
                            ),
                          ),
                        ),
                      ),
                    ),
                    //validé

                  ],
                ),
              ),
            ),

          ],
        ),
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



class DropDow extends StatefulWidget {
  const DropDow({
    Key? key,
    required this.items,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  final List<String> items;
  final String value;
  final ValueChanged<String?> onChanged;

  @override
  State<DropDow> createState() => _DropDowState();
}
//validé
class _DropDowState extends State<DropDow> {
  String _currentValue = '';
  
  void resetValue() {
    setState(() {
      _currentValue = widget.value;
    });
  }


  @override
  void initState() {
    super.initState();
    _currentValue = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    double EdgeMargin = MediaQuery.of(context).size.width * 0.02;
    return Container(
      width: MediaQuery.of(context).size.width * 0.25,
      height: MediaQuery.of(context).size.height * 0.041,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(27),
        border: Border.all(color: const Color(0xffd8d0e3)),
        color: const Color(0xffffffff),
        boxShadow: const [
          BoxShadow(
          color: Color(0x3f000000),
          offset: Offset(0, 2),
          blurRadius: 2,
          ),
        ],
      ),
      child: Center(
        child: DropdownButton<String>(
        value: _currentValue,
        onChanged: (newValue) {
          setState(() {
            _currentValue = newValue!;
            widget.onChanged(newValue);
          });
        },
        isExpanded: true,
        underline: Container(
          height: 0,
          color: Colors.transparent,
        ),
        style: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 10,
          fontWeight: FontWeight.bold,
          height: 1,
          letterSpacing: 0.25,
          color: Color(0xff2d0c57),
        ),
        items: widget.items.map((String dropDownStringItem) {
          return DropdownMenuItem<String>(
            value: dropDownStringItem,
            child:Padding(
              padding: EdgeInsets.only(left: 0.6*EdgeMargin),
              child:Text(dropDownStringItem),),
          );
        }).toList(),
      ),
     ),
    
    );
  }
}
//validé
class Element {
  String dci;
  String formegeo;
  String nbDci;
  String dosage;
  String contenance;
  String industrie;
  String nbCI; 
  String perCI;
  String nbUnCI;
  String enrPel;
  String secabilite;
  String couleurCIback;
  String formeCI;
  String prix;
  String couleurCII;
  String couleurCI;
  String Esmou;

  Element(
    this.dci, //
    this.formegeo, // 
    this.nbDci, //
    this.dosage, //
    this.contenance, //
    this.industrie, //
    this.nbCI, //
    this.perCI, //
    this.nbUnCI, //
    this.enrPel, //
    this.secabilite, //
    this.couleurCIback, //
    this.formeCI, //
    this.prix, //
    this.couleurCII, //
    this.couleurCI, //
    this.Esmou
  );
}
//validé
bool FilterDci(String selectedDci, List<Element> elements) {
  List<Element> filteredElements =
      elements.where((element) => element.dci == selectedDci).toList();
  return filteredElements.isNotEmpty;
}
//validé
bool filterPrixRange(String elementPrice, String selectedPriceRange) {
  List<String> priceRange = selectedPriceRange.split(',');
  if (priceRange.length != 2) {
  print('slim');
    return false;
  }
  double? elementPriceValue = double.tryParse(elementPrice);
  
  if (elementPriceValue != null) {
    double minPrice = double.tryParse(priceRange[0].trim()) ?? double.negativeInfinity;
    double maxPrice = double.tryParse(priceRange[1].trim()) ?? double.infinity;

    print('minPrice: $minPrice');
    print('maxPrice: $maxPrice');

    return elementPriceValue >= minPrice && elementPriceValue <= maxPrice;
  } else {
    // Handle the case where elementPrice cannot be parsed as a double
    return false;
  } 

}

bool FilterCouCII(String selectedCouCII, List<Element> elements) {
  List<Element> filteredElements =
      elements.where((element) => element.couleurCII == selectedCouCII).toList();
  return filteredElements.isNotEmpty;
}
//validé
bool FilterCouCI(String selectedCouCI, List<Element> elements) {
  List<Element> filteredElements =
      elements.where((element) => element.couleurCI == selectedCouCI).toList();
  return filteredElements.isNotEmpty;
}
//validé
bool FilterFormegeo(String selectedFormegeo, List<Element> elements) {
  List<Element> filteredElements =
      elements.where((element) => element.formegeo == selectedFormegeo).toList();
  return filteredElements.isNotEmpty;
}
//validé
bool FilterNbDci(String selectedNbDci, List<Element> elements) {
  List<Element> filteredElements =
      elements.where((element) => element.nbDci == selectedNbDci).toList();
  return filteredElements.isNotEmpty;
}
//validé
bool FilterDosage(String selectedDosage, List<Element> elements) {
  List<Element> filteredElements =
      elements.where((element) => element.dosage == selectedDosage).toList();
  return filteredElements.isNotEmpty;
}
//validé
bool FilterContenance(String selectedContenance, List<Element> elements) {
  List<Element> filteredElements =
      elements.where((element) => element.contenance == selectedContenance).toList();
  return filteredElements.isNotEmpty;
}
//validé
bool FilterIndustrie(String selectedIndustrie, List<Element> elements) {
  List<Element> filteredElements =
      elements.where((element) => element.industrie == selectedIndustrie).toList();
  return filteredElements.isNotEmpty;
}
//validé
bool FilterNbCI(String selectedNbCI, List<Element> elements) {
  List<Element> filteredElements =
      elements.where((element) => element.nbCI == selectedNbCI).toList();
  return filteredElements.isNotEmpty;
}
//validé
bool FilterPerCI(String selectedPerCI, List<Element> elements) {
  List<Element> filteredElements =
      elements.where((element) => element.perCI == selectedPerCI).toList();
  return filteredElements.isNotEmpty;
}
//validé
bool FilterNbUnCI(String selectedNbUnCI, List<Element> elements) {
  List<Element> filteredElements =
      elements.where((element) => element.nbUnCI == selectedNbUnCI).toList();
  return filteredElements.isNotEmpty;
}
//validé
bool FilterEnrPel(String selectedEnrPel, List<Element> elements) {
  List<Element> filteredElements =
      elements.where((element) => element.enrPel == selectedEnrPel).toList();
  return filteredElements.isNotEmpty;
}
//validé
bool FilterSecabilite(String selectedSecabilite, List<Element> elements) {
  List<Element> filteredElements =
      elements.where((element) => element.secabilite == selectedSecabilite).toList();
  return filteredElements.isNotEmpty;
}
//validé
bool FilterCouleurCIback(String selectedCouleurCIback, List<Element> elements) {
  List<Element> filteredElements =
      elements.where((element) => element.couleurCIback == selectedCouleurCIback).toList();
  return filteredElements.isNotEmpty;
}
//validé
bool FilterFormeCI(String selectedFormeCI, List<Element> elements) {
  List<Element> filteredElements =
      elements.where((element) => element.formeCI == selectedFormeCI).toList();
  return filteredElements.isNotEmpty;
}
//validé
  List<String> Safi(
  String selectedDci, 
  String selectedFormegeo, 
  String selectedNbDci,
  String selectedDosage, 
  String selectedContenance, 
  String selectedIndustrie,
  String selectedNbCI, 
  String selectedPerCI, 
  String selectedNbUnCI,
  String selectedEnrPel, 
  String selectedSecabilite, 
  String selectedCouleurCIback,
  String selectedFormeCI,
  String selectedPrix,
  String selectedCouCII,
  String selectedCouCI,
  List<Element> elements
  ) {

  List<String> eleEsmou = []; // zid Liste //Validé 
  List<Element> filteredElements = elements.where((element) {
    bool dciMatch = selectedDci.isNotEmpty ? element.dci == selectedDci : true;
    bool formegeoMatch = selectedFormegeo.isNotEmpty ? element.formegeo == selectedFormegeo : true;
    bool nbDciMatch = selectedNbDci.isNotEmpty ? element.nbDci == selectedNbDci : true;
    bool dosageMatch = selectedDosage.isNotEmpty ? element.dosage == selectedDosage : true;
    bool contenanceMatch = selectedContenance.isNotEmpty ? element.contenance == selectedContenance : true;
    bool industrieMatch = selectedIndustrie.isNotEmpty ? element.industrie == selectedIndustrie : true;
    bool nbCIMatch = selectedNbCI.isNotEmpty ? element.nbCI == selectedNbCI : true;
    bool perCIMatch = selectedPerCI.isNotEmpty ? element.perCI == selectedPerCI : true;
    bool nbUnCIMatch = selectedNbUnCI.isNotEmpty ? element.nbUnCI == selectedNbUnCI : true;
    bool enrPelMatch = selectedEnrPel.isNotEmpty ? element.enrPel == selectedEnrPel : true;
    bool secabiliteMatch = selectedSecabilite.isNotEmpty ? element.secabilite == selectedSecabilite : true;
    bool couleurCIBackMatch = selectedCouleurCIback.isNotEmpty ? element.couleurCIback == selectedCouleurCIback : true;
    bool formeCIMatch = selectedFormeCI.isNotEmpty ? element.formeCI == selectedFormeCI : true;
    bool prixMatch = selectedPrix.isNotEmpty ? filterPrixRange(element.prix, selectedPrix) : true;

    bool couleurCIIMatch = selectedCouCII.isNotEmpty ? element.couleurCII == selectedCouCII : true;
    bool couleurCIMatch = selectedCouCI.isNotEmpty ? element.couleurCI == selectedCouCI : true;

      return dciMatch && formegeoMatch && nbDciMatch && dosageMatch && contenanceMatch && 
            industrieMatch && nbCIMatch && perCIMatch && nbUnCIMatch && enrPelMatch && 
            secabiliteMatch && couleurCIBackMatch && prixMatch && couleurCIIMatch  && couleurCIMatch
            && couleurCIBackMatch && formeCIMatch;
  }).toList();
  
  for (Element element in filteredElements) {
    // Check if both selected colors are empty or match the corresponding element's colors
    if ((selectedCouCI.isEmpty || element.couleurCI.contains(selectedCouCI)) &&
        (selectedCouCII.isEmpty || element.couleurCII.contains(selectedCouCII))) {
      eleEsmou.add(element.Esmou);
    }
  }
  return eleEsmou;
  
}
//validé