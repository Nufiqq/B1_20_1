import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kelompok1_b1/Item_Card_Profile.dart';
import 'package:kelompok1_b1/MainPage.dart';
import 'Cart.dart';
import 'profile.dart';

class Edit extends StatelessWidget {
  final TextEditingController NamaController = TextEditingController();
  final TextEditingController HpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference user = firestore.collection("user");

    return Scaffold(
        drawer: Drawer(
          child: Container(
            color: Colors.white,
            child: ListView(
              children: [
                DrawerHeader(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 195, 36, 36)),
                  child: Image.asset('assets/Logo.png'),
                ),
                ListTile(
                  title: Text("Home"),
                  leading: Icon(Icons.home),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => MainPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text("Profile"),
                  leading: Icon(Icons.person),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Profile(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text("Cart"),
                  leading: Icon(Icons.shopping_cart),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => cart(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: Text(
            'Edit Profile',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            ListView(
              children: [SizedBox(height: 150)],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(-5, 0),
                      blurRadius: 15,
                      spreadRadius: 3)
                ]),
                width: double.infinity,
                height: 130,
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextField(
                            controller: NamaController,
                            decoration: InputDecoration(hintText: "Nama"),
                          ),
                          TextField(
                            controller: HpController,
                            decoration: InputDecoration(hintText: "Nomor HP"),
                            keyboardType: TextInputType.number,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            StreamBuilder<QuerySnapshot>(
              stream: user.snapshots(),
              builder: (_, snapshot) {
                return (snapshot.hasData)
                    ? Column(
                        children: snapshot.data!.docs
                            .map(
                              (e) => ItemCardProfile(
                                e.get('Nama'),
                                e.get('Hp'),
                                onUpdate: () {
                                  user.doc(e.id).update({
                                    'Nama': NamaController.text,
                                    'Hp': HpController.text,
                                  });
                                },
                              ),
                            )
                            .toList(),
                      )
                    : Text('Loading...');
              },
            ),
          ],
        ));
  }
}
