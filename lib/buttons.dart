import 'package:flutter/material.dart';

import 'widgets/custom_widgets.dart';

class MaterialBtn extends StatelessWidget {
  const MaterialBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button styles'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('Elevated Button'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Text Button'),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text('Outline Button'),
              ),
              IconButton(
                icon: Icon(Icons.favorite),
                onPressed: () {},
              ),
              FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.add),
              ),
              PopupMenuButton(
                itemBuilder: (BuildContext context) => [
                  PopupMenuItem(
                    child: Text('Item 1'),
                  ),
                  PopupMenuItem(
                    child: Text('Item 2'),
                  ),
                ],
              ),
              CustomButton(
                onPressed: () {
                  print("Button pressed");
                },
                child: Text("Custom Button"),
              ),
            ]),
      ),
    );
  }
}
