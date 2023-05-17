import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

void testConditionals() {
  // if, else if & else
  print('************************************');

  const name = 'Foo';

  if (name == 'Foo') {
    print('Yes, this is Foo');
  } else if (name != 'Bar') {
    print('Yes, this is Bar');
  } else {
    print('No, this is neither Foo nor Bar');
  }

  print('************************************');
}

void testOperators() {
  // + - / * >= <= == != && || ! ++ --
  print('************************************');
  var age = 26;
  var isAdult = age >= 18;
  var isTeenager = age >= 13 && age < 18;
  var doubleAge = age * 2;
  var halfAge = age / 2;
  var ageMinusOne = --age;
  var agePlusOne = ++age;
  print('Is adult? $isAdult');
  print('Is teenager? $isTeenager');
  print('Double age: $doubleAge');
  print('Half age: $halfAge');
  print('Age minus one: $ageMinusOne');
  print('Age plus one: $agePlusOne');
  print('************************************');
}

void testLists() {
  // List
  print('************************************');

  List<dynamic> dynamicList = ['Foo', 44, 'Bar', true, 'Baz', 3.14];
  final dynamicListLength = dynamicList.length;
  print('Dynamic list length: $dynamicListLength');

  final firstItem = dynamicList[0];
  print('First item: $firstItem');

  final lastItem = dynamicList[dynamicListLength - 1];
  print('Last item: $lastItem');

  final lastItemAlternative = dynamicList.last;
  print('Last item alternative: $lastItemAlternative');

  final secondItem = dynamicList.elementAt(1);
  print('Second item: $secondItem');

  final addToDynamicList = dynamicList..add('Qux');
  print('The updated dynamicList is now: $dynamicList');

  print('************************************');
}

void testSets() {
  // Set
  print('************************************');

  Set<dynamic> dynamicSet = {'Foo', 44, 'Bar', true, 'Baz', 3.14};
  final dynamicSetLength = dynamicSet.length;
  print('Dynamic set length: $dynamicSetLength');

  dynamicSet.add('Qux');
  dynamicSet.add('Foo');
  dynamicSet.add(44);
  dynamicSet.add(false);
  dynamicSet.add(3.14);

  print(
      'The updated dynamicSet is now: $dynamicSet and has a length of ${dynamicSet.length}');

  print('************************************');
}

void testMaps() {
  // Map
  print('************************************');

  Map<String, dynamic> dynamicMap = {
    'fullName': 'Foo Bar',
    'age': 44,
    'isAdult': true,
    'height': 1.8,
    'weight': 80
  };

  final dynamicMapLength = dynamicMap.length;
  print('Dynamic map length: $dynamicMapLength');

  dynamicMap.addAll({'address': '123 Main St.'});
  print('The updated dynamicMap is now: $dynamicMap');
  print('The new map length is: ${dynamicMap.length}');

  print('************************************');
}

void testNullSafety() {
  // Making any type nullable --> Use ? after the data type such as "String?"

  print('************************************');

  Map<String?, dynamic> personalInfo = {
    'fullName': 'Foo Bar',
    'age': 44,
    'height': null,
    'weight': null
  };

  print('Personal info: $personalInfo');
  // now we can add values to the height and weight keys to make them non-null
  personalInfo.addAll({'height': 1.8, 'weight': 80});
  print('Updated personal info: $personalInfo');

  // Cherry-picking non-null values from the map --> Using ?? operator
  const String? firstName = null;
  const String? middleName = null;
  const String lastName = 'Baz';

  const firstNonNullName = firstName ?? middleName ?? lastName;
  print('First non-null name: $firstNonNullName');

  // Null-Aware Assignment Operator (??=)
  String? name = firstName;
  name ??= middleName;
  name ??= lastName;
  print('Name: $name');

  // Conditional Property Access (?.)
  const String? foo = null;
  const String bar = 'Bar';
  const String baz = 'Baz';

  final String? fooBar = foo?.toUpperCase();
  final String barBaz = bar.toUpperCase();
  final String bazFoo = baz.toUpperCase();

  print('fooBar: $fooBar');
  print('barBaz: $barBaz');
  print('bazFoo: $bazFoo');

  print('************************************');
}

