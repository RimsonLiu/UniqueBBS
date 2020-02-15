import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:unique_bbs/config/resource.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(ItemState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    margin: EdgeInsets.only(left: 20, right: 20, bottom: 34),
    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
    decoration: BoxDecoration(
      color: ColorResource.backgroundWhite,
      borderRadius: BorderRadius.circular(16),
    ),
    height: 125,
    child: GestureDetector(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 4),
                child: FlutterLogo(size: 18),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  "闲杂讨论",
                  style: TextStyle(
                    color: Color(0xff555555),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Icon(
                Icons.chevron_right,
                size: 20,
                color: Color(0xff9e9e9e),
              )
            ],
          ),
          Row(
            children: <Widget>[
              CircleAvatar(
                radius: 28,
                backgroundImage: NetworkImage(
                    'http://thecatapi.com/api/images/get?format=src'
                    '&size=small&type=jpg#${state.hashCode}'),
              ),
              Container(
                margin: EdgeInsets.only(left: 8),
                height: 48,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          "2020年举办全球Hackday吧",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.fade,
                          maxLines: 1,
                        ),
                        Text(
                          " HOT",
                          style: TextStyle(
                            color: ColorResource.primaryColor,
                            fontSize: 13,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "2020.01.19 肖宇轩 发布",
                      style: TextStyle(
                        color: ColorResource.textGray,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      onTap: () {},
    ),
  );
}
