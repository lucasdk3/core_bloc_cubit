import 'package:core_bloc_cubit/app/ui/theme/presenter/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';

import 'button_close.dart';
import 'items.dart';

Widget sideBarFull(BuildContext context) {
  return Row(
    children: [
      Container(
        height: double.infinity,
        width: 160,
        decoration: BoxDecoration(
          color: primary,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(
                            height: ScreenUtil().setHeight(30),
                            child:
                                Container()), //Image.asset('assets/logoinst.png')),
                      ),
                      SizedBox(width: 8),
                      Center(child: Text('logo')),
                    ],
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(20),
                ),
                Container(
                  height: 1,
                  width: 150,
                  color: secundary,
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(20),
                ),
                items(context),
              ],
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * .005,
                      bottom: MediaQuery.of(context).size.height * .02),
                  child: buttomClose(context),
                )),
          ],
        ),
      ),
    ],
  );
}
