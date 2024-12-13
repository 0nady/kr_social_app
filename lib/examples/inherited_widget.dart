import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late int _counter;

  @override
  void initState() {
    super.initState();
    _counter = context.getInitialValue();
    print('initState');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies');
  }

  @override
  void didUpdateWidget(MyHomePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget');
  }

  @override
  void dispose() {
    _counter = 0;
    print('dispose');
    super.dispose();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });

    ScaffoldMessenger.maybeOf(context)?.showSnackBar(
      SnackBar(
        content: Text('Count: $_counter'),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FrogColor(
              color: Colors.yellow,
              child: Builder(builder: (context) {
                return Text(
                  'You have pushed the button this many times:',
                  style: TextStyle(color: FrogColor.of(context).color),
                );
              }),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

extension CounterIntializer on BuildContext {
  int getInitialValue() {
    return 0;
  }
}

class FrogColor extends InheritedWidget {
  final Color color;

  const FrogColor({
    super.key,
    required this.color,
    required super.child,
  });

  static FrogColor? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<FrogColor>();
  }

  static FrogColor of(BuildContext context) {
    final FrogColor? result = maybeOf(context);
    assert(result != null, 'No FrogColor found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(FrogColor oldWidget) {
    return color != oldWidget.color;
  }
}

class ABModel extends InheritedModel<String> {
  const ABModel({
    super.key,
    this.a,
    this.b,
    required super.child,
  });

  final int? a;
  final int? b;

  @override
  bool updateShouldNotify(ABModel oldWidget) {
    return a != oldWidget.a || b != oldWidget.b;
  }

  @override
  bool updateShouldNotifyDependent(ABModel oldWidget, Set<String> dependencies) {
    return (a != oldWidget.a && dependencies.contains('a'))
        || (b != oldWidget.b && dependencies.contains('b'));
  }

// ...
}
