import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo!!',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final items = List.generate(100, (i) => i).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('타이틀')
      ),

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text('타이틀'),
  //     ),
      // body: Text('여기에 예제를 작성할 예정입니다.'),
      // body: Container(
      //   width: 100,
      //   height: 100,
      //   color: Colors.red,
      //   child: Text('이상하'),
      //   padding: EdgeInsets.all(8.0),
      //   margin: EdgeInsets.all(40.0),
      // )
      // body: Row(
      //   children: [
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.red,
      //       margin: EdgeInsets.all(8.0),
      //       padding: EdgeInsets.all(8.0),
      //       child: Text('이상하'),
      //     ),
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.green,
      //       margin: EdgeInsets.all(8.0),
      //       padding: EdgeInsets.all(8.0),
      //       child: Text('이상하'),
      //     ),
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.blue,
      //       margin: EdgeInsets.all(8.0),
      //       padding: EdgeInsets.all(8.0),
      //       child: Text('이상하'),
      //     ),
      //
      //   ],
      // )
      // body: Stack(
      //   children: [
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.red,
      //     ),
      //     Container(
      //       width: 80,
      //       height: 80,
      //       color: Colors.green,
      //     ),
      //     Container(
      //       width: 60,
      //       height: 60,
      //       color: Colors.blue,
      //     )
      //   ],
      // ),
      // body: SingleChildScrollView(
      //   child: ListBody(
      //     children: items.map((i) => Text('$i')).toList(),
      //   ),
      // ),
      // body: ListView(
      //   scrollDirection: Axis.vertical,
      //   children: [
      //     ListTile(
      //       leading: Icon(Icons.home, size: 40),
      //       title: Text('홈'),
      //       trailing: Icon(Icons.navigate_next),
      //       onTap: () {}
      //     ),
      //     ListTile(
      //         leading: Icon(Icons.event),
      //         title: Text('이벤트'),
      //         trailing: Icon(Icons.navigate_next),
      //         onTap: () {}
      //     ),
      //     ListTile(
      //         leading: Icon(Icons.camera),
      //         title: Text('카메라'),
      //         trailing: Icon(Icons.navigate_next),
      //         onTap: () {}
      //     ),
      //   ],
      // ),
      // body: GridView.count(
      //   crossAxisCount: 2,
      //   children: [
      //     Container(color: Colors.red, margin: EdgeInsets.all(8.0)),
      //     Container(color: Colors.green),
      //     Container(color: Colors.blue),
      //   ],
      // ),
      // body: PageView(
      //   children: [
      //     Container(color: Colors.red),
      //     Container(color: Colors.green),
      //     Container(color: Colors.blue),
      //   ],
      // ),
  //   );
  // }
  // @override
  // Widget build(BuildContext context) {
  //   return DefaultTabController(
  //     length: 3,
  //     child: Scaffold(
  //       appBar: AppBar(
  //         title: Text('Tap'),
  //         bottom: TabBar(
  //           tabs: [
  //             Tab(icon: Icon(Icons.tag_faces)),
  //             Tab(text: '메뉴2'),
  //             Tab(icon: Icon(Icons.info), text: "메뉴3"),
  //           ],
  //         ),
  //       ),
  //       body: TabBarView(
  //         children: [
  //           Container(color: Colors.yellow),
  //           Container(color: Colors.orange),
  //           Container(color: Colors.red),
  //         ],
  //       ),
  //       floatingActionButton: FloatingActionButton(
  //           child: Icon(Icons.add),
  //           onPressed: () {},
  //       ),
  //       bottomNavigationBar: BottomNavigationBar(items: [
  //         BottomNavigationBarItem(
  //           icon: Icon(Icons.home),
  //           label: 'Home',
  //         ),
  //         BottomNavigationBarItem(
  //           icon: Icon(Icons.person),
  //           label: 'Profile',
  //         ),
  //         BottomNavigationBarItem(
  //           icon: Icon(Icons.notifications),
  //           label: 'Notification',
  //         ),
  //       ]),
  //     ),
  //   );
  // }
      // body: Center(
      //   child: Container(
      //     width: 100,
      //     height: 100,
      //     color: Colors.red,
      //   ),
      // ),
      // body: Padding(
      //   padding: EdgeInsets.all(40.0),
      //   child: Container(
      //     color: Colors.red,
      //   ),
      // ),
      // body: Align(
      //   alignment: Alignment.topLeft,
      //   child: Container(
      //     color: Colors.red,
      //     width: 100,
      //     height: 100,
      //   ),
      // ),
      // body: Column(
      //   children: [
      //     Expanded(
      //       flex: 2,
      //       child: Container(color: Colors.red),
      //     ),
      //     Expanded(
      //       child: Container(color: Colors.green),
      //     ),
      //     Expanded(
      //       child: Container(color: Colors.blue),
      //     ),
      //   ],
      // ),
      // body: SizedBox(
      //   width: 100,
      //   height: 100,
      //   child: Container(
      //     color: Colors.red,
      //   ),
      // ),
      // body: Center(
      //   child: Card(
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(47.0),
      //     ),
      //     elevation: 4.0,
      //     child: SizedBox(
      //       width: 200,
      //       height: 200,
      //       child: Center(child: Text('내용입니다.')),
      //     ),
      //   ),
      // ),
      // body: Column(
      //   children: [
      //     ElevatedButton(onPressed: () {}, child: Text('RadiusButton')),
      //     TextButton(onPressed: () {}, child: Text('TextButton')),
      //     IconButton(onPressed: () {}, icon: Icon(Icons.add), iconSize: 100.0),
      //     FloatingActionButton(child: Icon(Icons.add), onPressed: () {}),
      //   ],
      // ),
      // body: Center(
      //   child: Text(
      //     'Hello World',
      //     style: TextStyle(
      //         fontSize: 40.0,
      //       color: Colors.red,
      //       fontStyle: FontStyle.italic,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      // ),
      // body: Icon(
      //   Icons.home,
      //   color: Colors.red,
      //   size: 600.0,
      // ),
      // body: Column(
      //   children: [
      //     CircularProgressIndicator(),
      //     LinearProgressIndicator()
      //   ],
      // ),
      body: Center(child: CircleAvatar(
        child: Icon(Icons.person),
      )),
    );
  }
}
