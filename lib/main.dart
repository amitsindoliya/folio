import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:convert';
import 'dart:html' as html;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Amit Sindoliya',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // textTheme: TextTheme(
        //   bodyText2: TextStyle(
        //     color: Colors.white,
        //   ),
        // ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  ScrollController listScrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    print(screenWidth);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        controller: listScrollController,
        child: Container(
          // margin: EdgeInsets.symmetric(vertical: 20.0),
          // color: Colors.red,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                color: Color(0xFFFFEDDA),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'AMyth',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        // color: Color(0xFF1D3D55),
                      ),
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            if (listScrollController.hasClients) {
                              final position =
                                  listScrollController.position.minScrollExtent;
                              listScrollController.animateTo(position,
                                  curve: Curves.linear,
                                  duration: Duration(milliseconds: 500));
                            }
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: screenWidth >= 1024
                                    ? 20.0
                                    : screenWidth <= 550
                                        ? 8
                                        : 16),
                            child: Text(
                              'Home',
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            if (listScrollController.hasClients) {
                              final position =
                                  listScrollController.position.maxScrollExtent;
                              listScrollController.animateTo(500,
                                  curve: Curves.linear,
                                  duration: Duration(milliseconds: 500));
                            }
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: screenWidth >= 1024
                                    ? 20.0
                                    : screenWidth <= 550
                                        ? 8
                                        : 16),
                            child: Text(
                              'Skills',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              screenWidth >= 1024
                                  ? 20.0
                                  : screenWidth <= 550
                                      ? 8
                                      : 16,
                              0,
                              screenWidth >= 1024
                                  ? 20.0
                                  : screenWidth <= 550
                                      ? 16
                                      : 16,
                              0),
                          child: InkWell(
                            onTap: () {
                              if (listScrollController.hasClients) {
                                final position = listScrollController
                                    .position.maxScrollExtent;
                                listScrollController.animateTo(
                                    screenWidth > 800 ? 800 : 1000,
                                    curve: Curves.linear,
                                    duration: Duration(milliseconds: 500));
                              }
                            },
                            child: Text(
                              'Projects',
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            if (listScrollController.hasClients) {
                              final position =
                                  listScrollController.position.maxScrollExtent;
                              listScrollController.animateTo(position,
                                  curve: Curves.linear,
                                  duration: Duration(milliseconds: 500));
                            }
                          },
                          child: screenWidth < 330
                              ? Text('')
                              : Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    color: Color(0xFFFFB319),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: screenWidth >= 1024
                                          ? 20.0
                                          : screenWidth <= 550
                                              ? 8
                                              : 16,
                                      vertical: 6.0),
                                  child: Text('Contact',
                                      style: TextStyle(color: Colors.white)),
                                ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                color: Color(0xFFFFEDDA),
                width: MediaQuery.of(context).size.width,
                height: 500,
                child: screenWidth > 900
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 80.0,
                              ),
                              Text(
                                'Hi,',
                                style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'I\'m ',
                                    style: TextStyle(
                                      fontSize: 30.0,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Amit Sindoliya',
                                    style: TextStyle(
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'Software Developer',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'I am 24 years old python programmer with three years\nof working experience in python.Ability to research and\napply analytical and quantitative ability to deliver creative\nbusiness solutions.',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Color(0xFFFFB319)),
                                ),
                                onPressed: () {
                                  if (listScrollController.hasClients) {
                                    final position = listScrollController
                                        .position.maxScrollExtent;
                                    listScrollController.animateTo(position,
                                        curve: Curves.linear,
                                        duration: Duration(milliseconds: 500));
                                  }
                                },
                                child: Text("Know More >>"),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                            ],
                          ),
                          Image.asset(
                            'assets/images/profile1.png',
                            height: 500,
                            width: 420,
                          ),
                        ],
                      )
                    : Stack(
                        children: [
                          Positioned(
                            right: 0,
                            child: Image.asset(
                              'assets/images/profile2.png',
                              height: screenWidth < 500 ? 400 : 500,
                              width: screenWidth < 500 ? 320 : 420,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 80.0,
                                ),
                                Text(
                                  'Hi,',
                                  style: TextStyle(
                                    fontSize: 26.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'I\'m ',
                                      style: TextStyle(
                                        fontSize: 26.0,
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Amit Sindoliya',
                                      style: TextStyle(
                                        fontSize: 26.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Software Developer',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  'I am 24 years old python programmer with three years\nof working experience in python.Ability to research and\napply analytical and quantitative ability to deliver creative\nbusiness solutions.',
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Color(0xFFFFB319)),
                                  ),
                                  onPressed: () {
                                    if (listScrollController.hasClients) {
                                      final position = listScrollController
                                          .position.maxScrollExtent;
                                      listScrollController.animateTo(position,
                                          curve: Curves.linear,
                                          duration:
                                              Duration(milliseconds: 500));
                                    }
                                  },
                                  child: Text("Know More >>"),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(width: 4.0, color: Color(0xFFFFB319)))),
                child: Text(
                  'Skills',
                  style: TextStyle(
                    fontSize: 40.0,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              screenWidth > 900
                  ? Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SkillCard('Python', 4),
                            SizedBox(
                              width: 20.0,
                            ),
                            SkillCard('JAVA', 3),
                          ],
                        ),
                        SizedBox(height: 15.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SkillCard('Spark', 3),
                            SizedBox(
                              width: 20.0,
                            ),
                            SkillCard('Flutter', 4),
                          ],
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        SkillCard('Python', 4),
                        SizedBox(
                          height: 10.0,
                        ),
                        SkillCard('JAVA', 3),
                        SizedBox(
                          height: 10.0,
                        ),
                        SkillCard('Spark', 3),
                        SizedBox(
                          height: 10.0,
                        ),
                        SkillCard('Flutter', 4),
                      ],
                    ),
              SizedBox(height: 40.0),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFFFFB319)),
                ),
                onPressed: () {
                  // generated somewhere
                  String url =
                      'https://github.com/amitsindoliya/keeper/raw/master/Amit\'s Resume.pdf';
                  html.AnchorElement anchorElement =
                      new html.AnchorElement(href: url);
                  anchorElement.download = url;
                  anchorElement.click();
                },
                child: Container(
                  width: screenWidth > 600 ? 140 : 120,
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(FontAwesomeIcons.fileDownload),
                      // Icon(Icons.downloading_rounded),
                      SizedBox(
                        width: screenWidth > 600 ? 10.0 : 8.0,
                      ),
                      Text(
                        "Resume",
                        style: TextStyle(
                            fontSize: screenWidth > 600 ? 20.0 : 16.0),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40.0),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(width: 4.0, color: Color(0xFFFFB319)))),
                child: Text(
                  'Personal Projects',
                  style: TextStyle(
                    fontSize: 40.0,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                width: 1000,
                height: screenWidth > 600 ? 300 : 250,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return SkillItem(index);
                    }),
              ),
              SizedBox(height: 40.0),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(width: 4.0, color: Color(0xFFFFB319)))),
                child: Text(
                  'Contact Me',
                  style: TextStyle(
                    fontSize: 40.0,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                height: screenWidth > 900 ? 500 : 800,
                width: 1300,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xFFFFEDDA),
                ),
                child: screenWidth > 900
                    ? Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: screenWidth > 900 ? 500 : 200,
                            width: screenWidth > 900
                                ? screenWidth / 2.5
                                : screenWidth * 0.9,
                            margin: EdgeInsets.all(10.0),
                            padding: EdgeInsets.all(40.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Contact Information',
                                  style: TextStyle(
                                    fontSize: screenWidth > 900 ? 30.0 : 25,
                                    fontWeight: FontWeight.bold,
                                    // color: Color(0xFFFFB319)
                                  ),
                                ),
                                SizedBox(height: 10.0),
                                Text(
                                    'To connect with me, Contact me through one of the social media or through my email.'),
                                SizedBox(height: screenWidth > 900 ? 30.0 : 10),
                                screenWidth > 900
                                    ? Column(children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.email_rounded,
                                              color: Color(0xFFFFB319),
                                            ),
                                            SizedBox(
                                              width: 20.0,
                                            ),
                                            Text('arsindoliya@gmail.com'),
                                          ],
                                        ),
                                        SizedBox(height: 30.0),
                                        Row(
                                          children: [
                                            FaIcon(
                                              FontAwesomeIcons.linkedin,
                                              color: Color(0xFFFFB319),
                                            ),
                                            SizedBox(
                                              width: 20.0,
                                            ),
                                            Text(' amit-sindoliya'),
                                          ],
                                        ),
                                        SizedBox(height: 30.0),
                                        Row(
                                          children: [
                                            FaIcon(
                                              FontAwesomeIcons.instagram,
                                              color: Color(0xFFFFB319),
                                            ),
                                            SizedBox(
                                              width: 20.0,
                                            ),
                                            Text(' amitsindoliya'),
                                          ],
                                        ),
                                        SizedBox(height: 30.0),
                                        Row(
                                          children: [
                                            FaIcon(
                                              FontAwesomeIcons.twitter,
                                              color: Color(0xFFFFB319),
                                            ),
                                            SizedBox(
                                              width: 20.0,
                                            ),
                                            Text(' amitsindoliya'),
                                          ],
                                        ),
                                        SizedBox(height: 30.0),
                                        Row(
                                          children: [
                                            FaIcon(
                                              FontAwesomeIcons.github,
                                              color: Color(0xFFFFB319),
                                            ),
                                            SizedBox(
                                              width: 20.0,
                                            ),
                                            Text(' github.com/amitsindoliya'),
                                          ],
                                        ),
                                      ])
                                    : Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                            Icon(
                                              Icons.mail,
                                              color: Color(0xFFFFB319),
                                            ),
                                            FaIcon(
                                              FontAwesomeIcons.linkedin,
                                              color: Color(0xFFFFB319),
                                            ),
                                            FaIcon(
                                              FontAwesomeIcons.instagram,
                                              color: Color(0xFFFFB319),
                                            ),
                                            FaIcon(
                                              FontAwesomeIcons.twitter,
                                              color: Color(0xFFFFB319),
                                            ),
                                            FaIcon(
                                              FontAwesomeIcons.github,
                                              color: Color(0xFFFFB319),
                                            ),
                                          ]),
                                // SizedBox(height: 30.0),
                              ],
                            ),
                          ),
                          ContactForm()
                        ],
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: screenWidth > 900 ? 500 : 280,
                            width: screenWidth > 900
                                ? screenWidth / 2.5
                                : screenWidth * 0.9,
                            margin: EdgeInsets.all(10.0),
                            padding: EdgeInsets.all(40.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Contact Information',
                                  style: TextStyle(
                                    fontSize: screenWidth > 900 ? 30.0 : 25,
                                    fontWeight: FontWeight.bold,
                                    // color: Color(0xFFFFB319)
                                  ),
                                ),
                                SizedBox(height: 10.0),
                                Text(
                                    'To connect with me, Contact me through one of the social media or through my email.'),
                                SizedBox(height: screenWidth > 900 ? 30.0 : 10),
                                screenWidth > 900
                                    ? Column(children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.email_rounded,
                                              color: Color(0xFFFFB319),
                                            ),
                                            SizedBox(
                                              width: 20.0,
                                            ),
                                            Text('arsindoliya@gmail.com'),
                                          ],
                                        ),
                                        SizedBox(height: 30.0),
                                        Row(
                                          children: [
                                            FaIcon(
                                              FontAwesomeIcons.linkedin,
                                              color: Color(0xFFFFB319),
                                            ),
                                            SizedBox(
                                              width: 20.0,
                                            ),
                                            Text(' amit-sindoliya'),
                                          ],
                                        ),
                                        SizedBox(height: 30.0),
                                        Row(
                                          children: [
                                            FaIcon(
                                              FontAwesomeIcons.instagram,
                                              color: Color(0xFFFFB319),
                                            ),
                                            SizedBox(
                                              width: 20.0,
                                            ),
                                            Text(' amitsindoliya'),
                                          ],
                                        ),
                                        SizedBox(height: 30.0),
                                        Row(
                                          children: [
                                            FaIcon(
                                              FontAwesomeIcons.twitter,
                                              color: Color(0xFFFFB319),
                                            ),
                                            SizedBox(
                                              width: 20.0,
                                            ),
                                            Text(' amitsindoliya'),
                                          ],
                                        ),
                                        SizedBox(height: 30.0),
                                        Row(
                                          children: [
                                            FaIcon(
                                              FontAwesomeIcons.github,
                                              color: Color(0xFFFFB319),
                                            ),
                                            SizedBox(
                                              width: 20.0,
                                            ),
                                            Text(' github.com/amitsindoliya'),
                                          ],
                                        ),
                                      ])
                                    : Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                            Icon(
                                              Icons.mail,
                                              color: Color(0xFFFFB319),
                                            ),
                                            FaIcon(
                                              FontAwesomeIcons.linkedin,
                                              color: Color(0xFFFFB319),
                                            ),
                                            FaIcon(
                                              FontAwesomeIcons.instagram,
                                              color: Color(0xFFFFB319),
                                            ),
                                            FaIcon(
                                              FontAwesomeIcons.twitter,
                                              color: Color(0xFFFFB319),
                                            ),
                                            FaIcon(
                                              FontAwesomeIcons.github,
                                              color: Color(0xFFFFB319),
                                            ),
                                          ]),
                                // SizedBox(height: 30.0),
                              ],
                            ),
                          ),
                          ContactForm()
                        ],
                      ),
              ),
              Text('2021 All rights Reserved'),
              SizedBox(height: 5.0),
            ],
          ),
        ),
      ),
    );
  }
}

