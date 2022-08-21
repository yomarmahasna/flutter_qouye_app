import 'package:flutter/material.dart';
import 'qoute.dart';
import 'qoute_card.dart';
void main() =>runApp(MaterialApp(
  home: QouteList(),
));
class QouteList extends StatefulWidget {
  const QouteList({Key? key}) : super(key: key);

  @override
  State<QouteList> createState() => _QouteListState();
}
class _QouteListState extends State<QouteList> {
  List <Qoute> qoutes=[
    Qoute(author: 'Camilla Eyring',text: 'You do not find the happy life. You make it'),
    Qoute(author: ' Hafez',text: 'Stay close to anything that makes you glad you are alive'),
    Qoute(author: 'E.E',text: 'The most wasted of days is one without laughter'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Aowsom Qoutes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: qoutes.map((qoute) =>QouteCard(qoute:qoute)).toList(),
      ),
    );
  }
}






