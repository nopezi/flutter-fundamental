import 'package:flutter/material.dart';

import 'widget/card_profile_information_widget.dart';
import 'widget/discover_list_item_widget.dart';
import 'widget/featured_article_banner_widget.dart';
import 'widget/title_and_subtitle_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            CardProfileInformationWidget(),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 18),
              child: natureDiscoveryData(),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: FeaturedArticleBannerWidget(),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        )),
      ),
    );
  }

  Widget natureDiscoveryData() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleAndSubtitle(
            title: "Notable works",
            subTitle: "Based on the popularity of articles",
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 230,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return DiscoverListItemWidget();
              },
            ),
          ),
        ],
      ),
    );
  }
}
