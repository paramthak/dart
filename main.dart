import 'package:flutter/material.dart';

void main() {
  runApp(const CurrencyConverter());
}

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});

  @override
  State createState() => CurrencyConverterState();
}

class CurrencyConverterState extends State {
  final TextEditingController textEditingController = TextEditingController();
  double result = 0;

  @override
  Widget build(BuildContext context){
    const borderra = OutlineInputBorder(
      borderSide: BorderSide(),
      borderRadius: BorderRadius.all(Radius.circular(80)));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          elevation: 0,
          centerTitle: true,
          title: const Text('Currency Converter',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 23
          ),
          ),
        ),
        backgroundColor: Colors.redAccent,
        body: Center(
          child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
            Text('₹$result',
             style: const TextStyle(
               fontSize: 55,
               fontWeight: FontWeight.bold,
               color: Colors.white
            ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextField(
                controller: textEditingController,
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true
                ),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  iconColor: Colors.black,
                  hintText: 'Enter the amount in USD',
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 18
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: borderra,
                  focusedBorder: borderra,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 120,
                right: 120,
                top: 10
              ),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text)*83.5;
                  });
                }, 
                style: ElevatedButton.styleFrom(
                  shape: const ContinuousRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50))
                  ),
                  minimumSize: const Size(double.infinity, 45),
                  backgroundColor: Colors.white
                ),
                child: const Text('Convert',
                style: TextStyle(
                  color: Colors.black
                ),
                )
                ),
            )
          ],
        ),
      )
    )
    );
  }
}

