import 'package:flutter/material.dart';

class RSAButtom extends StatelessWidget {
  final Color backgroundColor;
  final String caption;
  final Color captionColor;
  final FontWeight captionFontweight;
  final IconData icon;
  final Color iconColor;
  final double width;
  final double height;
  final double space;
  final Function onTap;
  final double marginRight;
  final double marginLeft;
  final double marginTop;
  final double marginBottom;
  final double radiusCircular;
  final double paddingAll;
  final Color corSelectBG;
  final Color corSelect;
  final bool active;

  const RSAButtom({
    Key key,
    this.caption,
    this.icon,
    this.iconColor = Colors.black87,
    this.captionColor = Colors.black87,
    this.captionFontweight = FontWeight.bold,
    this.width = 120.0,
    this.height = 45.0,
    this.space = 10.0,
    this.onTap,
    this.marginRight = 0,
    this.marginLeft = 0,
    this.marginTop = 0,
    this.marginBottom = 0,
    this.radiusCircular = 15.0,
    this.paddingAll = 8.0,
    this.backgroundColor = Colors.green,
    this.corSelectBG = Colors.black87,
    this.corSelect = Colors.white,
    this.active,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.fromLTRB(
          marginLeft,
          marginTop,
          marginRight,
          marginBottom,
        ),
        width: width,
        height: height,
        padding: EdgeInsets.all(paddingAll),
        decoration: BoxDecoration(
          color: active ? corSelectBG : backgroundColor,
          borderRadius: BorderRadius.circular(radiusCircular),
          border: Border.all(color: Colors.black87),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            icon == null
                ? Container()
                : Icon(
                    icon,
                    color: active ? corSelect : iconColor,
                  ),
            SizedBox(width: space),
            caption == null
                ? Container()
                : Text(
                    caption,
                    style: TextStyle(
                      color: active ? corSelect : captionColor,
                      fontWeight: captionFontweight,
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
