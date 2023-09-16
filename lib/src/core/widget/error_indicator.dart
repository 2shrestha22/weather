import 'package:flutter/widgets.dart';

class ErrorIndicator extends StatelessWidget {
  const ErrorIndicator({required this.message, super.key});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(message),
    );
  }
}
