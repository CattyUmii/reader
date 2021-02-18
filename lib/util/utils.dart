import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Utils {

  static Widget silverAppbar() {
    return SliverAppBar(
      floating: false,
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
            Image.asset('assets/img/avatar_img.png', width: 50, height: 50)
          ],
        ),
      ),
      pinned: false,
      backgroundColor: Colors.white,
    );
  }

  static Widget progressIndicator() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

}