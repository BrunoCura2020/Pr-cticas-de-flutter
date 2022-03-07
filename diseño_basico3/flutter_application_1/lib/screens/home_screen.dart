import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/background.dart';
import 'package:flutter_application_1/widgets/card_table.dart';
import 'package:flutter_application_1/widgets/custom_bottom_navigation.dart';
import 'package:flutter_application_1/widgets/page_Title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          Background(),
          _HomeBody(),
        ],
      ),
      //bottomNavigationBar: muestra una barra de navegacion inferior podria ser similar al AppBar
      bottomNavigationBar: const CustomBottonNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          PageTitle(),
          CardTable(),
        ],
      ),
    );
  }
}
