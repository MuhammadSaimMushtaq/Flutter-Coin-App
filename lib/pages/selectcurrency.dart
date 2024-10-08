import 'package:flutter/material.dart';

class currencyselection extends StatelessWidget {
  final Map exchangerates;
  const currencyselection({super.key,required this.exchangerates});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.builder(
        itemCount: exchangerates.keys.toList().length,
        itemBuilder: (
          BuildContext context, index
          ){
            return ListTile(
              title: Text(
                exchangerates.keys.toList()[index],
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: (){
                Navigator.pop(context,exchangerates.keys.toList()[index]);
              },
            );
          })
    );
  }
}