import 'package:flutter/material.dart';
import 'package:my_second_project/login_page.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'cart_page.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static final title = 'salomon_bottom_bar';
  @override

  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> Pages = [login()];
  List<String> Title = ["Login"];

  int selectedPage = 0;
  var _currentIndex = 0;

  static const List<String> sampleImages = [
    "https://www.i2img.com/force_download.php?file=download/url-to-image_en_3_193_206034049366488f557dab93.14919113/url2img_66488f5f2d937.jpeg",
    "https://images.unsplash.com/photo-1669462277329-f32f928a4a79?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
    "https://images.unsplash.com/photo-1542840410-3092f99611a3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
      ),

      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: Colors.lightBlue,
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text("Likes"),
            selectedColor: Colors.indigoAccent,
          ),

          /// Search
          SalomonBottomBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text("Cart"),
            selectedColor: Colors.indigo,

          ),

          /// Profile
          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
            selectedColor: Colors.deepPurpleAccent,
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("               "),
            SizedBox(
              width: 270,
              height: 25,
              child: TextField(
                onChanged: (value) {
                  //Do something with the user input.
                },
                decoration:

                const InputDecoration(
                  icon: Icon(
                    Icons.search,
                  ),
                  hintText: '  ',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.lightBlueAccent, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.lightBlueAccent, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                ),
              ),
            ),

            FanCarouselImageSlider(
              imagesLink: sampleImages,
              isAssets: false,
              sliderHeight: 150,

            )

          ],
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(child: Image.asset("lib/clothes_logo.png")),
            ListTile(
              title: const Text("Home"),
              leading: const Icon(Icons.home),
              onTap: () {
                selectedPage = 0;
                Navigator.pop(context);
                setState(() {});
              },
            ),


            ListTile(
              title: const Text("Setting"),
              leading: const Icon(Icons.settings),
              onTap: () {
                selectedPage = 0;
                Navigator.pop(context);
                setState(() {});
              },
            )
          ],

 
        ),

      ),
    );
  }
}
