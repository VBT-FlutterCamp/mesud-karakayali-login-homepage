

part of homepage_view_body;

class _buildHomePageList extends StatelessWidget {
  const _buildHomePageList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.only(top: 0),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: cardModels.length,
        itemBuilder: (context, index) {
          return _cardMethod(index);
        });
  }

  Card _cardMethod(int index) {
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
}
