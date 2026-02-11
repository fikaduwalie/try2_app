import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
  }
    class MyApp extends StatelessWidget{
      @override
  Widget build(BuildContext context) {
  return MaterialApp(
    title:'navigating to a new page',
    home: HomePage(),
theme:ThemeData(primarySwatch: Colors.orange)
  );
  }
    }
  class HomePage  extends StatefulWidget {
 @override
_HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  var cont = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('title')),
 
    body: Container(
      margin: EdgeInsets.all(100.0),
      child: Column(children: <Widget>[
        Container(
          padding: EdgeInsets.all(25.0),
          child:TextField(
            controller:cont,
            decoration:InputDecoration(hintText: 'typ any text') ,
          )
        ),
        ElevatedButton(
          child: Text('click me'),
          onPressed: (){
            var route = MaterialPageRoute(builder:(BuildContext context) =>SecondPage(data:cont.text,));
Navigator.of(context).push(route);

            },
          
        )
      ],
      ),
    ),
    );
  }
}
class SecondPage  extends StatefulWidget {
  final String data;
 const SecondPage({Key? key, required this.data}) : super(key: key);
  @override
   _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title:Text('Second page'),
      ),
      body: Container(
        margin: EdgeInsets.all(30.0),
        padding: EdgeInsets.all(4.0) ,
        child: Center(
          child: Text('${widget.data}'),
        ),
      )
    );
  }
}

