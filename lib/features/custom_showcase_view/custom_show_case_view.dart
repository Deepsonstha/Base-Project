import 'package:flutter/material.dart';

class ShowcaseWidget extends StatefulWidget {
  final Widget child;
  final String description;
  final VoidCallback onNext;

  const ShowcaseWidget({
    super.key,
    required this.child,
    required this.description,
    required this.onNext,
  });

  @override
  _ShowcaseWidgetState createState() => _ShowcaseWidgetState();
}

class _ShowcaseWidgetState extends State<ShowcaseWidget> {
  final GlobalKey _widgetKey = GlobalKey();
  Offset? _position;
  Size? _size;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(_calculatePosition);
  }

  void _calculatePosition(_) {
    final RenderBox renderBox = _widgetKey.currentContext!.findRenderObject() as RenderBox;
    setState(() {
      _position = renderBox.localToGlobal(Offset.zero);
      _size = renderBox.size;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Target Widget
        Container(
          key: _widgetKey,
          child: widget.child,
        ),
        // Overlay
        if (_position != null && _size != null)
          Positioned(
            top: _position!.dy - 10,
            left: _position!.dx - 10,
            child: Material(
              color: Colors.transparent,
              child: GestureDetector(
                onTap: widget.onNext,
                child: Stack(
                  children: [
                    // Highlighting Circle
                    Container(
                      width: _size!.width + 20,
                      height: _size!.height + 20,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                    // Tooltip
                    Positioned(
                      top: _size!.height + 10,
                      left: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.description,
                            style: const TextStyle(color: Colors.white),
                          ),
                          const SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: widget.onNext,
                            
                            child: const Text('Next'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}
