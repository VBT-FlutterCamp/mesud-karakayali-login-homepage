

part of homepage_view_body;



 

   Card _buildCard(Todos data) {
     return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    // margin: EdgeInsets.only(left:5,right: 5,bottom: 20),
    child: ListTile(
      trailing: deleteIcon(),
      title: CustomText(
        title: data.title.toString(),
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      subtitle: CustomText(
        title: data.id.toString(),
        fontSize: 17,
        fontWeight: FontWeight.bold,
        overflow: TextOverflow.fade,
      ),
    ),
  );
   }


