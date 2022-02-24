library homepage_view_body;

import 'package:flutter/material.dart';

import 'package:kartal/kartal.dart';
import 'package:vbt_sample_project/core/constants/colors/homepage_color.dart';
import 'package:vbt_sample_project/core/constants/strings/homepage_strings.dart';
import 'package:vbt_sample_project/feature/bottomhttp/service/todos_service.dart';

import 'package:vbt_sample_project/products/widgets/custom_text.dart';

import '../model/todos_model.dart';

part 'parts/http_middleContent.dart';
part 'parts/http_buildCard.dart';
part 'parts/http_topTextContent.dart';

class TodosPageViewBody extends StatefulWidget {
  const TodosPageViewBody({Key? key}) : super(key: key);

  @override
  _TodosPageViewBodyState createState() => _TodosPageViewBodyState();
}

class _TodosPageViewBodyState extends State<TodosPageViewBody> {
  TodosService _todosService = TodosService();

  List<Todos> _todoList = [];

  init() async {
    _todoList = await _todosService.getFetchTodo;
  }

  @override
  void initState() {
    super.initState();
    init();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: HomePageColor.homePageBG,
      child: _futureContent(),
    );
  }

  FutureBuilder<List<Todos>> _futureContent() {
    return FutureBuilder<List<Todos>>(
        future: _todosService.gettFetchTodo(),
        builder: (context, snapshot) {
          Widget newListSliver;
          if (snapshot.hasData) {
            var data = snapshot.data;

            newListSliver = _veriAtama(data ?? _todoList);
          } else {
            newListSliver =
                SliverToBoxAdapter(child: CircularProgressIndicator());
          }
          return CustomScrollView(
            slivers: [
              _buildSliverAppBar(context),
              _buildMiddleContext(length: _todoList.length),
              newListSliver
            ],
          );
        });
  }

  SliverList _veriAtama(List<Todos> data) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        Todos satirVeri = data[index];
        print(satirVeri.id);
        return Padding(
          padding: EdgeInsets.all(5),
          child: _buildCard(satirVeri),
        );
      }, childCount: 25),
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
      padding: EdgeInsets.only(left: 0),
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
