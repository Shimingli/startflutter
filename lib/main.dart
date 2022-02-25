import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());

  test();
}

void test() {
  //dart is null,dart 一切是对象
  int i = 1000;
  String tip;
  print(i);
  //var 在声明变量 这一刻就决定它是什么类型，不好确定类型
  var j;
  j = "dd";
  j = 1;
  //下面是错误的
  var a = "";
  // a=1;
  //动态，没有静止执行的高，在运行的时候才确定是什么类型，在开发中不要去经常使用
  dynamic z = "";
  z = 1;

  Object d = "";

  test1();
}

void test1() {
  // Dart 有两种的定义静态变量，表现完全一模一样  final 运行时的变量，
  // const 编译器常量，编译的时候就是常量，这个效率更加高
  final int q = 1;
  // 编译器推荐使用const关键字
  final j = 1;

  const w = 1;

  const z = w + 1;
  // 看平台，在java中 占4个字节,在dart中
  // int 包含了 long 和 int，Dart 不是基本数据类型，是一个类
  int jj = 1;
  double kk = 1;
  print(jj.bitLength);

  String tip = "shiming";
  String txt = tip + "haha";
  String newT = "$tip的p加号$txt";
  String newT1 = "${tip}的p加号$txt";

  print(tip);
  print(txt);
  print(newT1);
  //单引号和双引号 都可以
  String hha = 'd';

  String hahjha = "'hahh'"; // 'hahh'
  print(hahjha);

  String hhhah = "\\n"; // \n
  //r 前缀
  String hhhah1 = r"\n"; // \n

  print(hhhah);
  print(hhhah1);

  //多行的输入的方式
  String s3 = """哈哈哈 
  dafd
  dfdsaf""";

  print(s3);

  bool b = false;

  List<String> list = [];
  List<int> list1 = [1, 3, 2, 4];
  //数组一样的获取下标元素
  var list12 = list1[0];
  for (var element in list1) {}
  print('dfad');

  for (var o in list1) {}
  //const 编译器声明了，那么list2 不可以add 数据
  const List<int> list2 = [1, 3, 2, 4];
  // list2=[1,2];
  // list2.add(1);

  //list2=[];
  //const 修饰，元素，就不能够add了数据了

  List<int> list3 = const [1, 3, 2, 4];
  // list3.add(2);
  //可以修改引用的
  list3 = list2;

  Map<int, int> map = {1: 1, 2: 2, 3: 3};
  map[1];
  var map1 =  {1: 1, 2: 2};

  map1[3]=100;

  print(map1[3]);
  print(map1[4]);


  /**
   * Runes 特殊字符表示类  （Unicode32） 能够表示世界上所有的文字
   *
   */

  var clapping='\u{1f44f}';// == 👏
  print(clapping);

  /**
   * Symbols 标识符  可以用来 switch
   */
  var ad=#dfadfad;
  print(ad.runtimeType);// Symbol

  switch(ad){
    case #A:

      break;
  }

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
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
