import 'package:sample_project/src/nav_button.dart';
import 'package:sample_project/src/nav_custom_painter.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class CurvedNavigationBar extends StatefulWidget {
  final List<Widget> items;
  final Gradient gradient;
  final int index;
  final Color color;
  final Color buttonBackgroundColor;
  final Color backgroundColor;
  final ValueChanged<int> onTap;
  final Curve animationCurve;
  final Duration animationDuration;
  final double height;

  CurvedNavigationBar({
    Key key,
    @required this.items,
    this.gradient = Gradients.hotLinear,
    this.index = 0,
    this.color = Colors.lightBlueAccent,
    this.buttonBackgroundColor,
    this.backgroundColor = Colors.white,
    this.onTap,
    this.animationCurve = Curves.easeOut,
    this.animationDuration = const Duration(milliseconds: 600),
    this.height = 75.0,
  })  : assert(items != null),
        assert(items.length >= 1),
        assert(0 <= index && index < items.length),
        assert(0 <= height && height <= 75.0),
        super(key: key);

  @override
  _CurvedNavigationBarState createState() => _CurvedNavigationBarState();
}

class _CurvedNavigationBarState extends State<CurvedNavigationBar>
    with SingleTickerProviderStateMixin {
  double _startingPos;
  int _endingIndex = 0;
  double _pos;
  double _buttonHide = 0;
  Widget _icon;
  AnimationController _animationController;
  int _length;

  @override
  void initState() {
    super.initState();
    _icon = widget.items[widget.index];
    _length = widget.items.length;
    _pos = widget.index / _length;
    _startingPos = widget.index / _length;
    _animationController = AnimationController(vsync: this, value: _pos);
    _animationController.addListener(() {
      setState(() {
        _pos = _animationController.value;
        final endingPos = _endingIndex / widget.items.length;
        final middle = (endingPos + _startingPos) / 2;
        if ((endingPos - _pos).abs() < (_startingPos - _pos).abs()) {
          _icon = widget.items[_endingIndex];
        }
        _buttonHide =
            (1 - ((middle - _pos) / (_startingPos - middle)).abs()).abs();
      });
    });
  }

  @override
  void didUpdateWidget(CurvedNavigationBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    print(_animationController.status);
    if (oldWidget.index != widget.index) {
      final newPosition = widget.index / _length;
      _startingPos = _pos;
      _endingIndex = widget.index;
      _animationController.animateTo(newPosition,
          duration: widget.animationDuration, curve: widget.animationCurve);
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: widget.backgroundColor,
      height: widget.height,
      child: Stack(
        overflow: Overflow.visible,
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            bottom: 0 - (75.0 - widget.height),
            child: CustomPaint(
              painter: NavCustomPainter(_pos, _length, widget.color),
              child: Container(
                decoration: BoxDecoration(
                    // borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0))
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xff01346C),
                        Color(0xff01838F),

                      ],
                        // stops: [0.4,0.0]

                    ),
                    ),
                height: 75.0,
              ),
            ),
          ),
          Positioned(
            bottom: -40 - (75.0 - widget.height),
            left: _pos * size.width,
            width: size.width / _length,
            child: Center(
              child: Transform.translate(
                offset: Offset(
                  0,
                  -(1 - _buttonHide) * 80,
                ),
                child: Material(
                  // color: widget.buttonBackgroundColor ?? widget.color,
                  color: Color(0xff01838F),
                  type: MaterialType.circle,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: _icon,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0 - (75.0 - widget.height),
            child: SizedBox(
                height: 100.0,
                child: Row(
                    children: widget.items.map((item) {
                  return NavButton(
                    onTap: _buttonTap,
                    position: _pos,
                    length: _length,
                    index: widget.items.indexOf(item),
                    child: item,
                  );
                }).toList())),
          ),
        ],
      ),
    );
  }

  void _buttonTap(int index) {
    if (widget.onTap != null) {
      widget.onTap(index);
    }
    final newPosition = index / _length;
    setState(() {
      _startingPos = _pos;
      _endingIndex = index;
      _animationController.animateTo(newPosition,
          duration: widget.animationDuration, curve: widget.animationCurve);
    });
  }
}

class Gradients {
  static final AlignmentGeometry _beginAlignment = Alignment.topLeft;
  static final AlignmentGeometry _endAlignment = Alignment.bottomRight;

  static LinearGradient buildGradient(
          AlignmentGeometry begin, AlignmentGeometry end, List<Color> colors) =>
      LinearGradient(begin: begin, end: end, colors: colors);

  static const hotLinear = LinearGradient(
      colors: [Color(0xffF55B9A), Color(0xffF9B16E)],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight);
}
