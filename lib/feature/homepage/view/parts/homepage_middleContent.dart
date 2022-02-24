part of homepage_view_body;

class _buildMiddleContext extends StatelessWidget {
  const _buildMiddleContext({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.only(top: 50, left: 10, right: 10, bottom: 10),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              title:
                  "${HomePageStrings.firstOfMiddleContent} (${cardModels.length.toString()})",
              fontSize: 17,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(5)),
              padding: EdgeInsets.all(7),
              child: CustomText(
                title: HomePageStrings.secondOfMiddleContent,
                fontSize: 17,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
