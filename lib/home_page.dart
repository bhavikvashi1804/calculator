import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  var num1=0.0,num2=0.0,sum=0.0;

  TextEditingController t1=new TextEditingController(text: "0");
  TextEditingController t2=new TextEditingController(text: "0");


  void add()
  {
    setState(() {
      num1=double.parse(t1.text);
      num2=double.parse(t2.text);
      sum=num1+num2;
    });

  }


  void sub()
  {
    setState(() {
      num1=double.parse(t1.text);
      num2=double.parse(t2.text);
      sum=num1-num2;
    });
  }

  void mul()
  {
    setState(() {
      num1=double.parse(t1.text);
      num2=double.parse(t2.text);
      sum=num1*num2;
    });
  }

  void div()
  {
    setState(() {
      num1=double.parse(t1.text);
      num2=double.parse(t2.text);
      sum=num1/num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        centerTitle: true,
      ),
      body:Container(
        margin:EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Output:$sum"),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Enter the 1st number"),
              controller: t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Enter the 2st number"),
              controller: t2,
            ),

            Padding(padding: EdgeInsets.only(top: 80),),

            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: <Widget>[

                  RaisedButton(
                    child: Text("+" , style: TextStyle(fontSize: 20),),
                    onPressed: add,
                  ),

                  RaisedButton(
                    child: Text("-" , style: TextStyle(fontSize: 20),),
                    onPressed: sub,
                  ),

                  RaisedButton(
                    child: Text("*" , style: TextStyle(fontSize: 20), ),
                    onPressed: mul,
                  ),

                  RaisedButton(
                    child:Text("/" , style: TextStyle(fontSize: 20),),
                    onPressed: div,
                  ),
                ],
              ),
            )

          ],
        ),
      )
    );
  }
}
