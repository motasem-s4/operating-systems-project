import 'dart:math';

import 'package:flutter/material.dart';

class Server {
  var array = List.generate(10, (_) => List.generate(10, (_) => Random().nextInt(11)));

  generateArray() {
    print('Matrix 10 X 10 :');
    array = List.generate(10, (_) => List.generate(10, (_) => Random().nextInt(11)));
    array.forEach((e) {
      print(e);
    });
  }

  int arraySummation(var arr) {
    int sum = 0;
    for (int i = 0; i < 10; i++) {
      for (int j = 0; j < 10; j++) {
        sum = sum + arr[i][j];
      }
    }
    print('#######################');
    print('Client 1: Matrix summation');
    print('the array summation is = ' + sum.toString());
    return sum;
  }

  List transposeArray(var arr) {
    var copyArray = List.generate(10, (_) => List.generate(10, (_) => 0));
    for (int i = 0; i < 10; ++i) {
      for (int j = 0; j < 10; j++) {
        copyArray[j][i] = arr[i][j];
      }
    }
    print('#######################');
    print('Client 4: Transpose the matrix ');
    copyArray.forEach((e) {
      print(e);
    });
    return copyArray;
  }

  Map<int, int> maxNumber(var arr) {
    Map<int, int> max = Map();
    print('#######################');
    print('Client 3: Find the maximum number');
    int rows = 1;
    int maxNum = 0;
    for (int i = 0; i < 10; i++) {
      maxNum = arr[i][0];
      for (int j = 0; j < 10; j++) {
        if (arr[i][j] > maxNum) {
          maxNum = arr[i][j];
        }
      }
      print('Row $rows maximum number : ' + maxNum.toString());
      max[rows] = maxNum;
      rows++;
    }
    return max;
  }

  List sortArray(List<List<int>> arr) {
    List<List<int>> copyArr = [];
    arr.forEach((element) {
      List<int> list = [];
      element.forEach((element) {
        list.add(int.parse(element.toString()));
      });
      copyArr.add(list);
    });
    copyArr.forEach((e) {
      e.sort();
      print(e);
    });
    return copyArr;
  }

  Map<int, int> repeatedNumbers(var arr) {
    Map<int, int> max = Map();
    List frequency = [];
    List<bool> visited = List.filled(100, false);
    arr.forEach((e) {
      e.forEach((e) {
        frequency.add(e);
      });
    });
    print('#######################');
    print('Client 5: Count the repeated number');
    for (int i = 0; i < frequency.length; i++) {
      if (visited[i] == true) continue;
      int count = 1;
      for (int j = i + 1; j < frequency.length; j++) {
        if (frequency[i] == frequency[j]) {
          visited[j] = true;
          count++;
        }
      }
      print("the number " + frequency[i].toString() + " repeated " + count.toString() + " times");
      max[frequency[i]] = count;
    }
    return max;
  }
}
