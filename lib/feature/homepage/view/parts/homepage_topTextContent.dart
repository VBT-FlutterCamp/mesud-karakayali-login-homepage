part of homepage_view_body;


class _buildTopText extends StatelessWidget {
  const _buildTopText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.15),
      width: MediaQuery.of(context).size.width * 0.7,
      child: FittedBox(
          fit: BoxFit.cover,
          child: CustomText(
            title: HomePageStrings.topString,
            fontSize: 100,
            fontWeight: FontWeight.bold,
            color: HomePageColor.titleColor,
          )),
    );
  }
}
