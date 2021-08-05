import 'package:flutter/material.dart';

class tab_bar extends StatefulWidget {
  tab_bar({Key? key}) : super(key: key);

  @override
  _tab_barState createState() => _tab_barState();
}

class _tab_barState extends State<tab_bar> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
      const Center(
        child: Icon(
          Icons.cloud,
          size: 64,
          color: Colors.blue,
        ),
      ),
      const Center(
        child: Icon(
          Icons.email,
          size: 64,
          color: Colors.blue,
        ),
      ),
      const Center(
        child: Icon(
          Icons.remove_red_eye,
          size: 64,
          color: Colors.blue,
        ),
      ),
      NestedTab()
    ];

    final _kTabs = <Tab>[
      const Tab(
        icon: Icon(Icons.male_sharp),
        text: 'tab1',
      ),
      const Tab(
        icon: Icon(Icons.alarm),
        text: 'tab1',
      ),
      const Tab(
        icon: Icon(Icons.forum),
        text: 'tab1',
      ),
    ];
    return DefaultTabController(
        length: _kTabs.length,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: _kTabs,
            ),
          ),
          body: TabBarView(
            children: _kTabPages,
          ),
        ));
  }
}

class NestedTab extends StatefulWidget {
  const NestedTab({Key? key}) : super(key: key);

  @override
  _NestedTabState createState() => _NestedTabState();
}

class _NestedTabState extends State<NestedTab>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
      const Center(
        child: Icon(
          Icons.cloud,
          size: 64,
          color: Colors.red,
        ),
      ),
      const Center(
        child: Icon(
          Icons.email,
          size: 64,
          color: Colors.yellowAccent,
        ),
      ),
      const Center(
        child: Icon(
          Icons.remove_red_eye,
          size: 64,
          color: Colors.pink,
        ),
      )
    ];

    final _kTabs = <Tab>[
      const Tab(
        icon: Icon(Icons.male_sharp),
        text: 'tab1',
      ),
      const Tab(
        icon: Icon(Icons.alarm),
        text: 'tab1',
      ),
      const Tab(
        icon: Icon(Icons.forum),
        text: 'tab1',
      ),
    ];
    return DefaultTabController(
        length: _kTabs.length,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: _kTabs,
            ),
          ),
          body: TabBarView(
            children: _kTabPages,
          ),
        ));
  }
}
