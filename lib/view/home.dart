import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pentarex/provider/meme_provider.dart';
import 'package:pentarex/view/detail_view.dart';
import 'package:pentarex/widget/image_widget.dart';

class HomeView extends ConsumerWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final meme = ref.watch(memeProvider);

    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: meme.when(
              data: (data) {
                if (data != null) {
                  return SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: RefreshIndicator(
                        onRefresh: () async {
                          ref.refresh(memeProvider);
                        },
                        child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: data.length > 3 ? 3 : data.length,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return DetailMemeView(data[index]);
                                }));
                              },
                              child: VNetworkImage(
                                url: data[index].url ?? '',
                              ),
                            );
                          },
                          itemCount: data.length,
                        ),
                      ));
                } else {
                  return const Center(child: Text('No data'));
                }
              },
              error: ((error, stackTrace) => Text(error.toString())),
              loading: () => const Center(child: CircularProgressIndicator()))),
    );
  }
}
