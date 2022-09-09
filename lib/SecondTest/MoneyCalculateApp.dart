import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geek_circle/SecondTest/Transaction.dart';

class MoneyCalculateApp extends StatefulWidget {
  const MoneyCalculateApp({Key? key}) : super(key: key);

  @override
  State<MoneyCalculateApp> createState() => _MoneyCalculateAppState();
}

class _MoneyCalculateAppState extends State<MoneyCalculateApp> {
  List<Transaction> transactions = [
    Transaction("001", "title", 69.99, DateTime.now()),
    Transaction("002", "aaaaa", 63.99, DateTime.now()),
    Transaction("003", "title", 69.99, DateTime.now()),
    Transaction("004", "title", 69.99, DateTime.now()),
    Transaction("005", "title", 29.99, DateTime.now()),
    Transaction("006", "title", 49.99, DateTime.now()),
    Transaction("007", "title", 65.99, DateTime.now()),
    Transaction("008", "title", 669.99, DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
        ),
        body: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: const Card(
                  elevation: 5,
                  child: Text(
                    "CART",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Column(
                children: [
                  ...transactions.map((e) {
                    return Card(
                        child: Container(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                border: Border.all(
                              color: Color(0xff05b4ff),
                              width: 2,
                            )),
                            width: 100,
                            child: Text(
                              ("${e.amount}"),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  overflow: TextOverflow.visible,
                                  color: Color(0xff05b4ff)),
                              textAlign: TextAlign.center,
                              maxLines: 1,
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                child: Text(e.title),
                              ),
                              Container(
                                child: Text(e.time.toString()),
                              ),
                            ],
                          )
                        ],
                      ),
                    ));
                  })
                ],
              )
            ],
          ),
        ));
  }
}
