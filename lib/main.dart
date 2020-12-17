import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.teal,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        // visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyStatefulWidget(),
    );
  }
}

class ScrollingPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage1 = AssetImage('images/image1.png');
    Widget image1 = FittedBox(child: Image(image: assetImage1), fit: BoxFit.fill);

    AssetImage assetImage2 = AssetImage('images/image2.png');
    Widget image2 =
        FittedBox(child: Image(image: assetImage2), fit: BoxFit.fill);

    AssetImage assetImage3 = AssetImage('images/image3.png');
    Widget image3 =
        FittedBox(child: Image(image: assetImage3), fit: BoxFit.fill);

    AssetImage assetImage4 = AssetImage('images/image4.png');
    Widget image4 =
        FittedBox(child: Image(image: assetImage4), fit: BoxFit.fill);

    AssetImage assetImage5 = AssetImage('images/image5.png');
    Widget image5 =
        FittedBox(child: Image(image: assetImage5), fit: BoxFit.fill);

    // AssetImage assetImage6 = AssetImage('images/ayurveda.png');
    // Widget image6 =
    //     FittedBox(child: Image(image: assetImage6), fit: BoxFit.fill);
    //
    // AssetImage assetImage7 = AssetImage('images/family.png');
    // Widget image7 =
    //     FittedBox(child: Image(image: assetImage7), fit: BoxFit.fill);
    //
    // AssetImage assetImage8 = AssetImage('images/skincare.png');
    // Widget image8 =
    //     FittedBox(child: Image(image: assetImage8), fit: BoxFit.fill);

    return Container(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                   Container(
                    height: 200,
                    decoration:  BoxDecoration(
                      image:  DecorationImage(
                        image: AssetImage('images/image1.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          height: 150,
                      width: 200,
                      decoration:  BoxDecoration(
                        image:  DecorationImage(
                          image: AssetImage('images/image2.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      ),
                        Container(
                          height: 150,
                          width: 200,
                          decoration:  BoxDecoration(
                            image:  DecorationImage(
                              image: AssetImage('images/image3.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),

                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 200,
                          decoration:  BoxDecoration(
                            image:  DecorationImage(
                              image: AssetImage('images/image4.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 200,
                          decoration:  BoxDecoration(
                            image:  DecorationImage(
                              image: AssetImage('images/image5.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),

                  ),
                  Container(
                    height: 200.0,
                    child: Column(
                      children: [
                      Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Shop By Category",style: TextStyle(fontWeight: FontWeight.w800),),
                    ),

                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Extensive Range To Keep Your Family Healthy",style: TextStyle(fontWeight: FontWeight.w300),),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 30, top:20, right: 0, bottom:0),
                              height: 80,
                              width: 80,
                              decoration:  BoxDecoration(
                                image:  DecorationImage(
                                  image: AssetImage('images/family.png'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 60, top:20, right: 0, bottom:0),
                              height: 80,
                              width: 80,
                              decoration:  BoxDecoration(
                                image:  DecorationImage(
                                  image: AssetImage('images/ayurveda.png'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 60, top:20, right: 00, bottom:0),
                              height: 80,
                              width: 80,
                              decoration:  BoxDecoration(
                                image:  DecorationImage(
                                  image: AssetImage('images/skincare.png'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ),
                  Container(
                    // Another fixed-height child.
                    color: const Color(0xff008000), // Green
                    height: 120.0,
                    alignment: Alignment.center,
                    child: const Text('Fixed Height Content'),
                  ),
                  Container(
                    // Another fixed-height child.
                    color: const Color(0xff008000), // Green
                    height: 120.0,
                    alignment: Alignment.center,
                    child: const Text('Fixed Height Content'),
                  ),
                  Container(
                    // Another fixed-height child.
                    color: const Color(0xff008000), // Green
                    height: 120.0,
                    alignment: Alignment.center,
                    child: const Text('Fixed Height Content'),
                  ),
                ],
              ),
          );
        },
      ),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
  HomeWidget(),
    Text(
      'Offer Section',
      style: optionStyle,
    ),
    Text(
      'Cash Section',
      style: optionStyle,
    ),
    Text(
      'Support Section',
      style: optionStyle,
    ),
    Text(
      'Other Options',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seventh Dev App'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer),
            label: 'Offer',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: 'Cash',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.headset_mic_rounded),
            label: 'Support',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'More',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.teal[800],
        unselectedItemColor: Colors.grey[800],
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollingPart(),
      appBar: AppBar(
        title: TextField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
              icon: Icon(
                Icons.search,
                color: Colors.white60,
              ),
              hintText: "Search for medicines and health products",
              hintStyle: TextStyle(color: Colors.white60),
              suffixIcon: Icon(Icons.mic, color: Colors.white60)),
        ),
      ),
    );
  }
}

// Container(
// child: StaggeredGridView.count(
// crossAxisCount: 2,
// crossAxisSpacing: 8.0,
// mainAxisSpacing: 8.0,
// children: [
// image1,
// image2,
// image3,
// image4,
// image5,
// ],
// staggeredTiles: [
// StaggeredTile.extent(2, 200.0),
// StaggeredTile.extent(1, 200.0),
// StaggeredTile.extent(1, 200.0),
// StaggeredTile.extent(1, 90.0),
// StaggeredTile.extent(1, 90.0),
// ],
// ),
// );
