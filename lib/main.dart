import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network('https://upload.wikimedia.org/wikipedia/commons/4/41/Sunflower_from_Silesia2.jpg'),
                Image.network('https://upload.wikimedia.org/wikipedia/commons/4/41/Sunflower_from_Silesia2.jpg',
                width: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                    child: Image.network('https://upload.wikimedia.org/wikipedia/commons/4/41/Sunflower_from_Silesia2.jpg',
                        width: 100),),
                  Expanded(
                    flex:2,
                    child: Image.network('https://upload.wikimedia.org/wikipedia/commons/4/41/Sunflower_from_Silesia2.jpg',
                          width: 100),
                  ),
                    Expanded(child: Image.network('https://upload.wikimedia.org/wikipedia/commons/4/41/Sunflower_from_Silesia2.jpg',
                        width: 100))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//https://upload.wikimedia.org/wikipedia/commons/4/41/Sunflower_from_Silesia2.jpg
//https://upload.wikimedia.org/wikipedia/commons/a/a5/Red_Kitten_01.jpg
//https://images.unsplash.com/photo-1598124147095-16d7e62b8d01?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y29ycmVsYXRpb258ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80