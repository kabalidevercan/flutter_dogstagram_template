import 'package:flutter/material.dart';

import 'main.dart';

class DetayPage extends StatefulWidget {
  var imgPath;
  DetayPage({Key? key, required this.imgPath}) : super(key: key);

  @override
  State<DetayPage> createState() => _DetayPageState();
}

class _DetayPageState extends State<DetayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: widget.imgPath,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.imgPath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 8,
              child: Container(
                color: Colors.pink.withOpacity(0.3),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 150,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            image: DecorationImage(
                              image: AssetImage("assets/kremdetay.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Krem",
                              style: TextStyle(
                                fontFamily: "follow",
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Agresif ve çirkin",
                              style: TextStyle(
                                fontFamily: "genel",
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width - 180,
                              child: Text(
                                "Royalden Kuzu parçacıklı mamayı çok severim.Sahiplerim çok iyi insanlardır.Hepsini çok seviyorum ama en çok Ercan'ı seviyorum.Çünkü dışarda gezdirebilecek vakti olan tek kişi o.",
                                style: TextStyle(
                                  fontFamily: "genel",
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 10,
                        bottom: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          FloatingActionButton(
                            backgroundColor: Colors.black,
                            onPressed: () {
                              Navigator.of(context).pop(
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ),
                              );
                            },
                            child: Icon(
                              Icons.arrow_circle_left_rounded,
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
    );
  }
}
