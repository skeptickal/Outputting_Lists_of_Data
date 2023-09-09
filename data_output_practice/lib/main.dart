import 'package:flutter/material.dart';
import 'quote.dart';
import 'package:logger/logger.dart';
import 'quote_card.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 199, 199, 199),
      appBar: AppBar(
        title: const Text(
          'Cool Quotes',
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 84, 11, 25),
      ),
      body: Column(
        children: quotes.map(
          (quote) {
            return QuoteCard(quote: quote);
          },
        ).toList(),
      ),
    );
  }
}