class SkillItem extends StatelessWidget {
  final index;
  SkillItem(this.index);

  var _skillList = [
    {
      'project': 'Portfolio',
      'path': 'assets/images/folio.png',
      'github': 'https://github.com/amitsindoliya/folio',
    },
    {
      'project': 'Notes App',
      'path': 'assets/images/notes.png',
      'github': 'https://github.com/amitsindoliya/copyio',
    },
    {
      'project': 'Data Structures',
      'path': 'assets/images/ds.png',
      'github': 'https://github.com/amitsindoliya/datastructureandalgo'
    },
  ];
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return ClipRRect(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        height: 200,
        width: screenWidth > 600 ? 300 : 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Color(0xFFFFEDDA),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 10.0,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(width: 3.0, color: Color(0xFFFFB319)))),
              child: Text(
                _skillList[index]['project'].toString(),
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Image.asset(
              _skillList[index]['path'].toString(),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              height: 40.0,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFFFFB319)),
                ),
                onPressed: () {
                  String url = _skillList[index]['github'].toString();
                  html.AnchorElement anchorElement =
                      new html.AnchorElement(href: url);
                  // anchorElement.download = url;
                  anchorElement.click();
                },
                child: Container(
                    width: 180,
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        Text('View on GITHUB '),
                        Icon(Icons.arrow_forward_rounded)
                      ],
                    )),
              ),
            )
          ],
        ),
        // color: Colors.red,
      ),
    );
  }
}

