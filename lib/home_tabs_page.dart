import 'package:flutter/material.dart';
import 'tabs/form_buider/form_builder.dart';

class HomeTabsPage extends StatefulWidget {
  const HomeTabsPage({super.key});

  @override
  State<HomeTabsPage> createState() => _HomeTabsPageState();
}

class _HomeTabsPageState extends State<HomeTabsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Google Forms Clone'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Build'),
              Tab(text: 'Preview'),
              Tab(text: 'Responses'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            FormBuilder(),
            Center(child: Text('Preview Tab - Coming Soon')),
            Center(child: Text('Responses Tab - Coming Soon')),
          ],
        ),
      ),
    );
  }
}
