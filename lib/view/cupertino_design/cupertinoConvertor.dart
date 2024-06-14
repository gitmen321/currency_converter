import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoConvertor extends StatefulWidget {
  const CupertinoConvertor({super.key});

  @override
  State<CupertinoConvertor> createState() => _CupertinoConvertorState();
}

class _CupertinoConvertorState extends State<CupertinoConvertor> {
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
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemMint,
        middle: Text('Currency Converter'),
      ),
      backgroundColor: CupertinoColors.systemMint,
      child:  Center(
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
                    color: CupertinoColors.black),
              ),
              CupertinoTextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: CupertinoColors.black,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: CupertinoColors.black,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                placeholder: 'Please Enter the amount in INR',
                cursorColor: CupertinoColors.black,
                prefix: const Icon(CupertinoIcons.money_dollar,color: CupertinoColors.black,),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
              const SizedBox(height: 10,),
              CupertinoButton(
                onPressed: convert,
                color: CupertinoColors.black,
                child: const Text('Convert',style: TextStyle(color: CupertinoColors.white),),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
