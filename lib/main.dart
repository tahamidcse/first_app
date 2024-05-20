import 'package:flutter/material.dart';




void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<String> items = ['January', 'February', 'March'];

  @override
  Widget build(BuildContext context) {
    final title = 'MyAwesome App';

    return MaterialApp(
      title: title,
      theme: ThemeData(
        // This is the theme of your application.

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${items[index]}'),
              // When the child is tapped, show a snackbar.
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyDetails(items[index])),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
class MyDetails extends StatelessWidget {
  final String month;
  MyDetails(this.month);

  @override
  Widget build(BuildContext context) {
    final title = 'Details Page';

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Text('You selected $month'),
    );
  }
}