import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tg_pr/utils/helper.dart';

class RehoveTextField extends StatefulWidget {
  final Function(String)? onChanged;
  final String title;

  const RehoveTextField({Key? key, this.onChanged, required this.title})
      : super(key: key);

  @override
  State<RehoveTextField> createState() => _RehoveTextFieldState();
}

class _RehoveTextFieldState extends State<RehoveTextField> {
  onChanged(String value) {
    widget.onChanged?.call(value);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: withSpacing(
        spacing: 16,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              widget.title,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xffF4F4F4)),
            child: Column(
              children: [
                const SizedBox(height: 6),
                TextField(
                  onChanged: onChanged,
                  decoration: const InputDecoration(
                    counter: SizedBox.shrink(),
                    isCollapsed: true,
                    isDense: true,
                    contentPadding: EdgeInsets.zero,
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
