
library homepage_view_body;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:kartal/kartal.dart';
import 'package:vbt_sample_project/core/constants/colors/homepage_color.dart';
import 'package:vbt_sample_project/core/constants/strings/homepage_strings.dart';
import 'package:vbt_sample_project/feature/homepage/model/homepage_model.dart';
import 'package:vbt_sample_project/products/widgets/custom_text.dart';

part 'parts/homepage_middleContent.dart';
part 'parts/homepage_listviewContent.dart';
part 'parts/homepage_topTextContent.dart';

class HomePageViewBody extends StatefulWidget {
  const HomePageViewBody({Key? key}) : super(key: key);

  @override
  _HomePageViewBodyState createState() => _HomePageViewBodyState();
}


class _HomePageViewBodyState extends State<HomePageViewBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: HomePageColor.homePageBG,
      child: CustomScrollView(
        slivers: [
          _buildSliverAppBar(context),
          _buildMiddleContext(),
          _buildListView()
        ],
      ),
    );
  }
}


class deleteIcon extends StatelessWidget {
  const deleteIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: EdgeInsets.only(left: 40),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 50,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: HomePageColor.cardIconColor.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10)),
            child: Container(
            
              child: Icon(
                Icons.delete,
                color: HomePageColor.cardIconColor,
              ),
            )),
      ),
    );
  }
}


  

