import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});

  @override
  State<CurrencyConverter> createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {
  dynamic result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    setState(
      () {
        result = double.parse(textEditingController.text) * 80;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final border =   const OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(5),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        backgroundColor: Colors.black45,
        elevation: 0,
        title: const Text(
          'Currency Converter',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '₹${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 55,
                    color: Colors.white),
              ),
          TextField(
                  controller: textEditingController,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Please Enter the amount in INR',
                    hintStyle: const TextStyle(
                      color: Colors.white,
                    ),
                    prefixIcon: const Icon(CupertinoIcons.money_dollar),
                    prefixIconColor: Colors.white,
                    filled: true,
                    fillColor: Colors.black45,
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                ),
                 const SizedBox(height: 10,),
                 ElevatedButton(
                  onPressed: convert,
                  style: ButtonStyle(
                    backgroundColor: const WidgetStatePropertyAll(Colors.white),
                    foregroundColor: const WidgetStatePropertyAll(Colors.black),
                    minimumSize: const WidgetStatePropertyAll(
                      Size(double.infinity, 50),
                    ),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  child: const Text('Convert'),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
