import 'package:flutter/material.dart';

class StateTeksUtama extends State<TeksUtama> {
  var listNama = [
    'Tria Bela Sisiliana',
    'Ayu Rahmawati',
    'Rizka Nur Kharifah',
    'Julia Kurnia M',
    'Muhammad Arhan',
    'Aulia Azzahra',
    'Arlin Ika M',
    'Nurus Syaban'
  ];
  var listWarna = [
    const Color.fromARGB(255, 134, 72, 101),
    const Color.fromARGB(255, 56, 7, 65),
    const Color.fromARGB(255, 19, 15, 43),
    const Color.fromARGB(255, 90, 44, 17),
    Colors.indigo,
    Colors.deepPurple,
    Colors.cyan,
    const Color.fromARGB(255, 11, 43, 70),
    const Color.fromARGB(255, 32, 134, 49)
  ];
  int index = 0;

  void incrementIndex() {
    setState(() {
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 233, 240, 243),
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 5,
            blurRadius: 5,
            offset: Offset(20, 20),
          ),
        ],
      ),
      child: Column(
        children: [
          const Text(
            'Apa kabar',
            textDirection: TextDirection.ltr,
          ),
          Text(
            listNama[index % listNama.length],
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              color: listWarna[index % listWarna.length],
            ),
          ),
        ],
      ),
    );
  }
}

class TeksUtama extends StatefulWidget {
  final state = StateTeksUtama();

  TeksUtama({super.key});

  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() => state;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    TeksUtama teksUtama = TeksUtama();

    return MaterialApp(
      title: 'Halo Dunia',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Halo Dunia'),
          backgroundColor: const Color.fromARGB(255, 53, 142, 184),
        ),
        body: Center(
          child: Column(
            children: [
              teksUtama,
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Refresh',
          onPressed: teksUtama.state.incrementIndex,
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}
