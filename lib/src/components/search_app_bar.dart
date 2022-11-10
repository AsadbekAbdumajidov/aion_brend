import 'package:aion/core/constants/app_colors.dart';
import 'package:aion/core/constants/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBar extends StatelessWidget implements PreferredSizeWidget {
  const SearchBar(
      {Key? key,
      this.onTap,
      this.focus,
      this.onCancel,
      this.onChange,
      this.controller,
      this.autoFocus,
      this.readOnly})
      : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(50);

  final VoidCallback? onTap;
  final FocusNode? focus;
  final VoidCallback? onCancel;
  final Function(String word)? onChange;
  final TextEditingController? controller;
  final bool? autoFocus;
  final bool? readOnly;

  @override
  Widget build(BuildContext context) {
    /// Add Hero Animation here with some tag.
    /// Problem with this is that whenever Hero animation starts, keyboard is automatically dismissed.
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: TextField(
        focusNode: focus,
        onTap: onTap,
        textInputAction: TextInputAction.done,
        controller: controller,
        readOnly: readOnly ?? false,
        autofocus: autoFocus ?? false,
        onChanged: onChange,
        decoration: InputDecoration(
          hintText: "Search",
          contentPadding: EdgeInsets.zero,
          prefixIcon: Padding(
            padding: const EdgeInsets.all(13),
            child: SvgPicture.asset(AppIcons.instance.icSearch),
          ),
          filled: true,
          fillColor: AppColors.instance.grey,
          border: inputBorder(),
          focusedBorder: inputBorder(),
          enabledBorder: inputBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder inputBorder() => OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Colors.white, width: 0));
}
