import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'appBar/mobile_appBar.dart';
import 'appBar/web_appBar.dart';

const List<StaggeredTile> _staggeredTiles = <StaggeredTile>[
  StaggeredTile.count(2, 2),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
];

const List<Widget> _tiles = <Widget>[
  _Example01Tile(Colors.black, Icons.camera_alt, 0), //
  _Example01Tile(Colors.green, Icons.local_shipping, 1), //  1
  _Example01Tile(Colors.red, Icons.local_shipping, 2), //  2
  _Example01Tile(Colors.green, Icons.local_shipping, 3), //  3
  _Example01Tile(Colors.green, Icons.local_shipping, 4), //  4
  _Example01Tile(Colors.green, Icons.local_shipping, 5), //  5
  _Example01Tile(Colors.green, Icons.local_shipping, 6), //  6
  _Example01Tile(Colors.red, Icons.local_shipping, 7), //  7
  _Example01Tile(Colors.green, Icons.local_shipping, 8), //  8
  _Example01Tile(Colors.green, Icons.local_shipping, 9), //  9
  _Example01Tile(Colors.red, Icons.local_shipping, 10), //  10
  _Example01Tile(Colors.green, Icons.local_shipping, 11), //  11
  _Example01Tile(Colors.green, Icons.local_shipping, 12), //  12
  _Example01Tile(Colors.green, Icons.local_shipping, 13), //  13
  _Example01Tile(Colors.green, Icons.local_shipping, 14), //  14
];

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: constraints.maxWidth < 1000
              ? PreferredSize(
                  child: MobileAppBar(),
                  preferredSize: Size(double.infinity, 80),
                )
              : PreferredSize(
                  child: WebAppBar(),
                  preferredSize: Size(double.infinity, 100)),
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 1200),
              child: Container(
                alignment: AlignmentDirectional.center,
                height: 3000,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: StaggeredGridView.count(
                    crossAxisCount: 6,
                    staggeredTiles: _staggeredTiles,
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4,
                    padding: const EdgeInsets.all(4),
                    children: _tiles,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _Example01Tile extends StatelessWidget {
  const _Example01Tile(this.backgroundColor, this.iconData, this.vaga);

  final Color backgroundColor;
  final IconData iconData;
  final int vaga;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: InkWell(
        onTap: () {},
        child: Center(
          child: Padding(
              padding: const EdgeInsets.all(4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    vaga.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Icon(
                    iconData,
                    color: Colors.white,
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
