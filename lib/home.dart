import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "tab controller",
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(
              icon: Icon(
                Icons.home,
              ),
              text: "Home",
            ),
            Tab(
              icon: Icon(
                Icons.search,
              ),
              text: "Search",
            ),
            Tab(
              icon: Icon(Icons.person),
              text: "Profile",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Center(
            child: Text(
              "Home Tab",
            ),
          ),
          Center(
            child: Text(
              "Search Tab",
            ),
          ),
          Center(
            child: Text(
              "Profile Tab",
            ),
          ),
        ],
      ),
    );
  }
}
