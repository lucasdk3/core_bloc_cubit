import 'package:core_bloc_cubit/app/core/side_bar/viewModel/bloc/sidebar_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget item(String page, IconData icon, Color iconColor, Color lineColor,
    Color letraColor, Color backgroundColor, BuildContext context) {
  final state = context.watch<SidebarBloc>().state;
  return Builder(builder: (context) {
    return Padding(
      padding: EdgeInsets.only(bottom: ScreenUtil().setWidth(4)),
      child: Container(
        height: 46,
        width: 46,
        color: backgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (state.isWeb && !state.isOpen)
              new Container()
            else if (!state.isWeb && state.isOpen)
              new Container(),
            Row(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                      margin: EdgeInsets.only(
                          left: state.isWeb && state.isOpen ? 12 : 0),
                      child: Icon(icon, color: iconColor)),
                ),
                state.isWeb && state.isOpen
                    ? Container(
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * .005),
                        child: Center(
                            child: Text(page,
                                style: TextStyle(
                                    color: letraColor, fontSize: 16))))
                    : SizedBox(),
              ],
            ),
            Container(
              height: 46,
              width: 4,
              color: lineColor,
            )
          ],
        ),
      ),
    );
  });
}
