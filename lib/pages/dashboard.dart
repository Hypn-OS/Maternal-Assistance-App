import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'post.dart';

class MainPage extends StatefulWidget
{
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
{
  final List<List<double>> charts =
  [
    [0.0, 0.3, 0.7, 0.6, 0.55, 0.8, 1.2, 1.3, 1.35, 0.9, 1.5, 1.7, 1.8, 1.7, 1.2, 0.8, 1.9, 2.0, 2.2, 1.9, 2.2, 2.1, 2.0, 2.3, 2.4, 2.45, 2.6, 3.6, 2.6, 2.7, 2.9, 2.8, 3.4],
    [0.0, 0.3, 0.7, 0.6, 0.55, 0.8, 1.2, 1.3, 1.35, 0.9, 1.5, 1.7, 1.8, 1.7, 1.2, 0.8, 1.9, 2.0, 2.2, 1.9, 2.2, 2.1, 2.0, 2.3, 2.4, 2.45, 2.6, 3.6, 2.6, 2.7, 2.9, 2.8, 3.4, 0.0, 0.3, 0.7, 0.6, 0.55, 0.8, 1.2, 1.3, 1.35, 0.9, 1.5, 1.7, 1.8, 1.7, 1.2, 0.8, 1.9, 2.0, 2.2, 1.9, 2.2, 2.1, 2.0, 2.3, 2.4, 2.45, 2.6, 3.6, 2.6, 2.7, 2.9, 2.8, 3.4,],
    [0.0, 0.3, 0.7, 0.6, 0.55, 0.8, 1.2, 1.3, 1.35, 0.9, 1.5, 1.7, 1.8, 1.7, 1.2, 0.8, 1.9, 2.0, 2.2, 1.9, 2.2, 2.1, 2.0, 2.3, 2.4, 2.45, 2.6, 3.6, 2.6, 2.7, 2.9, 2.8, 3.4, 0.0, 0.3, 0.7, 0.6, 0.55, 0.8, 1.2, 1.3, 1.35, 0.9, 1.5, 1.7, 1.8, 1.7, 1.2, 0.8, 1.9, 2.0, 2.2, 1.9, 2.2, 2.1, 2.0, 2.3, 2.4, 2.45, 2.6, 3.6, 2.6, 2.7, 2.9, 2.8, 3.4, 0.0, 0.3, 0.7, 0.6, 0.55, 0.8, 1.2, 1.3, 1.35, 0.9, 1.5, 1.7, 1.8, 1.7, 1.2, 0.8, 1.9, 2.0, 2.2, 1.9, 2.2, 2.1, 2.0, 2.3, 2.4, 2.45, 2.6, 3.6, 2.6, 2.7, 2.9, 2.8, 3.4]
  ];

  static final List<String> chartDropdownItems = [ 'Last 7 days', 'Last month', 'Last year' ];
  String actualDropdown = chartDropdownItems[0];
  int actualChart = 0;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      appBar: AppBar
      (
        elevation: 2.0,
        backgroundColor: Colors.white,
        title: Text('Dashboard', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 30.0)),
        actions: <Widget>
        [
          Container
          (
            margin: EdgeInsets.only(right: 8.0),
            child: Row
            (
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>
              [
                Text('User_name', style: TextStyle(color: Colors.pink, fontWeight: FontWeight.w700, fontSize: 14.0)),
                Icon(Icons.arrow_drop_down, color: Colors.black54)
              ],
            ),
          )
        ],
      ),
      body: StaggeredGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        children: <Widget>[
          _buildTile(
            Padding
            (
              padding: const EdgeInsets.all(24.0),
              child: Row
              (
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>
                [
                  Column
                  (
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>
                    [
                      Text('Months and Days left', style: TextStyle(color: Colors.blueAccent)),
                      Text('XX/XX', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 34.0))
                    ],
                  ),
                  Material
                  (
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(24.0),
                    child: Center
                    (
                      child: Padding
                      (
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(Icons.calendar_today, color: Colors.white, size: 30.0),
                      )
                    )
                  )
                ]
              ),
            ),
          ),
          _buildTile(
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column
              (
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>
                [
                  Material
                  (
                    color: Colors.teal,
                    shape: CircleBorder(),
                    child: Padding
                    (
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(Icons.fastfood, color: Colors.white, size: 30.0),
                    )
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 16.0)),
                  Text('Diet Chart', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 24.0)),
                  Text('Seasonal, Non-Seasonal', style: TextStyle(color: Colors.black45, fontSize: 10.0)),
                ]
              ),
            ),
          ),
          _buildTile(
            Padding
            (
              padding: const EdgeInsets.all(24.0),
              child: Column
              (
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>
                [
                  Material
                  (
                    color: Colors.amber,
                    shape: CircleBorder(),
                    child: Padding
                    (
                      padding: EdgeInsets.all(16.0),
                      child: Icon(Icons.notifications, color: Colors.white, size: 30.0),
                    )
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 16.0)),
                  Text('Reminders', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 24.0)),
                  Text('Water, food, vaccinations', style: TextStyle(color: Colors.black45 , fontSize: 11.0)),
                ]
              ),
            ),
          ),
          _buildTile(
            Padding
                (
                  padding: const EdgeInsets.all(24.0),
                  child: Column
                  (
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>
                    [
                      Row
                      (
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>
                        [
                          Column
                          (
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>
                            [
                              Text('Music & Exercise', style: TextStyle(color: Colors.pink, fontSize: 24.0 )),
                              Text('My-Playlist', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20.0)),
                            ],
                          ),
                          DropdownButton
                          (
                            isDense: true,
                            value: actualDropdown,
                            onChanged: (String value) => setState(()
                            {
                              actualDropdown = value;
                              actualChart = chartDropdownItems.indexOf(value); // Refresh the chart
                            }),
                            items: chartDropdownItems.map((String title)
                            {
                              return DropdownMenuItem
                              (
                                value: title,
                                child: Text(title, style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w400, fontSize: 14.0)),
                              );
                            }).toList()
                          )
                        ],
                      ),
                      Padding(padding: EdgeInsets.all(11.0),
                      child: Icon(Icons.library_music, color: Colors.pink, size: 99.0),
                      ),
                      
                      
                    ],
                  )
                ),
          ),
          _buildTile(
            Padding
            (
              padding: const EdgeInsets.all(24.0),
              child: Row
              (
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>
                [
                  Column
                  (
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>
                    [
                      Text('Community/Forum', style: TextStyle(color: Colors.redAccent)),
                      Text('TBD', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 34.0))
                    ],
                  ),
                  Material
                  (
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(24.0),
                    child: Center
                    (
                      child: Padding
                      (
                        padding: EdgeInsets.all(16.0),
                        child: Icon(Icons.chat_bubble, color: Colors.white, size: 30.0),
                      )
                    )
                  )
                ]
              ),
            ),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => ShopItemsPage())),
          )
        ],
        staggeredTiles: [
          StaggeredTile.extent(2, 110.0),
          StaggeredTile.extent(1, 180.0),
          StaggeredTile.extent(1, 180.0),
          StaggeredTile.extent(2, 220.0),
          StaggeredTile.extent(2, 110.0),
        ],
      )
    );
  }

  Widget _buildTile(Widget child, {Function() onTap}) {
    return Material(
      elevation: 14.0,
      borderRadius: BorderRadius.circular(12.0),
      shadowColor: Color(0x802196F3),
      child: InkWell
      (
        // Do onTap() if it isn't null, otherwise do print()
        onTap: onTap != null ? () => onTap() : () { print('Not set yet'); },
        child: child
      )
    );
  }
}