import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GalleryViewApp(),
    ),
  );
}

class GalleryViewApp extends StatefulWidget {
  const GalleryViewApp({Key? key}) : super(key: key);

  @override
  State<GalleryViewApp> createState() => _GalleryViewAppState();
}

class _GalleryViewAppState extends State<GalleryViewApp> {
  bool isVertical = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "GALLERY VIEWER",
          style: TextStyle(
            letterSpacing: 6,
            fontSize: 22,
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: true,
        actions: [
          Ink(
            child: InkWell(
              onTap: () {
                setState(() {
                  isVertical = !isVertical;
                });
              },
              child: Container(
                width: 30,
                alignment: Alignment.center,
                child: const Icon(Icons.apps),
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
        ],
        backgroundColor: Colors.black87,
      ),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: (isVertical) ? Axis.vertical : Axis.horizontal,
          physics: BouncingScrollPhysics(),
          child: (isVertical)
              ? Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Image.asset(
                      "assets/images/b1.jpg",
                      height: 400,
                      width: 470,
                      fit: BoxFit.fill,
                    ),
                    Image.asset(
                      "assets/images/b2.jpg",
                      height: 400,
                      width: 470,
                      fit: BoxFit.fill,
                    ),
                  ],
                )
              : Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      //  SizedBox(width: 40,),
                      Image.asset(
                        "assets/images/b3.jpg",
                        height: 700,
                        width: 400,
                        fit: BoxFit.fill,
                      ),
                      Image.asset(
                        "assets/images/b1.jpg",
                        height: 700,
                        width: 450,
                        fit: BoxFit.fill,
                      ),
                    ],
                  ),
                ),
        ),
      ),
      backgroundColor: Colors.cyan.shade50,
    );
  }
}
