import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:talent_acquisition_exploer/models/applet.dart';

import '../public/data/applets.dart';

enum ExpandedState { Expanded, Collapsed }

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  int _currentExpandedIndex;

  ExpandedState _expandedState;

  List<Applet> _authorizationApplets = authorizationApplets;
  List<Applet> _settingApplets = settingApplets;
  List<Applet> _recruiterApplets = recruiterApplets;
  List<Applet> _hiringManagerApplets = hiringManegerApplets;

  _toggleCollpased(int blockIndex) {
    if (_expandedState == ExpandedState.Expanded) {
      if (_currentExpandedIndex != blockIndex) {
        // open another block
        setState(() {
          _currentExpandedIndex = blockIndex;
        });
      } else {
        // close same block
        setState(() {
          _expandedState = ExpandedState.Collapsed;
          _currentExpandedIndex = blockIndex;
        });
      }
    } else {
      setState(() {
        _expandedState = ExpandedState.Expanded;
        _currentExpandedIndex = blockIndex;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            AppBar(
              title: Text(
                'Exploer',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              automaticallyImplyLeading: false,
            ),
            DrawerBlock(
              blockIndex: 0,
              blockTitle: 'Authorization',
              applets: _authorizationApplets,
              onBlockPressed: () => _toggleCollpased(0),
              currentExpandedIndex: _currentExpandedIndex,
              expandedState: _expandedState,
            ),
            DrawerBlock(
              blockIndex: 1,
              blockTitle: 'Settings',
              applets: _settingApplets,
              onBlockPressed: () => _toggleCollpased(1),
              currentExpandedIndex: _currentExpandedIndex,
              expandedState: _expandedState,
            ),
            DrawerBlock(
              blockIndex: 2,
              blockTitle: 'Recruiter',
              applets: _recruiterApplets,
              onBlockPressed: () => _toggleCollpased(2),
              currentExpandedIndex: _currentExpandedIndex,
              expandedState: _expandedState,
            ),
            DrawerBlock(
              blockIndex: 3,
              blockTitle: 'Hiring Manager',
              applets: _hiringManagerApplets,
              onBlockPressed: () => _toggleCollpased(3),
              currentExpandedIndex: _currentExpandedIndex,
              expandedState: _expandedState,
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerBlock extends StatefulWidget {
  final Function onBlockPressed;
  final int blockIndex;
  final int currentExpandedIndex;
  final String blockTitle;
  final List<Applet> applets;
  final ExpandedState expandedState;

  DrawerBlock({
    @required this.blockIndex,
    @required this.onBlockPressed,
    @required this.blockTitle,
    @required this.applets,
    @required this.expandedState,
    @required this.currentExpandedIndex,
  });

  @override
  _DrawerBlockState createState() => _DrawerBlockState();
}

class _DrawerBlockState extends State<DrawerBlock>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _rotateAnimation;

  @override
  initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );

    _rotateAnimation = Tween<double>(
      begin: 0.0,
      end: 0.5,
    ).animate(
      CurvedAnimation(
        curve: Curves.easeIn,
        parent: _controller,
      ),
    );

    super.initState();
  }

  @override
  didUpdateWidget(Widget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.expandedState == ExpandedState.Expanded &&
        widget.blockIndex == widget.currentExpandedIndex) {
      _controller.forward();
      setState(() {});
    } else {
      _controller.reverse();
      setState(() {});
    }
  }

  double _calVerticalNum() {
    if (widget.applets.length == 1) {
      return 1.0;
    } else if (widget.applets.length % 2 == 0) {
      return (widget.applets.length ~/ 2).toDouble();
    } else {
      return (widget.applets.length ~/ 2 + 1).toDouble();
    }
  }

  @override
  Widget build(BuildContext context) {
    final bool isExpanded = widget.expandedState == ExpandedState.Expanded &&
        widget.blockIndex == widget.currentExpandedIndex;

    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(widget.blockTitle),
            trailing: RotationTransition(
              turns: _rotateAnimation,
              alignment: Alignment.center,
              child: IconButton(
                icon: Icon(Icons.arrow_drop_down),
                onPressed: widget.onBlockPressed,
              ),
            ),
            onTap: widget.onBlockPressed,
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            width: isExpanded ? 300 : 0,
            height: isExpanded ? 0.3 : 0,
            decoration: isExpanded
                ? BoxDecoration(
                    border: Border.all(
                      width: 0.5,
                      color: Colors.black87,
                    ),
                  )
                : null,
          ),
          SingleChildScrollView(
            child: AnimatedContainer(
              height: isExpanded
                  ? _calVerticalNum() > 3.0 ? 300 : _calVerticalNum() * 120
                  : 0,
              padding: EdgeInsets.only(top: 10, bottom: 10),
//              height: isExpanded
//                  ? _calVerticalNum() == 1.0
//                      ? _calVerticalNum() * 110 + 10
//                      : _calVerticalNum() * 110
//                  : 0,
              duration: Duration(milliseconds: 300),
              child: GridView(
                padding: EdgeInsets.only(top: 10),
                // shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
//                itemBuilder: (ctx, index) => BlockItems(widget.applets[index]),
//                itemCount: widget.applets.length,
                children: widget.applets.map((applet) {
                  return BlockItems(applet);
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BlockItems extends StatelessWidget {
  final Applet applet;

  BlockItems(this.applet);

  void onTapHandler(BuildContext context) {
    Navigator.of(context).pushReplacementNamed(applet.uri);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          applet.icon != null
              ? Center(
                  child: IconButton(
                    icon: Icon(
                      applet.icon,
                      size: 44,
                    ),
                    padding: EdgeInsets.all(0),
                    onPressed: () => onTapHandler(context),
                  ),
                )
              : GestureDetector(
                  onTap: () => onTapHandler(context),
                  child: SvgPicture.asset(
                    applet.image,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 50,
                  ),
                ),
          SizedBox(height: 5),
          Text(
            applet.text,
            textAlign: TextAlign.center,
          ),
        ],
      ),
      decoration: BoxDecoration(border: Border.all()),
    );
  }
}
