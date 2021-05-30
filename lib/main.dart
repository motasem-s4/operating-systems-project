import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:os_project/getApp.dart';
import 'package:shelf/shelf.dart';
import 'package:socket_io_common/socket_io_common.dart';
import 'package:socket_io/socket_io.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
  // var handler =
  // const Pipeline().addMiddleware(logRequests()).addHandler(_echoRequest);
  //
  // var server = await shelf_io.serve(handler, 'localhost', 8080);
  //
  // // Enable content compression
  // server.autoCompress = true;
  //
  // print('Serving at http://${server.address.host}:${server.port}');

}
// Response _echoRequest(Request request) =>
//     Response.ok('Request for "${request.url}"');

final GlobalKey<NavigatorState> key = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return getApp(context);
  }
}
