import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Loading_Message extends StatelessWidget {
  const Loading_Message({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()));
  }
}

class Error_Message extends StatelessWidget {
  const Error_Message({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Oops there is an error, try later',);
  }
}