import 'package:flutter/material.dart';
import 'package:msgapp/helpers/size_helper.dart';


class SocialLogInWidget extends StatelessWidget {
  
  final String? buttonText;
  final Color? buttonColor;
  final Color? textColor;
  final double? radius;
  final double? height;
  final Widget? buttonIcon;
  final VoidCallback? onPressed;

  const SocialLogInWidget({
    Key? key,
    this.buttonText,
    this.buttonColor,
    this.textColor,
    this.radius,
    this.height,
    this.buttonIcon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 9),
      child: SizedBox(
        height: context.height * 0.055,
        child: ElevatedButton.icon(
          onPressed: onPressed?? (){},
          icon: buttonIcon ?? const Icon(Icons.g_mobiledata), 
          label: Text(buttonText ?? "Sign In With Google"), 
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius ?? 8), 
              ),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(buttonColor ?? Colors.blue), 
            foregroundColor: MaterialStateProperty.all<Color>(textColor ?? Colors.white), 
          ),
        ),
      ),
    );
  }
  
}

