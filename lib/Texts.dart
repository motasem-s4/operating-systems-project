import 'package:flutter/material.dart';

enum TextStyles { HEADLINE2, HEADLINE3, HEADLINE4, HEADLINE5, HEADLINE6, BODYTEXT2, BODYTEXT_15, BODYTEXT1, CAPTION, OVERLINE, BUTTON }
enum TextVariant { heading0, heading, heading2, heading3, body1, body2, body2Link, caption, caption2, bodyText, bodyText2, caption3, caption4, overline, date }

class Texts extends StatefulWidget {
  final String text;
  final TextVariant variant;
  final Color color;
  final bool bold;
  final bool regular;
  final bool medium;
  final int maxLength;
  final bool italic;
  final TextAlign textAlign;
  final int maxLines;
  final bool readMore;
  final TextStyles style;
  final bool allowExpand;
  final double fontSize;
  final TextDecoration decoration;
  final FontWeight fontWeight;

  Texts(this.text,
      {Key key,
      this.variant,
      this.color,
      this.bold,
      this.regular,
      this.medium,
      this.allowExpand = true,
      this.italic: false,
      this.textAlign,
      this.maxLength = 60,
      this.decoration,
      this.maxLines,
      this.readMore = false,
      this.style,
      this.fontWeight,
      this.fontSize})
      : super(key: key);

  @override
  _TextsState createState() => _TextsState();
}

class _TextsState extends State<Texts> {
  bool hidden = false;
  String text = "";

  @override
  void didUpdateWidget(Texts oldWidget) {
    setState(() {
      if (widget.style == TextStyles.OVERLINE)
        text = widget.text.toUpperCase();
      else {
        text = widget.text;
      }
    });
    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    hidden = widget.readMore;
    if (widget.style == TextStyles.OVERLINE)
      text = widget.text.toUpperCase();
    else {
      text = widget.text;
    }
    super.initState();
  }

  double _getFontSize() {
    switch (widget.variant) {
      case TextVariant.heading0:
        return 40.0;
      case TextVariant.heading:
        return 32.0;
      case TextVariant.heading2:
        return 28.0;
      case TextVariant.heading3:
        return 18.0;
      case TextVariant.body1:
        return 18.0;
      case TextVariant.body2:
        return 20.0;
      case TextVariant.body2Link:
        return 16.0;
      case TextVariant.caption:
        return 16.0;
      case TextVariant.caption2:
        return 14.0;
      case TextVariant.bodyText:
        return 15.0;
      case TextVariant.bodyText2:
        return 17.0;
      case TextVariant.caption3:
        return 12.0;
      case TextVariant.caption4:
        return 9.0;
      case TextVariant.overline:
        return 11.0;
      case TextVariant.date:
        return 24.0;
      default:
        return 16.0;
    }
  }

