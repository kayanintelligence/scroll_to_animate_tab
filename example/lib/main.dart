import 'package:flutter/material.dart';
import 'package:scroll_to_animate_tab/scroll_to_animate_tab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'scroll_to_animate_tab Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'scroll_to_animate_tab Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, @required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: ScrollToAnimateTab(
          activeTabDecoration: TabDecoration(
              textStyle: const TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 18),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: const BorderRadius.all(Radius.circular(5)))),
          inActiveTabDecoration: TabDecoration(
              textStyle: const TextStyle(color: Colors.black),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  borderRadius: const BorderRadius.all(Radius.circular(5)))),
          tabs: [
            ScrollableList(
                label: "Hello",
                body: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (_, index) => ListTile(
                    title: Text('List element ${index + 1}'),
                  ),
                )),
            ScrollableList(
                label: "hello 2",
                body: Column(
                  children: List.generate(
                      10,
                      (index) => ListTile(
                            title: Text('List element ${index + 1}'),
                          )),
                )),
            ScrollableList(
                label: "Hello000",
                body: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (_, index) => ListTile(
                    title: Text('List element ${index + 1}'),
                  ),
                )),
            ScrollableList(
                label: "hello",
                body: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (_, index) => ListTile(
                    title: Text('List element ${index + 1}'),
                  ),
                )),
            ScrollableList(
                label: "hola",
                body: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (_, index) => ListTile(
                    title: Text('List element ${index + 1}'),
                  ),
                )),
          ],
        ));
  }
}
