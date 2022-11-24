import 'package:flutter/material.dart';

import 'package:counter_7/main.dart';
import 'databudget.dart';
import 'form.dart';
import 'mywatchlist_page.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/model/mywatchlist.dart';

class WatchListDetailPage extends StatefulWidget {
  const WatchListDetailPage({super.key, required this.fields});

  final Map<String, dynamic> fields;
  final String title = "Detail Film";

  @override
  State<WatchListDetailPage> createState() => _WatchListDetailPage();
}

class _WatchListDetailPage extends State<WatchListDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer (
      child: Column(
        children: [
          ListTile(
            title: const Text('counter_7'),
            onTap: () {
              Navigator.pushReplacement(
                context, 
                MaterialPageRoute(builder: (context) => const MyHomePage(title: 'Program Counter')),
              );
            },
          ),
          ListTile(
            title: const Text('Tambah Budget'),
            onTap: () {
              Navigator.pushReplacement(
                context, 
                MaterialPageRoute(builder: (context) => const MyForm()),
              );
            },
          ),
          ListTile(
            title: const Text('Data Budget'),
            onTap: () {
              Navigator.pushReplacement(
                context, 
                MaterialPageRoute(builder: (context) => const MyBudget()),
              );
            },
          ),
          ListTile(
            title: const Text('My Watchlist'),
            onTap: () {
              Navigator.pushReplacement(
                context, 
                MaterialPageRoute(builder: (context) => const MyWatchListPage()),
              );
            },
          ),
        ],
      ),
    ),
    body: SingleChildScrollView (
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15, top: 10),
                child: Text(
                  "Title : ${widget.fields["title"]}",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 5, top: 5),
                child: Text(
                  "Release date : ${widget.fields["release_date"]}",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 5, top: 5),
                child: Text(
                  "Rating : ${widget.fields['rating']}/10",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15, top: 10),
                child: Text(
                  "Rating : ${widget.fields["status"]}",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15, top: 10),
                child: Text(
                  "Review : ${widget.fields["review"]}",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),)
    ,)
  );
  }
}