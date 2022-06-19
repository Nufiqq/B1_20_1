import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'Item_Card.dart';
import 'MainPage.dart';
import 'profile.dart';

class cart extends StatelessWidget {
  final TextEditingController NamaController = TextEditingController();
  final TextEditingController HargaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference cart = firestore.collection("cart");

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
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: Text(
            'Keranjang',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            ListView(
              children: [
                // VIEW DATA HERE
                StreamBuilder<QuerySnapshot>(
                  stream: cart.snapshots(),
                  builder: (_, snapshot) {
                    return (snapshot.hasData)
                        ? Column(
                            children: snapshot.data!.docs
                                .map(
                                  (e) => ItemCard(
                                    e.get('Nama'),
                                    e.get('Harga'),
                                    onDelete: () {
                                      cart.doc(e.id).delete();
                                    },
                                  ),
                                )
                                .toList(),
                          )
                        : Text('Loading...');
                  },
                ),
                SizedBox(height: 150)
              ],
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
                        width: MediaQuery.of(context).size.width - 160,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextField(
                              controller: NamaController,
                              decoration:
                                  InputDecoration(hintText: "Nama Menu"),
                            ),
                            TextField(
                              controller: HargaController,
                              decoration: InputDecoration(hintText: "Harga"),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 130,
                        width: 130,
                        padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Text(
                              'Add Order',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () {
                              //// ADD DATA HERE
                              cart.add({
                                'Nama': NamaController.text,
                                'Harga': HargaController.text,
                              });

                              NamaController.text = '';
                              HargaController.text = '';
                            }),
                      )
                    ],
                  ),
                )),
          ],
        ));
  }
}
