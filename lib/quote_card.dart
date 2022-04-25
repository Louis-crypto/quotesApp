import 'package:flutter/material.dart';
import 'quote.dart';

class Quotecard extends StatelessWidget {
  final Quote quote;
  Quotecard(this.quote);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 1.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              quote.text,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0
              ),
            ),
            Text(
              quote.author,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.0
              ),
            )
          ],
        ),
      ),
    );
  }
}