

part of homepage_view_body;

   SliverList _buildListView() {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return Padding(
          padding:EdgeInsets.all(5),
          child: _buildCard(index)
        );
      }, childCount: cardModels.length),
    );
  }

   Card _buildCard(int index) {
     return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    // margin: EdgeInsets.only(left:5,right: 5,bottom: 20),
    child: ListTile(
      trailing: deleteIcon(),
      title: CustomText(
        title: cardModels[index].title,
        fontSize: 23,
        fontWeight: FontWeight.bold,
      ),
      subtitle: CustomText(
        title: cardModels[index].subTitle,
        fontSize: 17,
        fontWeight: FontWeight.bold,
        overflow: TextOverflow.fade,
      ),
    ),
  );
   }


