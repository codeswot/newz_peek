import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:newz_peek/presentation/view/news_article_list_page.dart';
import 'package:newz_peek/presentation/viewmodel/news_article_form.dart';

class QuerryNewsArticleFormPage extends ConsumerStatefulWidget {
  const QuerryNewsArticleFormPage();

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _QuerryNewsArticleFormPageState();
}

class _QuerryNewsArticleFormPageState
    extends ConsumerState<QuerryNewsArticleFormPage> {
  late final NewsArticleViewFormModel _viewModel;
  final _formKey = GlobalKey<FormState>();

  _QuerryNewsArticleFormPageState();

  @override
  void initState() {
    super.initState();

    _viewModel = ref.read(newsArticleFormViewModelProvider);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search for News'),
      ),
      body: _buildBodyWidget(),
    );
  }

  Widget _buildBodyWidget() {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 24,
          bottom: 16,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildFormWidget(),
            const SizedBox(height: 15),
            _buildSearchButtonWidget(),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchButtonWidget() {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shadowColor: Colors.transparent,
          foregroundColor: Colors.white,
          backgroundColor: Colors.deepPurple,
        ),
        onPressed: () {
          final currentState = _formKey.currentState;
          if (currentState != null && currentState.validate()) {
            _viewModel.fetchNews();
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => NewsArticleListPage()));
          }
        },
        child: const Text(
          'Search',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildFormWidget() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          _buildSearchFormWidget(),
        ],
      ),
    );
  }

  Widget _buildSearchFormWidget() {
    return TextFormField(
      initialValue: _viewModel.initialQuerryValue(),
      onChanged: (value) => _viewModel.setQuerry(value),
      validator: (value) => _viewModel.validate(),
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.search),
        labelText: 'Search for a news Article',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
      ),
    );
  }
}
