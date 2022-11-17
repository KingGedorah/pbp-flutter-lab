import 'package:flutter/material.dart';
import 'package:counter_7/drawer.dart';
import 'package:counter_7/form.dart';

class MyBudget extends StatefulWidget {
  const MyBudget({super.key});

  @override
  State<MyBudget> createState() => _DataState();
}

class _DataState extends State<MyBudget> {
  @override
  Widget build(BuildContext context) {
    List<Budget> myBudget = MyForm.listBudget;
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Budget'),
      ),
      drawer: HamburgerMenu(),
      body: ListView.builder(
        itemCount: myBudget.length,
        itemBuilder: (context, index) {
          final item = myBudget[index];
          return Card(
            child: ListTile(
              title: Text(
                item.judul,
                style: TextStyle(fontSize: 18),
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    item.nominal.toString(),
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  Text(
                    item.date.toString(),
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  Text(
                    item.tipe,
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}