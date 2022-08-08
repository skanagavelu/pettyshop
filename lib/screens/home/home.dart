import 'package:flutter/material.dart';
import 'package:petty_shop/screens/home/transactions.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Tab> tabs = <Tab>[
    const Tab(
      text: 'Debit',
    ),
    const Tab(
      text: 'Credit',
    ),
    const Tab(
      text: 'Dashboard',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(
            // TabBar size
            preferredSize: const Size(1.0, 1.0),
            child: TabBar(
              tabs: tabs,
            ),
          ),
        ),
        body: TabBarView(
          children: tabs.map((Tab tab) {
            final String label = tab.text!.toLowerCase();
            return const Center(
              // child: Text(
              //   'This is the $label tab',
              //   style: const TextStyle(fontSize: 36),
              // ),
              child: MyStatefulWidget(),
            );
          }).toList(),
        ),
      ),
    );
  }
}
