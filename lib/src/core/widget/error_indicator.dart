import 'package:flutter/widgets.dart';

class ErrorIndicator extends StatelessWidget {
  const ErrorIndicator({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(message),
    );
  }
}
