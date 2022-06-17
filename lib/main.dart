import 'package:flutter/material.dart';

import 'detay.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.pink,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: "Ana Sayfa",
            icon: Icon(
              Icons.bungalow_sharp,
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.audiotrack_sharp,
              color: Colors.white,
            ),
            label: "Şarkılarım",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.attach_email_outlined,
              color: Colors.white,
            ),
            label: "Mesaj",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.emoji_people,
              color: Colors.white,
            ),
            label: "Profil",
          ),
        ],
      ),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt,
              color: Colors.black,
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Dogstagram",
          style: TextStyle(
            color: Colors.pink,
            fontFamily: "appBar",
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.pink,
              ),
            ),
            //color: Colors.blue,
            height: 140,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 10,
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  listElemani("assets/krembaslik.jpg"),
                  SizedBox(
                    width: 20,
                  ),
                  listElemani("assets/ekmekreis.jpg"),
                  SizedBox(
                    width: 20,
                  ),
                  listElemani("assets/trollkopek.jpg"),
                  SizedBox(
                    width: 20,
                  ),
                  listElemani("assets/saskin.jpg"),
                  SizedBox(
                    width: 20,
                  ),
                  listElemani("assets/kedi.jpg"),
                  SizedBox(
                    width: 20,
                  ),
                  listElemani("assets/saskin.jpg"),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              //color: Colors.blue,
              elevation: 50,
              child: Container(
                height: 450,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                image: AssetImage("assets/krembaslik.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width - 160,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Krem",
                                  style: TextStyle(
                                    fontFamily: "follow",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.pink,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Agresif ve Çirkin",
                                  style: TextStyle(
                                    fontFamily: "genel",
                                    fontSize: 10,
                                    color: Colors.pink.withOpacity(0.6),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.more_vert,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Merhaba ben Krem.Tekirdağ'ın Ergene ilçesinde yeşiller deri fabrikasında dünyaya geldim.Annem Rus asıllı sibirya kurtu,babam Türk asıllı sokak köpeği.Durduk yere insanlara havlamayı severim.En sevdiğim yaş mama Royalden Kuzu parçacıklı.Veterinerlerden nefret ederim.",
                        style: TextStyle(
                          fontFamily: "genel",
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      DetayPage(imgPath: "assets/krem1.jpg"),
                                ),
                              );
                            },
                            child: Hero(
                              tag: "assets/krem1.jpg",
                              child: Container(
                                height: 200,
                                width:
                                    (MediaQuery.of(context).size.width - 50) /
                                        2,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(5),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/krem1.jpg",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => DetayPage(
                                          imgPath: "assets/krem2.jpg"),
                                    ),
                                  );
                                },
                                child: Hero(
                                  tag: "assets/krem2.jpg",
                                  child: Container(
                                    height: 95,
                                    width: (MediaQuery.of(context).size.width -
                                            100) /
                                        2,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                        image: AssetImage("assets/krem2.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => DetayPage(
                                          imgPath: "assets/krem33.jpg"),
                                    ),
                                  );
                                },
                                child: Hero(
                                  tag: "assets/krem33.jpg",
                                  child: Container(
                                    height: 95,
                                    width: (MediaQuery.of(context).size.width -
                                            100) /
                                        2,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                        image: AssetImage("assets/krem33.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Divider(),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.pink,
                            size: 25,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "55K",
                            style: TextStyle(
                              fontFamily: "genel",
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.pink,
                            ),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Icon(
                            Icons.comment,
                            size: 20,
                            color: Colors.pink,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "325",
                            style: TextStyle(
                              fontFamily: "genel",
                              fontSize: 16,
                              color: Colors.pink,
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width - 220,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.reply,
                                  color: Colors.pink,
                                  size: 24,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Text(
                                  "17K",
                                  style: TextStyle(
                                    fontFamily: "genel",
                                    fontSize: 17,
                                    color: Colors.pink,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget listElemani(String imagePath) {
    var SonYazi = "";
    return Column(
      children: [
        Container(
          height: 75,
          width: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.pink,
          ),
          child: Container(
            child: Center(
              child: Text(
                "Krem",
                style: TextStyle(
                  fontFamily: "follow",
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