class ContactForm extends StatefulWidget {
  const ContactForm({
    Key? key,
  }) : super(key: key);

  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  FocusNode myFocusNode = new FocusNode();
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  var _msgSent = false;
  var formDetails = {
    'fname': '',
    'lname': '',
    'email': '',
    'phone': '',
    'msg': '',
  };

  void submit() {
    // First validate form.
    if (this._formKey.currentState!.validate()) {
      _formKey.currentState!.save(); // Save our form now.

      print('Printing the login data.');
      print(formDetails);
      setState(() {
        _msgSent = true;
      });
      _formKey.currentState!.reset();
    }
  }

  _emailValidator(String? value) {
    // If empty value, the isEmail function throw a error.
    // So I changed this function with try and catch.

    if (value.toString().contains('@')) {
      return null;
    }

    return 'Not a valid email';
  }

  _textValidator(String? value) {
    // If empty value, the isEmail function throw a error.
    // So I changed this function with try and catch.

    if (value.toString() != '') {
      return null;
    }

    return 'Should not be Empty';
  }

  _phoneValidator(String? value) {
    // If empty value, the isEmail function throw a error.
    // So I changed this function with try and catch.

    try {
      int.parse(value.toString());

      return null;
    } catch (Exception) {
      return 'Invalid, Don\'t add country code if added';
    }
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth > 900 ? screenWidth / 2 : screenWidth * 0.9,
      padding: EdgeInsets.all(screenWidth > 900 ? 40.0 : 5.0),
      margin: EdgeInsets.all(10.0),
      height: 480,
      child: SingleChildScrollView(
        child: Form(
          key: this._formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Write to Me',
                style: TextStyle(
                    fontSize: screenWidth > 900 ? 30.0 : 25.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              Text(
                screenWidth > 900
                    ? 'You can also directly connect to me on my social media!'
                    : '',
              ),
              SizedBox(height: screenWidth > 900 ? 30.0 : 0.0),
              Row(
                children: [
                  Container(
                    width: screenWidth > 900
                        ? (screenWidth / 5)
                        : screenWidth * 0.4,
                    child: TextFormField(
                      focusNode: myFocusNode,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFFFB319)),
                        ),
                        hintText: 'John',
                        labelText: 'First Name',
                        hintStyle: TextStyle(color: Colors.grey),
                        labelStyle: TextStyle(color: Colors.grey),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFFFB319),
                          ),
                        ),
                      ),
                      validator: (String? val) {
                        return _textValidator(val);
                      },
                      onSaved: (String? val) {
                        formDetails['fname'] = val.toString();
                      },
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.01,
                  ),
                  Container(
                    width: screenWidth > 900
                        ? (screenWidth / 5)
                        : screenWidth * 0.4,
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFFFB319)),
                        ),
                        labelStyle: TextStyle(color: Colors.grey),
                        hintText: 'Doe',
                        hintStyle: TextStyle(color: Colors.grey),
                        labelText: 'Last Name',
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFFFB319),
                          ),
                        ),
                      ),
                      validator: (String? val) {
                        return _textValidator(val);
                      },
                      onSaved: (String? val) {
                        formDetails['lname'] = val.toString();
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: [
                  Container(
                    width: screenWidth > 900
                        ? (screenWidth / 5)
                        : screenWidth * 0.4,
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFFFB319)),
                        ),
                        labelStyle: TextStyle(color: Colors.grey),
                        hintText: 'you@example.com',
                        labelText: 'E-mail',
                        hintStyle: TextStyle(color: Colors.grey),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFFFB319),
                          ),
                        ),
                      ),
                      validator: (String? val) {
                        return _emailValidator(val);
                      },
                      onSaved: (String? val) {
                        formDetails['email'] = val.toString();
                      },
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.01,
                  ),
                  Container(
                    width:
                        screenWidth > 900 ? screenWidth / 5 : screenWidth * 0.4,
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFFFB319)),
                        ),
                        labelStyle: TextStyle(color: Colors.grey),
                        hintText: '+91 ##########',
                        labelText: 'Phone Number',
                        hintStyle: TextStyle(color: Colors.grey),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFFFB319),
                          ),
                        ),
                      ),
                      validator: (String? val) {
                        return _phoneValidator(val);
                      },
                      onSaved: (String? val) {
                        formDetails['phone'] = val.toString();
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                padding: EdgeInsets.only(right: 10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'You are Amazing!',
                    labelText: 'Message',
                    hintStyle: TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFFFB319)),
                    ),
                    labelStyle: TextStyle(color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFFFB319),
                      ),
                    ),
                  ),
                  validator: (String? val) {
                    return _textValidator(val);
                  },
                  onSaved: (String? val) {
                    formDetails['msg'] = val.toString();
                  },
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  _msgSent ? Text('Sent    ') : Text(''),
                  Container(
                    padding: EdgeInsets.only(right: 10.0),
                    child: ElevatedButton(
                      onPressed: submit,
                      child: Container(
                          padding: EdgeInsets.all(10.0),
                          margin: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text('Send')),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFFFFB319)),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SkillCard extends StatelessWidget {
  String title;
  int _score;
  SkillCard(this.title, this._score);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      width: MediaQuery.of(context).size.width < 500 ? 180 : 250.0,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Color(0xFFFFEDDA),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var i = 0; i < 5; i++)
                Icon(
                  Icons.star_border_rounded,
                  color: i >= _score ? Colors.grey : Color(0xFFFFB319),
                ),
            ],
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 15.0,
              // fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
