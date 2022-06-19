import 'package:flutter/material.dart';
import 'package:kelompok1_b1/Cart.dart';

class detaildessert1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFFFAFAFA),
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF3a3737),
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          brightness: Brightness.light,
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Color(0xFF3a3737),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => cart(),
                    ),
                  );
                })
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Image.asset(
                      "assets/Desserts1.png",
                      height: 200,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "   Mix Berries McFlurry\n    with Oreo",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF3a3a3b),
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "                 Rp16.700",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF3a3a3b),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    child: Text(
                      textAlign: TextAlign.center,
                      "Rasakan nikmatnya perpaduan Soft Ice Cream McD dengan saus Mixed Berries yang hadir dalam 2 pilihan topping: OREO dan Froot Loops.",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF3a3a3b),
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => cart(),
                          ),
                        );
                      },
                      child: Container(
                        width: 200.0,
                        height: 45.0,
                        decoration: new BoxDecoration(
                          color: Color(0xFFfd2c2c),
                          border: Border.all(color: Colors.white, width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Text(
                            'Add To Cart',
                            style: new TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class detaildessert2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFFFAFAFA),
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF3a3737),
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          brightness: Brightness.light,
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Color(0xFF3a3737),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => cart(),
                    ),
                  );
                })
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Image.asset(
                      "assets/Desserts2.png",
                      height: 200,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "   Mix Berries McFlurry\n   with Froot Loops",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF3a3a3b),
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "                  Rp16.700",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF3a3a3b),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    child: Text(
                      textAlign: TextAlign.center,
                      "Rasakan nikmatnya perpaduan Soft Ice Cream McD dengan saus Mixed Berries yang hadir dalam 2 pilihan topping: OREO dan Froot Loops.",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF3a3a3b),
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => cart(),
                          ),
                        );
                      },
                      child: Container(
                        width: 200.0,
                        height: 45.0,
                        decoration: new BoxDecoration(
                          color: Color(0xFFfd2c2c),
                          border: Border.all(color: Colors.white, width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Text(
                            'Add To Cart',
                            style: new TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class detaildessert3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFFFAFAFA),
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF3a3737),
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          brightness: Brightness.light,
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Color(0xFF3a3737),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => cart(),
                    ),
                  );
                })
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Image.asset(
                      "assets/Desserts3.png",
                      height: 200,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "   McFlurry featuring Oreo",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF3a3a3b),
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "               Rp14.900",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF3a3a3b),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    child: Text(
                      textAlign: TextAlign.center,
                      "Es krim vanilla lembut dengan campuran biskuit Oreo Crumbs",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF3a3a3b),
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => cart(),
                          ),
                        );
                      },
                      child: Container(
                        width: 200.0,
                        height: 45.0,
                        decoration: new BoxDecoration(
                          color: Color(0xFFfd2c2c),
                          border: Border.all(color: Colors.white, width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Text(
                            'Add To Cart',
                            style: new TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class detaildessert4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFFFAFAFA),
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF3a3737),
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          brightness: Brightness.light,
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Color(0xFF3a3737),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => cart(),
                    ),
                  );
                })
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Image.asset(
                      "assets/Desserts4.png",
                      height: 200,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "   Choco McFlurry",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF3a3a3b),
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "                           Rp15.000",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF3a3a3b),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    child: Text(
                      textAlign: TextAlign.center,
                      "Es krim vanilla lembut dengan campuran bubuk coklat",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF3a3a3b),
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => cart(),
                          ),
                        );
                      },
                      child: Container(
                        width: 200.0,
                        height: 45.0,
                        decoration: new BoxDecoration(
                          color: Color(0xFFfd2c2c),
                          border: Border.all(color: Colors.white, width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Text(
                            'Add To Cart',
                            style: new TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class detaildessert5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFFFAFAFA),
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF3a3737),
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          brightness: Brightness.light,
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Color(0xFF3a3737),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => cart(),
                    ),
                  );
                })
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Image.asset(
                      "assets/Desserts5.png",
                      height: 200,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "   Chocolate Sundae",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF3a3a3b),
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "                       Rp12.700",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF3a3a3b),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    child: Text(
                      textAlign: TextAlign.center,
                      "Es krim vanilla lembut dengan pilihan topping saus coklat",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF3a3a3b),
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => cart(),
                          ),
                        );
                      },
                      child: Container(
                        width: 200.0,
                        height: 45.0,
                        decoration: new BoxDecoration(
                          color: Color(0xFFfd2c2c),
                          border: Border.all(color: Colors.white, width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Text(
                            'Add To Cart',
                            style: new TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class detaildessert6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFFFAFAFA),
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF3a3737),
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          brightness: Brightness.light,
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Color(0xFF3a3737),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => cart(),
                    ),
                  );
                })
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Image.asset(
                      "assets/Desserts6.png",
                      height: 200,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "  Strawberry Sundae",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF3a3a3b),
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "                       Rp12.700",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF3a3a3b),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    child: Text(
                      textAlign: TextAlign.center,
                      "Es krim vanilla lembut dengan pilihan topping saus strawberry",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF3a3a3b),
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => cart(),
                          ),
                        );
                      },
                      child: Container(
                        width: 200.0,
                        height: 45.0,
                        decoration: new BoxDecoration(
                          color: Color(0xFFfd2c2c),
                          border: Border.all(color: Colors.white, width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Text(
                            'Add To Cart',
                            style: new TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
