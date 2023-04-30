import 'package:flutter/material.dart';
import 'information_rating_widget.dart';

class CardProfileInformationWidget extends StatelessWidget {
  const CardProfileInformationWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.grey,
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset.fromDirection(90))
        ],
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 160,
            child: Row(
              children: [
                Container(
                  width: 140,
                  // width: MediaQuery.of(context).size.width,
                  // height: MediaQuery.of(context).size.height,
                  margin: EdgeInsets.only(bottom: 10),
                  // child: Image.asset(
                  //   'assets/images/kucing.jpg',
                  //   // width: 10,
                  //   // height: 10,
                  //   // scale: 2,
                  // ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/kucing.jpg'))),
                ),
                Flexible(
                    child: Container(
                  margin: EdgeInsets.only(left: 15, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hacker Cing",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Pentester",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blueGrey[100],
                            borderRadius: BorderRadius.circular(10)),
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InformationRatting(
                              subTitle: "Article",
                              value: "10",
                            ),
                            InformationRatting(
                              subTitle: "Followers",
                              value: "10",
                            ),
                            InformationRatting(
                              subTitle: "Rating",
                              value: "10",
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )),
              ],
            ),
          ),
          Flexible(
              child: Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 1,
                  child: OutlinedButton(
                    // shape: RoundedRectangleBorder(),
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Text(
                      "Chat",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                    flex: 1,
                    child: MaterialButton(
                      onPressed: () {},
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Follow",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    )),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
