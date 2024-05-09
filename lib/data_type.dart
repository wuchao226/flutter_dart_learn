/// 常用数据类型
void main() {
  //常用数据类型，请看控制台输出
  _numType();
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
