import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/view_model.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<HomeViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: viewModel.isLoading
            ? CircularProgressIndicator()
            : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('UID: ${viewModel.homeData?.uid ?? 'N/A'}'),
            Text('NID: ${viewModel.homeData?.nid ?? 'N/A'}'),
            Text('Language Code: ${viewModel.homeData?.langCode ?? 'N/A'}'),
            Text('TV: ${viewModel.homeData?.tv.toString() ?? 'N/A'}'),
            Text('City: ${viewModel.homeData?.city ?? 'N/A'}'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          viewModel.fetchHomeData();
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
