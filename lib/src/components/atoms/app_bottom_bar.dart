import 'package:flutter/material.dart';

class AppBottomBar extends StatefulWidget {
  final List<Widget> pages;

  const AppBottomBar({super.key, required this.pages});

  @override
  State<AppBottomBar> createState() => _AppBottomBarState();
}

class _AppBottomBarState extends State<AppBottomBar> {
  int _currentIndex = 0;

  /*   void onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  } */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,

      body: IndexedStack(index: _currentIndex, children: widget.pages),

      //[_currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      /* floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.car_repair),
      ), */
      floatingActionButton: SizedBox(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: () {},
          shape: const CircleBorder(),
          child: const Icon(Icons.store, color: Colors.white),
        ),
      ),
      //
      bottomNavigationBar: BottomAppBar(
        elevation: 10,

        color: Colors.white,

        shape: const CircularNotchedRectangle(),
        notchMargin: 10,

        child: SizedBox(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildItem(Icons.home, "Home", 0),
              _buildItem(Icons.search, "Search", 1),
              const SizedBox(width: 40),
              _buildItem(Icons.shopping_cart, "Cart", 2),
              _buildItem(Icons.person, "Profile", 3),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildItem(IconData icon, String label, int index) {
    final isSelected = _currentIndex == index;
    //
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: isSelected ? Colors.blue : Colors.grey),
          Text(
            label,
            style: TextStyle(color: isSelected ? Colors.blue : Colors.grey),
          ),
        ],
      ),
    );
  }
}
