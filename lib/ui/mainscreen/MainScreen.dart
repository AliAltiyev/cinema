import 'package:cinema/ui/home/home_screen.dart';
import 'package:flutter/material.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedPageIndex = 0;

  void changeNavigationBarIndex(int index) {
    if (index == _selectedPageIndex) return;
    setState(() {
      _selectedPageIndex = index;
    });
  }

  final pages = <Widget>[const HomeScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.red.shade900,
        items: const [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "Explore", icon: Icon(Icons.explore)),
          BottomNavigationBarItem(label: "My List", icon: Icon(Icons.list_alt)),
          BottomNavigationBarItem(
              label: "Downloads", icon: Icon(Icons.download)),
          BottomNavigationBarItem(
              label: "Profile", icon: Icon(Icons.person_rounded)),
        ],
        elevation: 30,
        currentIndex: _selectedPageIndex,
        onTap: changeNavigationBarIndex,
      ),
      body: IndexedStack(
        index: _selectedPageIndex,
        children: const [HomeScreen()],
      ),
      appBar: AppBar(
        title: const Text(
          "Meta",
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.w300),
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}
