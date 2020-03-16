import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bookit/model/provider_model.dart';
import 'package:bookit/ui/apptheme.dart';
class HairSalons extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var scrollController = ScrollController();

    return Container(
      child: Column(
        children: <Widget>[
          Padding(
              child: Container(
                child: ListView.builder(
                    physics: ScrollPhysics(parent: PageScrollPhysics()),
                    controller: scrollController,

                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,

                    itemCount: activities.length,
                    itemBuilder: (BuildContext context, int index) {
//                      ProviderActivity activity = activities[index];
                      return Container(
                        height: 90,
                        child: InkWell(
                          onTap: (){},
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(45)),
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Container(
                                      child: Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Column(
//                                      mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.end,

                                          children: <Widget>[
                                            Padding(padding:  EdgeInsets.only(top: 5),),
                                            Text(
                                              'صالون',
                                              style: TextStyle(
                                                fontFamily: 'font1',
                                                fontSize: 12,
                                                color: Colors.blueGrey,
                                              ),
                                              textAlign: TextAlign.right,
                                              textDirection: TextDirection.rtl,
                                            ),
                                            Text(
                                              'البرنس أحمد المحلاوى',
                                              style: TextStyle(
                                                  fontFamily: 'font1',
                                                  fontSize: 15,
                                                  color: Colors.black),
                                              textAlign: TextAlign.right,
                                              textDirection: TextDirection.rtl,
                                            ),
                                            Text(
                                              '4.8/5',
                                              style: TextStyle(
                                                  fontFamily: 'font1',
                                                  fontSize: 10,
                                                  color: awesome),
                                              textAlign: TextAlign.right,
                                            ),
                                          ],
                                        ),
                                      )),
                                  CircleAvatar(
                                    radius: 32,
                                    child: Image.asset('images/default_image.png'),
                                    backgroundColor: grey1,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 6.0),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  color:  darkBlue,
                                  blurRadius:18,
                                  offset: Offset(0, 4),
                                  spreadRadius: -15
                              )
                            ]
                        ),
                      );
                    }),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16)),
        ],
      ),
    );
  }
}
