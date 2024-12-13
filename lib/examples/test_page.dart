import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Заголовок'),
      ),
      body: ColoredBox(
        color: Colors.green,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.sizeOf(context).width / 2,
                ),
                child: const Text(
                  'ashjdjhasdbb ashda sdha asj jaasd ajsdjasd asd aksjdasd '
                      'ashjdjhasdbb ashda sdha asj jaasd ajsdjasd asd aksjdasd '
                      'ashjdjhasdbb ashda sdha asj jaasd ajsdjasd asd aksjdasd '
                      'ashjdjhasdbb ashda sdha asj jaasd ajsdjasd asd aksjdasd '
                      'ashjdjhasdbb ashda sdha asj jaasd ajsdjasd asd aksjdasd ',
                ),
              ),
              const ColoredBox(
                color: Colors.red,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.people,
                        color: Colors.amber,
                      ),
                    ),
                    Icon(Icons.people),
                    SizedBox(width: 10),
                    Text('Другой текст'),
                  ],
                ),
              ),
              const Text(
                'Текст',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                onChanged: (text) {},
                onSubmitted: (text) {
                  print('Text: $text');
                },
              ),
              TextFormField(
                onChanged: (text) {
                  print('Text: $text');
                },
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: SizedBox(
                        height: 100,
                        width: 50,
                        child: DecoratedBox(
                          decoration: BoxDecoration(color: Colors.cyan),
                        ),
                      ),
                    );
                  },
                ),
              ),
              LayoutBuilder(
                builder: (context, constraints) {
                  print(constraints);

                  return SizedBox();
                },
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(16)),
                child: Text(
                  'Container',
                  style: TextStyle(fontSize: 48),
                ),
              ),
              const SizedBox(height: 10),
              OutlinedButton(
                onPressed: () {},
                child: const Text('Button'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
