import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final VoidCallback onPressed;
  final Widget child;
  CustomButton({required this.onPressed, required this.child});

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool _isPressed = false;

  void _updateIsPressed(bool value) {
    setState(() {
      _isPressed = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (TapDownDetails details) {
        _updateIsPressed(true);
      },
      onTapUp: (TapUpDetails details) {
        _updateIsPressed(false);
      },
      onTapCancel: () {
        _updateIsPressed(false);
      },
      onTap: widget.onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: _isPressed ? Colors.red : Colors.blue,
        ),
        padding: EdgeInsets.all(12.0),
        child: widget.child,
      ),
    );
  }
}
