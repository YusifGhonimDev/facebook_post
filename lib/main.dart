import 'package:flutter/material.dart';
import 'widgets/button_color.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Facebook Post"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("images/TheRock.jpg"),
                ),
                title: const Text("The Rock"),
                subtitle: Row(
                  children: const [
                    Text("16m"),
                    SizedBox(width: 5),
                    Icon(
                      Icons.circle,
                      size: 5,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.public,
                      size: 20,
                      color: Colors.grey,
                    ),
                  ],
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.more_horiz),
                    Icon(Icons.clear),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Text("Finally, The 'تنين المجنح' is back!"),
              ),
              const Divider(),
              const SizedBox(height: 10),
              const FacebookPostButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
