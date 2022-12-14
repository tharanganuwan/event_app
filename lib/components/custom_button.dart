import 'package:event_app/components/custom_loader.dart';
import 'package:event_app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.onTap,
      required this.text,
      this.height = 60,
      this.width = double.infinity,
      this.isLoading = false})
      : super(key: key);
  final Function() onTap;
  final String text;
  final double height;
  final double width;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isLoading ? null : onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: isLoading ? primaryColor.withOpacity(.3) : Color(0xff5669FF),
            borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: isLoading
              ? Custom_loader()
              : Text(
                  text,
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
        ),
      ),
    );
  }
}
