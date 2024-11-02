import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CityTour());
}

class CityTour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('City Tour'
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var citytour;
    return Scaffold(
      appBar: AppBar(
        title: Text('City Tour'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(padding: EdgeInsets.all(8.0),
                ),
              ],
            ),
          ],
        ),
      ),
            Row(
              children: [
                Padding(padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Divider(color: Colors.blue,),
                      SizedBox(height: 10,),
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: citytour.imageUrls.length,
                          itemBuilder: (context, index) {
                            return Padding(padding: EdgeInsert.only(right: 8),
                          },),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            body: Column(
              children: [
                Row(
                  child: Image.network(
                      "https://picsum.photos/id/164/300/200", semanticLabel: "https://picsum.photos/id/174/300/200",
                    height: 300,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ],

            ),
            const Padding(
              padding: EdgeInsets.only(left: 16,right: 16),
              child: Text("Explore the charm of our city's hidden gems and embark on a journey to discover the rich cultural heritage, breathtaking landscapes, and unique experiences that await you. From historic landmarks to vibrant markets and serene natural wonders, our city  offers a tapestry of experiences that will captivate your senses. Join us in exploring the beauty of our city and create memories that will last a lifetime. Come and visit our city's treasurestoday.",
                textAlign: TextAlign.justify,
              ),
            ),
      Text(
              'Blue body of water',
            ),;
  }
}
