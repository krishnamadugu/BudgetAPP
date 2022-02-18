import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

DateTime now = DateTime.now();
DateTime date = DateTime(now.year, now.month);
int budget = 4400;
int expense = 600;
int income = 5000;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 160,
          flexibleSpace: Container(
            color: Colors.blue,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.calendar_today_outlined,
                          color: Colors.white,
                          size: 20.0,
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          date.toString().substring(0, 7),
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        const Text(
                          "Balance",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          ),
                        )
                      ],
                    ),
                    Text(
                      budget.toString(),
                      style: const TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: [
                        const Text(
                          "Expense : ",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          expense.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          "Income : ",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          income.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          color: Colors.white,
          child: Container(
            height: 70.0,
            child: Row(
              children: [
                IconWidget(value: Icons.menu),
                IconWidget(value: Icons.dashboard),
                IconWidget(value: Icons.pie_chart),
                IconWidget(value: Icons.monetization_on_sharp),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

class IconWidget extends StatelessWidget {
  IconWidget({required this.value});

  IconData value;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: const Color(0xffCCCCCC),
      iconSize: 30.0,
      icon: Icon(value),
      onPressed: () {},
    );
  }
}
