import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Snapchat',
      theme: ThemeData(),
      home: const MyHomePage(),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? CupertinoColors.black
          : CupertinoColors.white,
      appBar: AppBar(
        leading: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/avatar.png', // Update the asset path if needed
                      fit: BoxFit.cover,
                      width: 40.0,
                      height: 50.0,
                    ),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    color: CupertinoColors.black,
                    iconSize: 30,
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.search),
                  ),
                ),
              ],
            ),
          ],
        ),
        elevation: 0.00,
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? CupertinoColors.black
            : CupertinoColors.white,
        title: const Text(
          'Chat',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: CupertinoColors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            color: CupertinoColors.black,
            iconSize: 30,
            onPressed: () {},
            icon: const Icon(CupertinoIcons.person_add_solid),
          ),
          IconButton(
            color: CupertinoColors.black,
            iconSize: 30,
            onPressed: () {},
            icon: const Icon(CupertinoIcons.ellipsis_circle),
          ),
        ],
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Column(
          children: [
            const SizedBox(height: 16.0), // Add spacing
            CupertinoListTile(
              title: const Text('Kunal'),
              trailing: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[300], // Light gray background color
                ),
                margin: const EdgeInsets.only(right: 8.0),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.camera),
                  color: CupertinoColors.black,
                ),
              ),
              subtitle: const Row(
                children: [
                  Text(
                    'New Snap',
                    style: TextStyle(
                        color: CupertinoColors.systemRed,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.0),
                    child: Text('.3m'),
                  )
                ],
              ),
              leading: const CircleAvatar(
                radius: 30,
                backgroundColor: CupertinoColors.black,

                backgroundImage: AssetImage(
                    'assets/avatar.png'), // Update the asset path if needed
              ),
            ),
            // Add more CupertinoListTile widgets here if needed

            CupertinoListTile(
              title: const Text('Hazel;'),
              trailing: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[300], // Light gray background color
                ),
                margin: const EdgeInsets.only(right: 8.0),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.camera),
                  color: CupertinoColors.black,
                ),
              ),
              subtitle: const Row(
                children: [
                  Text(
                    'New Snap',
                    style: TextStyle(
                        color: CupertinoColors.systemRed,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.0),
                    child: Text('.7m'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.0),
                    child: Text('🔥18'),
                  )
                ],
              ),
              leading: const CircleAvatar(
                radius: 30,
                backgroundColor: CupertinoColors.black,

                backgroundImage: AssetImage(
                    'assets/avatar.png'), // Update the asset path if needed
              ),
            ),
            CupertinoListTile(
              title: const Text('John Doe'),
              trailing: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[300], // Light gray background color
                ),
                margin: const EdgeInsets.only(right: 8.0),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.camera),
                  color: CupertinoColors.black,
                ),
              ),
              subtitle: const Row(
                children: [
                  Text(
                    'New Snap',
                    style: TextStyle(
                        color: CupertinoColors.systemPurple,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.0),
                    child: Text('.33m'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.0),
                    child: Text('🔥12'),
                  )
                ],
              ),
              leading: const CircleAvatar(
                radius: 30,
                backgroundColor: CupertinoColors.black,

                backgroundImage: AssetImage(
                    'assets/avatar.png'), // Update the asset path if needed
              ),
            ),
            CupertinoListTile(
              title: const Text('Sofia'),
              trailing: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[300], // Light gray background color
                ),
                margin: const EdgeInsets.only(right: 8.0),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.camera),
                  color: CupertinoColors.black,
                ),
              ),
              subtitle: const Row(
                children: [
                  Text(
                    '> ',
                    style: TextStyle(
                      color: CupertinoColors.systemRed,
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    'Delivered',
                    style: TextStyle(
                      color: Color.fromARGB(255, 199, 199, 199),
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.0),
                    child: Text('.24m'),
                  )
                ],
              ),
              leading: const CircleAvatar(
                radius: 30,
                backgroundColor: CupertinoColors.black,

                backgroundImage: AssetImage(
                    'assets/avatar.png'), // Update the asset path if needed
              ),
            ),
            CupertinoListTile(
              title: const Text('Amanda'),
              trailing: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[300], // Light gray background color
                ),
                margin: const EdgeInsets.only(right: 8.0),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.camera),
                  color: CupertinoColors.black,
                ),
              ),
              subtitle: const Row(
                children: [
                  Text(
                    'New Snap',
                    style: TextStyle(
                        color: CupertinoColors.systemRed,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.0),
                    child: Text('.3m'),
                  )
                ],
              ),
              leading: const CircleAvatar(
                radius: 30,
                backgroundColor: CupertinoColors.black,

                backgroundImage: AssetImage(
                    'assets/avatar.png'), // Update the asset path if needed
              ),
            ),
            CupertinoListTile(
              title: const Text('Jaldi Wha se Hatto'),
              trailing: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[300], // Light gray background color
                ),
                margin: const EdgeInsets.only(right: 8.0),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.camera),
                  color: CupertinoColors.black,
                ),
              ),
              subtitle: const Row(
                children: [
                  Text(
                    '[  ]',
                    style: TextStyle(
                        color: CupertinoColors.systemRed,
                        fontSize: 13,
                        fontWeight: FontWeight.normal),
                  ),
                  Text(
                    'Received',
                    style: TextStyle(
                        color: Color.fromARGB(255, 199, 199, 199),
                        fontSize: 13,
                        fontWeight: FontWeight.normal),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.0),
                    child: Text('.43m'),
                  )
                ],
              ),
              leading: const CircleAvatar(
                radius: 30,
                backgroundColor: CupertinoColors.black,

                backgroundImage: AssetImage(
                    'assets/avatar.png'), // Update the asset path if needed
              ),
            ),
            CupertinoListTile(
              title: const Text('Henderson'),
              trailing: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[300], // Light gray background color
                ),
                margin: const EdgeInsets.only(right: 8.0),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.camera),
                  color: CupertinoColors.black,
                ),
              ),
              subtitle: const Row(
                children: [
                  Text(
                    'New Snap',
                    style: TextStyle(
                        color: CupertinoColors.systemRed,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.0),
                    child: Text('.3m'),
                  )
                ],
              ),
              leading: const CircleAvatar(
                radius: 30,
                backgroundColor: CupertinoColors.black,

                backgroundImage: AssetImage(
                    'assets/avatar.png'), // Update the asset path if needed
              ),
            ),
            CupertinoListTile(
              title: const Text('Nancy'),
              trailing: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[300], // Light gray background color
                ),
                margin: const EdgeInsets.only(right: 8.0),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.camera),
                  color: CupertinoColors.black,
                ),
              ),
              subtitle: const Row(
                children: [
                  Text(
                    'New Snap',
                    style: TextStyle(
                        color: CupertinoColors.systemPurple,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.0),
                    child: Text('.1m'),
                  )
                ],
              ),
              leading: const CircleAvatar(
                radius: 30,
                backgroundColor: CupertinoColors.black,

                backgroundImage: AssetImage(
                    'assets/avatar.png'), // Update the asset path if needed
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(CupertinoIcons.app_badge),
              onPressed: () {
                setState(() {
                  _currentIndex = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(CupertinoIcons.search),
              onPressed: () {
                setState(() {
                  _currentIndex = 1;
                });
              },
            ),
            SizedBox(width: 40.0), // Add some spacing between icons
            IconButton(
              icon: Icon(CupertinoIcons.person),
              onPressed: () {
                setState(() {
                  _currentIndex = 2;
                });
              },
            ),
            IconButton(
              icon: Icon(CupertinoIcons.settings),
              onPressed: () {
                setState(() {
                  _currentIndex = 3;
                });
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow,
        onPressed: () {},
        child: Icon(
          CupertinoIcons.camera,
          color: Colors.black,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
