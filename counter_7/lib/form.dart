import 'drawer.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class Budget {
  String judul;
  int nominal;
  String tipe;
  DateTime date;
  Budget(this.judul, this.nominal, this.tipe, this.date);
}

class MyForm extends StatefulWidget {
  const MyForm({super.key});
  static List<Budget> listBudget = [];

  @override
  State<MyForm> createState() => _MyFormState();
}


class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  String? _judul;
  int? _nominal;
  String? tipeBudget;
  DateTime date = DateTime.now();
  List<String> jenisPemakaian = ['Pemasukan', 'Pengeluaran'];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Budget'),
      ),
      drawer: HamburgerMenu(),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Judul",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            _judul = value!;
                          });
                        },
                        onSaved: (String? value) {
                          setState(() {
                            _judul = value!;
                          });
                        },
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Judul tidak boleh kosong!';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Nominal",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            _nominal = int.parse(value!);
                          });
                        },
                        onSaved: (String? value) {
                          setState(() {
                            _nominal = int.parse(value!);
                          });
                        },
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Nominal tidak boleh kosong!';
                          }
                          return null;
                        },
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Container(
                        alignment: Alignment.center,
                        child: ListTile(
                          trailing: DropdownButton(
                            value: tipeBudget,
                            hint: const Text("Pilih Jenis"),
                            icon: const Icon(Icons.keyboard_arrow_down),
                            items: jenisPemakaian.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Center(
                                  child: Text(
                                    items,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                tipeBudget = newValue!;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    OutlinedButton(
                        onPressed: () {
                          showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2030),
                          ).then((value) {
                            setState(() {
                              date = value!;
                            });
                          });
                        },
                        child: Text("Pilih Tanggal"))
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: TextButton(
                child: const Text(
                  "Simpan",
                  style: TextStyle(color: Colors.black),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    MyForm.listBudget.add(new Budget(_judul!, _nominal!, tipeBudget!, date));
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}