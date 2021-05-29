import 'package:flutter/material.dart';
import 'package:os_project/Texts.dart';


class PrimaryButton extends StatefulWidget {
  PrimaryButton({Key key, this.title: "", this.icon, this.onTap, this.loading: false, this.elevation: true, this.disabled = false, this.color, this.textColor}) : super(key: key);

  final String title;
  final Widget icon;
  final VoidCallback onTap;
  bool disabled;
  final bool loading;
  final bool elevation;
  final Color color;
  final Color textColor;

  @override
  _PrimaryButtonState createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> with TickerProviderStateMixin {
  double _buttonSize = 1.0;
  AnimationController _animationController;
  Animation _animation;

  @override
  void initState() {
    _animationController = AnimationController(vsync: this, lowerBound: 0.7, upperBound: 1.0, duration: Duration(milliseconds: 120));
    _animation = CurvedAnimation(parent: _animationController, curve: Curves.easeOutQuad, reverseCurve: Curves.easeOutQuad);
    _animation.addListener(() {
      setState(() {
        _buttonSize = _animation.value;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Widget _buildIcon() {
    if (widget.icon != null && (widget.title != null && widget.title != "")) {
      return Container(margin: EdgeInsets.only(right: 12.0), height: 24.0, child: widget.icon);
    } else if (widget.icon != null) {
      return Container(
        height: 18.0,
        width: 18.0,
        child: widget.icon,
      );
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return (GestureDetector(
      onTapDown: (TapDownDetails tap) {
        _animationController.reverse(from: 1.0);
      },
      onTapUp: (TapUpDetails tap) {
        _animationController.forward();
      },
      onTapCancel: () {
        _animationController.forward();
      },
      onTap: widget.disabled || widget.loading ? () {} : Feedback.wrapForTap(widget.onTap, context),
      behavior: HitTestBehavior.opaque,
      child: Transform.scale(
          scale: 1,
          child: AnimatedContainer(
            duration: Duration(milliseconds: 150),
            height: 50,
            padding: EdgeInsets.symmetric(vertical: widget.title != null && widget.title.isNotEmpty ? 12.0 : 15.0, horizontal: widget.title != null && widget.title.isNotEmpty ? 22.0 : 19),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: widget.disabled ? Theme.of(context).primaryColor.withOpacity(.7) : widget.color ?? Theme.of(context).primaryColor,
                boxShadow: [
                  BoxShadow(
                      color: widget.elevation ? Theme.of(context).primaryColor.withOpacity(.3) : Colors.white,
                      spreadRadius: _buttonSize < 1.0 ? -(1 - _buttonSize) * 50 : 0.0,
                      offset: Offset(0, 7.0),
                      blurRadius: 10.0)
                ]),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildIcon(),
                widget.loading
                    ? Padding(
                  padding: const EdgeInsets.all(2.7),
                  child: SizedBox(
                    height: 19.0,
                    width: 19.0,
                    child: CircularProgressIndicator(backgroundColor: Colors.white, valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).disabledColor)),
                  ),
                )
                    : Padding(
                  padding: EdgeInsets.only(bottom: 3.0),
                  child: Texts(
                    widget.title,
                    fontSize: 17,
                    color: widget.textColor ?? Colors.white,
                  ),
                )
              ],
            ),
          )),
    ));
  }
}
