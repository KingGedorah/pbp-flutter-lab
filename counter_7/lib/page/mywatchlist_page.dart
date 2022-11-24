import 'dart:convert';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/mywatchlist_detail.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'databudget.dart';
import 'form.dart';
import 'package:counter_7/model/mywatchlist.dart';

class MyWatchListPage extends StatefulWidget {
  const MyWatchListPage({super.key});

  final String title = "Watchlist";

  @override
  State<MyWatchListPage> createState() => _MyWatchListPageState();
}

class _MyWatchListPageState extends State<MyWatchListPage> {
  Future<List<MyWatchList>> fetchMyWatchlist() async {
    var url = Uri.parse('http://web-tugas2pbp-palinggg.herokuapp.com/mywatchlist/json/');
    var response = await http.get(
      url,
      headers: {
        "Access-Control-Allow-Origin": "*",
        "Content-Type": "application/json",
      },
    );

    // melakukan decode response menjadi bentuk json
    var data = jsonDecode(utf8.decode(response.bodyBytes));

    // melakukan konversi data json menjadi object MyWatchList
    List<MyWatchList> myWatchlist = [];

    for (var d in data) {
      if (d != null) {
        myWatchlist.add(MyWatchList.fromJson(d));
      }
    }

    return myWatchlist;
  }

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
        ],
      ),
    ),
      body: FutureBuilder(
          future: fetchMyWatchlist(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return const Center(child: CircularProgressIndicator());
            } else {
              if (!snapshot.hasData) {
                return Column(
                  children: const [
                    Text(
                      "Tidak ada My Watchlist :(",
                      style: TextStyle(color: Colors.blue, fontSize: 18),
                    ),
                    SizedBox(height: 8),
                  ],
                );
              } else {
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (_, index) => Card(
                            child: InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => WatchListDetailPage(
                                      fields: snapshot.data![index].fields),
                                ));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text(
                                  "${snapshot.data![index].fields['title']}",
                                  style: const TextStyle(
                                    fontSize: 17.0,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )));
              }
            }
          }),
    );
  }
}