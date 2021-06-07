import 'package:flutter/material.dart';
import  'quote.dart';


void main() => runApp(MaterialApp(
  home: QuoteList(),
));
class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}
class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author:'oscar wilde',text:"Three things cannot long be hidden: the sun, the moon, and the truth."),
    Quote(author:'oscar wilde',text:"The writer has three sources: imagination, observation, and experience"),
    Quote(author:'oscar wilde',text:"Life is the first gift, love is the second, and understanding the third."),
  ];

  @override
  Widget  quoteTemplate(quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.black,
              )
          ),
          SizedBox(height: 10.0),
          Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black,
              )
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text("Awesome Quotes"),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          children: quotes.map((quote) => quoteTemplate(quote)).toList(),
        )
    );
  }
}