import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var val1 = 0, val2 = 0, sum = 0;
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  void addnumbers() {
    setState(() {
      val1 = int.parse(t1.text);
      val2 = int.parse(t2.text);
      sum = val1 + val2;
    });
  }

  void subnumbers() {
    setState(() {
      val1 = int.parse(t1.text);
      val2 = int.parse(t2.text);
      sum = val1 - val2;
    });
  }

  void mulnumbers() {
    setState(() {
      val1 = int.parse(t1.text);
      val2 = int.parse(t2.text);
      sum = val1 * val2;
    });
  }

  void divnumbers() {
    setState(() {
      val1 = int.parse(t1.text);
      val2 = int.parse(t2.text);
      sum = val1 ~/ val2;
    });
  }

  void clears() {
    setState(() {
      t1.text = "";
      t2.text = "";
      sum=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Calculator App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Output: $sum",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.purple),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: t1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter Number1"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: t2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter Number2"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(
                      onPressed: addnumbers,
                      child: Text("Add"),
                      color: Colors.green,
                      splashColor: Colors.red,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(
                      onPressed: subnumbers,
                      child: Text("sub"),
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(
                      onPressed: divnumbers,
                      child: Text("div"),
                      color: Colors.green,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(
                      onPressed: mulnumbers,
                      child: Text("mul"),
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(
                      onPressed: clears,
                      child: Text("Clear"),
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
