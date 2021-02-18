import 'package:book_store/util/utils.dart';
import 'package:book_store/widgets/author.dart';
import 'package:book_store/widgets/categories.dart';
import 'package:book_store/widgets/drawer/mainDrawer.dart';
import 'package:book_store/widgets/forYouWidget.dart';
import 'package:book_store/widgets/topReader.dart';
import 'package:book_store/widgets/topSharing.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:book_store/constants/tabList.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<HomeScreen> with SingleTickerProviderStateMixin {

  TabController _tabController;
  ScrollController _scrollViewController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController( vsync: this, length: myTabs.length);
    _scrollViewController = ScrollController(initialScrollOffset: 0.0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          controller: _scrollViewController,
            floatHeaderSlivers: true,
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                Utils.silverAppbar(),
                SliverPersistentHeader(
                  pinned: true,
                  delegate: StickyTabBarDelegate(
                    child: TabBar(
                        isScrollable: true,
                        controller: _tabController,
                        indicatorWeight: 3.0,
                        labelColor: Colors.black,
                        tabs: myTabs
                    ),
                  ),
                ),
              ];
            },
            body: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              controller: _tabController,
              children: <Widget>[
                ForYou(),
                TopReader(),
                Category(),
                TopSharing(),
                Author(),
              ],
            )
        ),
      ),
      drawer: MainDrawer(),
    );
  }
}

class StickyTabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar child;

  StickyTabBarDelegate({@required this.child});

  @override
  double get minExtent => this.child.preferredSize.height;

  @override
  double get maxExtent => this.child.preferredSize.height;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      color: Colors.white,
      child: this.child,
    );
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
