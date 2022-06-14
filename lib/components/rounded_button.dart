import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String btnTitle;
  final Color btnColor;
  final Function onBtnTap;

  RoundedButton({
    required this.btnTitle,
    required this.btnColor,
    required this.onBtnTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: btnColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: () => onBtnTap.call(),
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            btnTitle,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
