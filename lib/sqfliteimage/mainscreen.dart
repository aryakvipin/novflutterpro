import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dbb.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController fullname = TextEditingController();
  Int8List? _bytes;
  _getBytes(imageUrl) async {
    final ByteData data =
    await NetworkAssetBundle(Uri.parse(imageUrl)).load(imageUrl);
    _bytes = data.buffer.asInt8List();
  }

  @override
  void initState() {
    refreshOnStart();
    super.initState();
  }

  refreshOnStart() async {
    await LocalDatabase().readalldata();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () async {
                        await _getBytes(
                            'https://logowik.com/content/uploads/images/flutter5786.jpg');
                        await LocalDatabase().addDataLocally(wholedata: _bytes);
                        setState(() {});
                      },
                      icon: Icon(Icons.add, size: 30),
                    ),
                    Text('Add Data To LocalStorage')
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () async {
                        await LocalDatabase().readalldata();
                        setState(() {});
                      },
                      icon: Icon(Icons.done, size: 30),
                    ),
                    Text('Read Data From LocalStorage')
                  ],
                ),
                ListView.builder(
                  shrinkWrap: true,
                  controller: ScrollController(),
                  itemCount: WholeDataList.length,
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(6.00),
                      child: Image.memory(
                        Uint8List.fromList(WholeDataList[index]['DummyData']),
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                )
              ],
            ),
          )),
    );
  }
}