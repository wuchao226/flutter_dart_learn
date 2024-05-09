/// 常用数据类型
void main() {
  //常用数据类型，请看控制台输出
  _numType();
  _stringType();
  _boolType();
  _listType();
  _mapType();
  _tips();
}

/// 数字类型
_numType() {
  num num1 = -1.0; // 是数字类型的父类型，有两个子类 int 和 double
  num num2 = 2;
  int int1 = 3; // 只能是整数
  double double1 = 1.28; // 双精度的浮点数
  print("num:$num1 num:$num2 int:$int1 double:$double1");
  print(num1.abs()); //求绝对值
  print(num1.toInt()); //转换成int
  print(num1.toDouble()); //转换成Double
}

///字符串
_stringType() {
  String str1 = '字符串', str2 = "双引号"; //字符串定义
  String str3 = 'st1:$str1 str2:$str2'; //字符串拼接
  String str5 = '常用数据类型，请看控制台输出';
  String str4 = 'st1:$str1 str2:$str2'; //字符串拼接
  print(str3);
  print(str4);
  //常用方法
  print(str5.substring(1, 5)); //字符串截取
  print(str5.indexOf('类型')); //获取指定字符串位置
  //startsWith,replaceAll,contains,split等
}

///布尔类型，Dart 是强 bool 类型检查，只有bool 类型的值是true 才被认为是true
_boolType() {
  bool success = true, fail = false;
  print(success);
  print(fail);
  print(success || fail); //true
  print(success && fail); //false
}

///List集合
_listType() {
  print('----_listType----');

  ///集合初始化的方式
  List list = [1, 2, 3, '集合']; //初始化时，添加元素
  print(list);
  List<int> list2 = [];
  // list2 = list;//错误做法，类型转换错误
  List list3 = [];
  list3.add('list3'); //通过add方法添加元素
  list3.addAll(list);
  print(list3);
  List list4 = List.generate(3, (index) => index * 2);
  print(list4);

  ///遍历集合的方式
  for (int i = 0; i < list.length; i++) {
    print(list[i]);
  }
  for (var o in list) {
    print(o);
  }
  list.forEach((val) {
    print(val);
  });
  //list.removeXx,insert,sublist,indexOf等
}

///map是将key和value相关联的对象，
///key和value都可以是任何类型的对象，
///并且key是唯一的如果key重复后面添加的key会替换前面的
_mapType() {
  print('----_mapType----');

  ///Map初始化
  Map names = {'xiaoming': '小明', 'xiaohong': '小红'};
  print(names);
  Map ages = {};
  ages['xiaoming'] = 16;
  ages['xiaohong'] = 18;
  print(ages);

  ///Map遍历
  ages.forEach((k, v) {
    print('$k $v');
  });
  Map ages2 = ages.map((k, v) {
    //迭代生成一个新Map
    return MapEntry(v, k);
  });
  print(ages2);
  for (var key in ages.keys) {
    print('$key ${ages[key]}');
  }
  //keys,values,remove，containsKey
}

///科普小知识：dynamic、var、Object的使用与区别
///1、dynamic：是所有Dart对象的基础类型， 在大多数情况下，通常不直接使用它，
///通过它定义的变量会关闭类型检查，这意味着 dynamic x = 'hal';x.foo();
///这段代码静态类型检查不会报错，但是运行时会crash，因为x并没有foo()方法，所以建议大家在编程时不要直接使用dynamic；
///2、var：是一个关键字，意思是“我不关心这里的类型是什么。”，系统会自动推断类型runtimeType；
///3、Object：是Dart对象的基类，当你定义：Object o=xxx；时这时候系统会认为o是个对象;
///你可以调用o的toString()和hashCode()方法因为Object提供了这些方法；
///但是如果你尝试调用o.foo()时，静态类型检查会进行报错；
///综上不难看出dynamic与Object的最大的区别是在静态类型检查上；
_tips() {
  print('----_tips----');
  dynamic x = 'hal';
  //通过dynamic定义的变量会关闭类型检查
  // x.foo();
  print(x.runtimeType);
  print(x);
  x = 123;
  print(x);
  print(x.runtimeType);
  var a = 'hal';
  //a = 123;//你可以改变 x的类型，但是无法改变 a的类型
  print(a.runtimeType);
  print(a);
  Object o1 = '11';
  print(o1.runtimeType);
  print(o1);
}