  FontWeight _getFontWeight() {
    if (widget.bold ?? false) {
      return FontWeight.w900;
    } else if (widget.regular ?? false) {
      return FontWeight.w500;
    } else if (widget.medium ?? false) {
      return FontWeight.w800;
    } else {
      if (widget.style == null) {
        switch (widget.variant) {
          case TextVariant.heading:
            return FontWeight.w900;
          case TextVariant.heading2:
            return FontWeight.w900;
          case TextVariant.heading3:
            return FontWeight.w900;
          case TextVariant.body1:
            return FontWeight.w800;
          case TextVariant.body2:
            return FontWeight.w900;
          case TextVariant.body2Link:
            return FontWeight.w800;
          case TextVariant.caption:
            return FontWeight.w700;
          case TextVariant.caption2:
            return FontWeight.w700;
          case TextVariant.bodyText:
            return FontWeight.w500;
          case TextVariant.bodyText2:
            return FontWeight.w500;
          case TextVariant.caption3:
            return FontWeight.w600;
          case TextVariant.caption4:
            return FontWeight.w600;
          case TextVariant.overline:
            return FontWeight.w800;
          case TextVariant.date:
            return FontWeight.w900;
          default:
            return FontWeight.w500;
        }
      } else {
        return null;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    TextStyle _getFontStyle() {
      switch (widget.style) {
        case TextStyles.HEADLINE2:
          if (widget.bold ?? false) return Theme.of(context).textTheme.headline2.copyWith(fontFamily: 'Metropolis');
          return Theme.of(context).textTheme.headline2.copyWith(fontFamily: 'YoungSerif');

        case TextStyles.HEADLINE3:
          if (widget.bold ?? false) return Theme.of(context).textTheme.headline3.copyWith(fontFamily: 'Metropolis');
          return Theme.of(context).textTheme.headline3.copyWith(fontFamily: 'YoungSerif');
        case TextStyles.HEADLINE4:
          if (widget.bold ?? false) return Theme.of(context).textTheme.headline4.copyWith(fontFamily: 'Metropolis');
          return Theme.of(context).textTheme.headline4.copyWith(fontFamily: 'YoungSerif');
        case TextStyles.HEADLINE5:
          if (widget.bold ?? false) return Theme.of(context).textTheme.headline5.copyWith(fontFamily: 'Metropolis');
          return Theme.of(context).textTheme.headline5.copyWith(fontFamily: 'YoungSerif');
        case TextStyles.HEADLINE6:
          if (widget.bold ?? false) return Theme.of(context).textTheme.headline6.copyWith(fontFamily: 'Metropolis');
          return Theme.of(context).textTheme.headline6.copyWith(fontFamily: 'YoungSerif');
        case TextStyles.BODYTEXT2:
          if (widget.bold ?? false) return Theme.of(context).textTheme.bodyText2.copyWith(fontFamily: 'Metropolis');
          return Theme.of(context).textTheme.bodyText2.copyWith(fontFamily: 'YoungSerif');
        case TextStyles.BODYTEXT_15:
          if (widget.bold ?? false) return Theme.of(context).textTheme.bodyText2.copyWith(fontFamily: 'Metropolis', fontSize: 15);
          return Theme.of(context).textTheme.bodyText2.copyWith(fontSize: 15.0, fontFamily: 'YoungSerif');
        case TextStyles.BODYTEXT1:
          if (widget.bold ?? false) return Theme.of(context).textTheme.bodyText1.copyWith(fontFamily: 'Metropolis');
          return Theme.of(context).textTheme.bodyText1.copyWith(fontFamily: 'YoungSerif');
        case TextStyles.CAPTION:
          if (widget.bold ?? false) return Theme.of(context).textTheme.caption.copyWith(fontFamily: 'Metropolis');
          return Theme.of(context).textTheme.caption.copyWith(fontFamily: 'YoungSerif');
        case TextStyles.OVERLINE:
          if (widget.bold ?? false) return Theme.of(context).textTheme.overline.copyWith(fontFamily: 'Metropolis');
          return Theme.of(context).textTheme.overline.copyWith(fontFamily: 'YoungSerif');
        case TextStyles.BUTTON:
          if (widget.bold ?? false) return Theme.of(context).textTheme.button.copyWith(fontFamily: 'Metropolis');
          return Theme.of(context).textTheme.button.copyWith(fontFamily: 'YoungSerif');
        default:
          if (widget.bold ?? false) return TextStyle().copyWith(fontFamily: 'Metropolis');
          return TextStyle().copyWith(fontFamily: 'YoungSerif');
      }
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Stack(
          children: <Widget>[
            Text(!hidden ? text : (text.substring(0, text.length > widget.maxLength ? widget.maxLength : text.length)),
                textAlign: widget.textAlign,
                overflow: widget.maxLines != null ? ((widget.maxLines > 1) ? TextOverflow.fade : TextOverflow.ellipsis) : null,
                maxLines: widget.maxLines ?? null,
                style: widget.style != null
                    ? _getFontStyle().copyWith(
                        fontStyle: widget.italic ? FontStyle.italic : null,
                        color: widget.color != null ? widget.color : null,
                        fontWeight: widget.fontWeight ?? _getFontWeight(),
                        decoration: widget.decoration != null ? widget.decoration : TextDecoration.none)
                    : TextStyle(
                        fontStyle: widget.italic ? FontStyle.italic : null,
                        color: widget.color != null ? widget.color : Colors.black,
                        fontSize: widget.fontSize ?? _getFontSize(),
                        letterSpacing: widget.variant == TextVariant.overline ? 1.5 : null,
                        fontWeight: widget.fontWeight ?? _getFontWeight(),
                      )),
            if (widget.readMore && text.length > widget.maxLength && hidden)
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Theme.of(context).backgroundColor,
                    Theme.of(context).backgroundColor.withOpacity(0),
                  ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
                  height: 30,
                ),
              )
          ],
        ),
        if (widget.allowExpand && widget.readMore && text.length > widget.maxLength)
          Padding(
            padding: EdgeInsets.only(top: 8.0, right: 8.0, bottom: 8.0),
            child: InkWell(
              onTap: () {
                setState(() {
                  hidden = !hidden;
                });
              },
              child: Text(
                hidden ? "Read More" : "Read less",
                style: _getFontStyle().copyWith(color: Theme.of(context).primaryColor, fontWeight: FontWeight.w800, fontFamily: "Metropolis"),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
      ],
    );
  }
}
