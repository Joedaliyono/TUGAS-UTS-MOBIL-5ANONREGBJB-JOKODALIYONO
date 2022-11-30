import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Tugas UTS Joko Daliyono',
    home: HalamanLogin(),
    debugShowCheckedModeBanner: false,
  ));
}

class HalamanLogin extends StatefulWidget {
  const HalamanLogin({super.key});

  @override
  State<HalamanLogin> createState() => _HalamanLoginState();
}

class _HalamanLoginState extends State<HalamanLogin> {
  bool visibilityPass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(150),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.bottomRight,
                colors: [
              Color.fromARGB(255, 233, 211, 19),
              Color.fromARGB(255, 255, 133, 34),
            ])),
        child: Card(
          elevation: 10,
          shadowColor: Colors.black,
          child: Column(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.black87, shape: BoxShape.circle),
                child: Center(
                  child: Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.white60,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                " Selamat Datang Di Toko Sepatu Kami, Silahkan Login",
                style: TextStyle(fontSize: 20, color: Colors.green),
              ),
              Container(
                padding: EdgeInsets.all(50),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 2.0)),
                        labelText: 'User Name',
                        hintText: 'Masukan User Name Anda',
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      obscureText: !visibilityPass,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 2.0)),
                          labelText: 'Password',
                          hintText: 'Masukan Password',
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  visibilityPass = !visibilityPass;
                                });
                              },
                              icon: visibilityPass
                                  ? Icon(Icons.visibility)
                                  : Icon(Icons.visibility_off))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: ElevatedButton(
                          onPressed: () {
                            Route pindah = MaterialPageRoute(
                              builder: (context) => HalamanDua(),
                            );
                            Navigator.pop(context);
                          },
                          child: Text('Login')),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BelajarListView(),
    );
  }
}

class BelajarListView extends StatelessWidget {
  final List bulan = [
    "Adidas = RP. 250.000",
    "Pollo = RP. 350.000",
    "Nike = RP. 450.000",
    "Eiger = RP. 350.000",
    "Homiped = RP. 250.000",
    "Vans = RP. 150.000",
    "Asics = RP. 250.000",
    "Puma = RP. 250.000",
    "Reebok = RP. 350.000",
    "Converse = RP. 360.000",
    "Kodachi = RP. 650.000",
    "Piero = RP. 550.000"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LIST DAN HARGA SEPATU"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(bulan[index], style: TextStyle(fontSize: 30)),
            ),
          );
        },
        itemCount: bulan.length,
      ),
    );
  }
}

class HalamanDua extends StatelessWidget {
  const HalamanDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman 2'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Pindah Halaman 3')),
      ),
    );
  }
}
