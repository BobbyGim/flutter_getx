// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  final bool isViaible;

  const LoadingWidget({
    Key? key,
    required this.isViaible,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
        visible: isViaible,
        child: Container(
          color: Colors.white.withOpacity(0.5),
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ));
  }
}
