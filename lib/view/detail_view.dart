import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pentarex/model/meme_model.dart';
import 'package:pentarex/provider/image_provider.dart';
import 'package:pentarex/provider/save_and_share_provider.dart';
import 'package:pentarex/provider/text_provider.dart';
import 'package:pentarex/widget/action_widget.dart';
import 'package:pentarex/widget/image_widget.dart';

final GlobalKey globalKey = GlobalKey();

class DetailMemeView extends ConsumerWidget {
  DetailMemeView(
    this.meme, {
    Key? key,
  }) : super(key: key);

  final Meme meme;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uploadProvider = ref.watch(imageUploadProvider);
    final textProvider = ref.watch(textPositionProvider);
    final isSaving = ref.watch(saveAndShareNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(meme.name ?? ''),
        centerTitle: true,
        actions: [
          Visibility(
            visible: isSaving.isSaving,
            child: IconButton(
                onPressed: () async {
                  // save image
                  ref
                      .read(saveAndShareNotifierProvider.notifier)
                      .savingMode(false);

                  print('saving mode');
                },
                icon: const Icon(Icons.edit)),
          ),
          Visibility(
            visible: !isSaving.isSaving,
            child: IconButton(
                onPressed: () async {
                  // save image
                  ref
                      .read(saveAndShareNotifierProvider.notifier)
                      .savingMode(true);
                },
                icon: const Icon(Icons.save)),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                    flex: 5,
                    child: RepaintBoundary(
                      key: globalKey,
                      child: DragTarget(
                        builder: (BuildContext context,
                            List<Object?> candidateData,
                            List<dynamic> rejectedData) {
                          return SizedBox(
                            height: meme.height?.toDouble() ?? 0,
                            width: meme.width?.toDouble() ?? 0,
                            child: Stack(
                              children: [
                                VNetworkImage(
                                  url: meme.url ?? '',
                                  height: meme.height?.toDouble() ?? 0,
                                  width: meme.width?.toDouble() ?? 0,
                                ),
                                if (candidateData.isNotEmpty) ...[
                                  const Align(
                                      alignment: Alignment.center,
                                      child: Text('drop here',
                                          style: TextStyle(
                                              color: Colors.red, fontSize: 50)))
                                ],

                                // draggable image
                                if (uploadProvider.path.isNotEmpty) ...[
                                  Positioned(
                                    left: ref
                                        .read(imageUploadProvider.notifier)
                                        .position
                                        .dx,
                                    top: ref
                                        .read(imageUploadProvider.notifier)
                                        .position
                                        .dy,
                                    child: Draggable(
                                      onDragEnd: (details) {
                                        //Here at the end and at the begining of the line
                                        RenderBox? renderBox = context
                                            .findRenderObject() as RenderBox;

                                        final position = renderBox
                                            .globalToLocal(details.offset);

                                        ref
                                            .read(imageUploadProvider.notifier)
                                            .setDropPosition(position);
                                      },
                                      feedback: SizedBox(
                                        height: 100,
                                        width: 100,
                                        child: Image.file(
                                            File(uploadProvider.path)),
                                      ),
                                      child: SizedBox(
                                          height: 100,
                                          width: 100,
                                          child: Image.file(
                                            File(uploadProvider.path),
                                          )),
                                    ),
                                  ),
                                ],

                                if (textProvider.text.isNotEmpty) ...[
                                  // draggable text
                                  Positioned(
                                    left: ref
                                        .read(textPositionProvider.notifier)
                                        .position
                                        .dx,
                                    top: ref
                                        .read(textPositionProvider.notifier)
                                        .position
                                        .dy,
                                    child: Draggable(
                                      onDragEnd: (details) {
                                        RenderBox? renderBox = context
                                            .findRenderObject() as RenderBox;

                                        final position = renderBox
                                            .globalToLocal(details.offset);

                                        ref
                                            .read(textPositionProvider.notifier)
                                            .setDropPosition(position);
                                      },
                                      feedback: Text(
                                        textProvider.text,
                                        style: TextStyle(
                                            fontSize: 24, color: Colors.red),
                                      ),
                                      child: Text(
                                        textProvider.text,
                                        style: TextStyle(
                                            fontSize: 24, color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ],
                              ],
                            ),
                          );
                        },
                        onWillAccept: (data) {
                          ref.read(imageUploadProvider.notifier).onAccept(true);

                          return true;
                        },
                      ),
                    )),
                const SizedBox(
                  height: 20,
                ),
                const Flexible(flex: 1, child: ActionWidget())
              ],
            )),
      ),
    );
  }
}
