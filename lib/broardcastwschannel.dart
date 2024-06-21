

import 'dart:async';

import 'package:web_socket_channel/web_socket_channel.dart';

class BroadcastWsChannel {
  BroadcastWsChannel(Uri uri): _channel = WebSocketChannel.connect(uri) {
    _stream = _channel.stream.asBroadcastStream();
  }

  final WebSocketChannel _channel;
  late Stream<dynamic> _stream;
  Stream<dynamic> get stream => _stream;

  StreamSink get sink => _channel.sink;
}

class FakeBroadcastWsChannel implements BroadcastWsChannel {

  final streamController = StreamController<dynamic>.broadcast();
  final sinkController = StreamController<dynamic>();

  @override
  Stream get stream => streamController.stream;

  @override
  WebSocketChannel get _channel => throw UnimplementedError();

  @override
  late Stream _stream;

  @override
  StreamSink get sink => throw UnimplementedError();
}