part of homepage_view_body;



SliverAppBar _buildSliverAppBar(BuildContext context) {


    return SliverAppBar(
      
      pinned: true,
      automaticallyImplyLeading: false,
      backgroundColor: HomePageColor.homePageBG,
      //centerTitle: true,
      flexibleSpace:  LayoutBuilder(builder: (ctx, cons) {
                       var top = cons.biggest.height;
                       return FlexibleSpaceBar(
        title: Container(
          width: 300,
          //color: Colors.red,
          child: Text(HomePageStrings.topString,
          //maxLines: top<100? 1:2,
          )),
                          
       // centerTitle: true,
       titlePadding: context.paddingLow,
      );}),

      toolbarHeight: MediaQuery.of(context).size.height*(0.06),
      expandedHeight: MediaQuery.of(context).size.height*(0.17),
    );
  }