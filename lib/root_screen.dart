import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RootScreen extends StatefulWidget {
  final StatefulShellRouteState shellState;
  final Widget view;

  const RootScreen({
    super.key, 
    required this.shellState,
    required this.view
  });

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.view,
      bottomNavigationBar: NavigationBar(
        selectedIndex: widget.shellState.currentIndex,
        onDestinationSelected: (value) {
          widget.shellState.goBranch(index: value);
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.abc), 
            label: 'Una'
          ),
          NavigationDestination(
            icon: Icon(Icons.abc), 
            label: 'Dos'
          ),
          NavigationDestination(
            icon: Icon(Icons.abc), 
            label: 'Tres'
          )
        ],
      ),
    );
  }
}

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  int _counter = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Counter Page 1: $_counter'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      floatingActionButton: FloatingActionButton(
        heroTag: null,
        onPressed: () => setState(() => _counter++),
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  int _counter = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Counter Page 2: $_counter'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      floatingActionButton: FloatingActionButton(
        heroTag: null,
        onPressed: () => setState(() => _counter++),
        child: const Icon(Icons.add), 
      ),
    );
  }
}

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  int _counter = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Counter Page 3: $_counter'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      floatingActionButton: FloatingActionButton(
        heroTag: null,
        onPressed: () => setState(() => _counter++),
        child: const Icon(Icons.add),
      ),
    );
  }
}

