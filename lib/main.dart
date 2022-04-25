import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class  QuoteList extends StatefulWidget {

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote("The greatest glory in living lies not in never falling, but in rising every time we fall.", "Nelson Mandela"),
    Quote("The way to get started is to quit talking and begin doing.", "Walt Disney"),
    Quote("If life were predictable it would cease to be life, and be without flavor.", "Eleanor Roosevelt")
  ];

  Widget quoteTemplate(quote) => Card(
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        title: Text('Life Quotes'),
        centerTitle: true,
        backgroundColor: Colors.pink[300],
      ),
      body: Column(
        children: quotes.map((quote) => quoteTemplate(quote)).toList()
      ),
    );
  }
}


