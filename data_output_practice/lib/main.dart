import 'package:flutter/material.dart';
import 'quote.dart';
import 'package:logger/logger.dart';

void main() {
  runApp(const MaterialApp(
    home: OutputData(),
  ));
  final logger = Logger();
  Quote myquote = Quote(author: 'hello', text: 'world');
  logger.i('${myquote.text}, ${myquote.author}');
}

class OutputData extends StatefulWidget {
  const OutputData({super.key});

  @override
  State<OutputData> createState() => _OutputDataState();
}

class _OutputDataState extends State<OutputData> {
  List<Quote> quotes = [
    Quote(
        author: 'Oscar Wilde',
        text: 'Be yourself, everyone else is already taken'),
    Quote(
        author: 'Oscar Wilde',
        text: 'I have nothing to declare except my genius'),
    Quote(
        author: 'Oscar Wilde',
        text: 'The truth is rarely pure and never simple'),
  ];

  Widget quoteTemplate(quote) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: const TextStyle(
                fontSize: 18.0,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 6.0),
            Text(
              quote.author,
              style: const TextStyle(fontSize: 14.0, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 199, 199, 199),
      appBar: AppBar(
        title: const Text(
          'Cool Quotes',
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 84, 11, 25),
      ),
      body: Column(
        children: quotes.map(
          (quote) {
            return quoteTemplate(quote);
          },
        ).toList(),
      ),
    );
  }
}
