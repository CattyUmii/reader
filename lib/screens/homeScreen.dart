import 'package:book_store/components/bottomBar.dart';
import 'package:book_store/components/mainDrawer.dart';
import 'package:book_store/widgets/author.dart';
import 'package:book_store/widgets/categories.dart';
import 'package:book_store/widgets/forYouWidget.dart';
import 'package:book_store/widgets/topReader.dart';
import 'package:book_store/widgets/topSharing.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:book_store/constants/tabList.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:book_store/components/stickyTabBar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<HomeScreen> with SingleTickerProviderStateMixin{

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
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  titleSpacing: 0,
                  leading: null,
                  title: Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Builder(
                            builder: (context) => IconButton(
                                icon: Icon(FontAwesomeIcons.bars, color: Colors.amber),
                                onPressed: () => Scaffold.of(context).openDrawer())
                        ),
                        Text(
                            "Book Reader",
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(color: Colors.black),
                                fontSize: 14,
                                fontWeight: FontWeight.w400
                            )),
                        Spacer(),
                        Image.asset('assets/img/avatar_img.png', width: 50, height: 50,)
                      ],
                    ),
                  ),
                  pinned: false,
                  backgroundColor: Colors.white,
                  elevation: 0.0,
                  forceElevated: innerBoxIsScrolled,
                ),
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
      bottomNavigationBar: BottomBar(),
    );

  }
}
