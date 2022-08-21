import 'package:flutter/material.dart';
import 'qoute.dart';


class QouteCard extends StatelessWidget {
  final Qoute qoute;
  QouteCard({required this.qoute});
  @override
  Widget build(BuildContext context) {
    return Card(

        margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),

        child:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                qoute.text,
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey[600]
                ),
              ),
              SizedBox(height: 6.0),
              Text(
                  qoute.author,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[500],
                  )
              ),
              SizedBox(height: 16.0),

            ],
          ),
        )
    );
  }
}