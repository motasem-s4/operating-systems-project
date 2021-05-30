import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'package:http/http.dart' as http;
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:flutter/material.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:socket_io/socket_io.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

class ServerFun {
  bool isLoading = false;
  HttpServer server;
  connectServer()async{
    var swatch = Stopwatch();
    swatch.start();
    isLoading = true;
    var handler =
    const Pipeline().addMiddleware(logRequests()).addHandler(_echoRequest);
    // Enable content compression
      server = await shelf_io.serve(handler, 'localhost', 8080);
      server.autoCompress = true;
      print('Serving at http://${server.address.host}:${server.port}');
      generateMatrix();
      matrixSummation(matrix);
      transposeMatrix(matrix);
      maxNumber(matrix);
      sortMatrix(matrix);
      repeatedNumbers(matrix);
      isLoading = false;
      print(server.idleTimeout.inSeconds);
    swatch.stop();
    print('server inMicroseconds '+swatch.elapsed.inMicroseconds.toString());
  }


  Response _echoRequest(Request request) =>
      Response.ok('Request for "${request.url}"');


  var matrix = List.generate(10, (_) => List.generate(10, (_) => Random().nextInt(11)));


    generateMatrix() {
      var swatch = Stopwatch();
      swatch.start();
    print('Matrix 10 X 10 :');
    matrix = List.generate(10, (_) => List.generate(10, (_) => Random().nextInt(11)));
    matrix.forEach((e) {
      print(e);
    });
    swatch.stop();
    print('generate inMicroseconds '+swatch.elapsed.inMicroseconds.toString());
  }

  int matrixSummation(var arr) {
    var swatch = Stopwatch();
    swatch.start();
    int sum = 0;
    for (int i = 0; i < 10; i++) {
      for (int j = 0; j < 10; j++) {
        sum = sum + arr[i][j];
      }
    }
    print('#######################');
    print('Client 1: Matrix summation');
    print('the array summation is = ' + sum.toString());
    swatch.stop();
    print('sum inMicroseconds '+swatch.elapsed.inMicroseconds.toString());
    return sum;
  }

  List transposeMatrix(var arr) {
    var swatch = Stopwatch();
    swatch.start();
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
    swatch.stop();
    print('transpose inMicroseconds '+swatch.elapsed.inMicroseconds.toString());
    return copyArray;
  }

  Map<int, int> maxNumber(var arr) {
    var swatch = Stopwatch();
    swatch.start();
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
    swatch.stop();
    print('Max inMicroseconds '+swatch.elapsed.inMicroseconds.toString());
    return max;
  }

  List sortMatrix(List<List<int>> arr) {
    var swatch = Stopwatch();
    swatch.start();
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
    swatch.stop();
    print('sort inMicroseconds '+swatch.elapsed.inMicroseconds.toString());
    return copyArr;
  }

  Map<int, int> repeatedNumbers(var arr) {
    var swatch = Stopwatch();
    swatch.start();
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
    swatch.stop();
    print('repeated inMicroseconds '+swatch.elapsed.inMicroseconds.toString());
    return max;
  }
}
