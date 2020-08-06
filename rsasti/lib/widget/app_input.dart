import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RSAInputText extends StatelessWidget {
  final String texto;
  final String dica;
  final bool passw;
  final bool autofocus;
  final TextEditingController controller;
  final FormFieldValidator<String> validator;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final FocusNode focusNode;
  final FocusNode nextFocus;
  final int maxLength;
  final Function onChange;
  final String newError;
  final GestureTapCallback onTap;
  final IconData icone;
  final IconData iconePrefix;
  final IconData iconeSufix;
  final double sizeFont;
  final double sizeHint;
  final Function tapSufix;
  final List<TextInputFormatter> formatter;
  final double paddingLeft;
  final double paddingRight;
  final double paddingTop;
  final double paddingBottom;
  final bool isDense;

  RSAInputText(
    this.texto, {
    this.maxLength = 0,
    this.onChange,
    this.tapSufix,
    this.dica,
    this.passw = false,
    this.autofocus = false,
    this.controller,
    this.validator,
    this.keyboardType,
    this.textInputAction,
    this.focusNode,
    this.nextFocus,
    this.newError,
    this.onTap,
    this.icone,
    this.iconePrefix,
    this.sizeFont = 13,
    this.sizeHint = 13,
    this.iconeSufix,
    this.formatter,
    this.paddingLeft = 10.0,
    this.paddingRight = 10.0,
    this.paddingBottom = 3.0,
    this.paddingTop = 3.0,
    this.isDense = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChange,
      onTap: onTap,
      obscureText: passw,
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      focusNode: focusNode,
      autofocus: autofocus,
      onFieldSubmitted: (String text) {
        if (nextFocus != null) {
          FocusScope.of(context).requestFocus(nextFocus);
        }
      },
      style: TextStyle(fontSize: 13),
      maxLength: maxLength > 0 ? maxLength : null,
      inputFormatters: formatter == null ? null : formatter,
      decoration: InputDecoration(
        icon: icone == null
            ? null
            : Icon(
                icone,
                size: sizeFont,
              ),
        prefixIcon:
            iconePrefix == null ? null : Icon(iconePrefix, size: sizeFont + 5),
        suffixIcon: tapSufix == null
            ? null
            : GestureDetector(
                onTap: tapSufix,
                child: iconeSufix == null
                    ? null
                    : Icon(iconeSufix, size: sizeFont + 5),
              ),
        isDense: isDense,
        contentPadding: EdgeInsets.fromLTRB(
            paddingLeft, paddingTop, paddingRight, paddingBottom),
        counterText: "",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        labelText: texto,
        labelStyle: TextStyle(fontSize: 13),
        hintText: dica,
        errorText: newError,
      ),
    );
  }
}