// Enumerations --> Named list or related items
enum PersonDetails {
  firstName,
  lastName,
  age,
  height,
  weight,
}

void testEnumerations() {
  print('************************************');

  const person1 = {
    PersonDetails.firstName: 'Foo',
    PersonDetails.lastName: 'Bar',
    PersonDetails.age: 44,
    PersonDetails.height: 1.8,
    PersonDetails.weight: 80
  };

  const person2 = {
    PersonDetails.firstName: 'Baz',
    PersonDetails.lastName: 'Qux',
    PersonDetails.age: 33,
    PersonDetails.height: 1.6,
    PersonDetails.weight: 60
  };

  print(PersonDetails.firstName);
  print(PersonDetails.firstName.name);
  print('$person1');
  print('$person2');

  print('************************************');
}

// Switch Statement --> To avoid if else over statements
enum ColorName { red, orange, yellow, green, blue, indigo, violet }

void testSwitchStatement(ColorName colorName) {
  switch (colorName) {
    case ColorName.red:
      print('The first color of the rainbow is red');
      break;
    case ColorName.orange:
      print('The second color of the rainbow is orange');
      break;
    case ColorName.yellow:
      print('The third color of the rainbow is yellow');
      break;
    case ColorName.green:
      print('The fourth color of the rainbow is green');
      break;
    case ColorName.blue:
      print('The fifth color of the rainbow is blue');
      break;
    case ColorName.indigo:
      print('The sixth color of the rainbow is indigo');
      break;
    case ColorName.violet:
      print('The seventh color of the rainbow is violet');
      break;
    default:
      print('The color is not in the rainbow');
  }
}

// Class --> A group of various functionalities packed together
class Person {
  void breath() => print('Person is breathing');
  void run() => print('Person is running');
  void walk() => print('Person is walking');
}

class Company {
  final String name;

  Company(
      this.name); // Class constructor // Constructors allow you to create an instance of a class with optional parameters

  void companyLocation() => print(
      'The company is located in the US'); // companyLocation is a method // Methods are functions inside a class that can be called on an object
}

// Class Inheritance --> A class can inherit properties and methods from another class
class LivingThing {
  void jump() => print('The living thing is jumping');
  void sleep() => print('The living thing is sleeping');
}

class Cat extends LivingThing {} // Cat class inherits from LivingThing class

// Factory constructor --> Used to return an instance of a class from a method
class Dog {
  final String name; // instance variable
  final int age;

  Dog(this.name, this.age); // Dog class constructor

  factory Dog.createDog(String name, int age) {
    return Dog(name, age);
  } // createDog is a factory constructor // Factory constructors are used to return an instance of a class from a method
}

void testClasses() {
  print('************************************');

  // Instantiating the Person class
  final person =
      Person(); // person is an object of the Person class // Objects are instances of a class
  person.breath();
  person.run();
  person.walk();

  // Instantiating the Company class --> Using the constructor
  final company = Company('Foo Bar Inc.');
  print('Company name: ${company.name}'); // name is an instance variable

  company.companyLocation();

  // Instantiating the Cat class
  final fluffers = Cat();
  fluffers.jump();
  fluffers.sleep();

  // Instantiating the Dog class --> Using the factory constructor
  final dog = Dog.createDog('Chop', 4);
  print("The dog's name is ${dog.name} and it is ${dog.age} years old!");

  print('************************************');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // TESTING OTHER FEATURES
    // testConditionals();
    // testOperators();
    // testLists();
    // testSets();
    // testMaps();
    // testNullSafety();
    // testEnumerations();
    // testSwitchStatement(ColorName.red);
    testClasses();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
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
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
