import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import 'package:pentarex/provider/image_provider.dart';
import 'package:pentarex/provider/save_and_share_provider.dart';
import 'package:pentarex/provider/text_provider.dart';
import 'package:pentarex/view/detail_view.dart';
import 'package:social_share/social_share.dart';

class ActionWidget extends ConsumerWidget {
  const ActionWidget({Key? key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSaving = ref.watch(saveAndShareNotifierProvider);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (isSaving.isSaving) ...[
          Column(
            children: [
              Text('Simpan'),
              // add logo button
              IconButton(
                  onPressed: () async {
                    ref
                        .read(saveAndShareNotifierProvider.notifier)
                        .capturePng(globalKey);
                  },
                  icon: Icon(Icons.save))
            ],
          ),
          Column(
            children: [
              Text('Share'),
              // add logo button
              IconButton(
                  onPressed: () {
                    // show dialog
                    //with hashtags and link
                    SocialShare.shareOptions(
                      "Check out this meme",
                      imagePath: ref
                          .read(saveAndShareNotifierProvider.notifier)
                          .imagePath,
                    );
                  },
                  icon: Icon(Icons.share))
            ],
          )
        ] else ...[
          Column(
            children: [
              Text('Add Logo'),
              // add logo button
              IconButton(
                  onPressed: () async {
                    XFile? file = await ImagePicker()
                        .pickImage(source: ImageSource.gallery);

                    if (file != null)
                      ref.read(imageUploadProvider.notifier).onImgPick(file);

                    ref
                        .read(imageUploadProvider.notifier)
                        .setDropPosition(Offset(0, 0));
                  },
                  icon: Icon(Icons.upload))
            ],
          ),
          Column(
            children: [
              Text('Add Text'),
              // add logo button
              IconButton(
                  onPressed: () {
                    // show dialog

                    ref.read(showTextPick(
                      context,
                    ));

                    ref
                        .read(textPositionProvider.notifier)
                        .setDropPosition(Offset(0, 0));
                  },
                  icon: Icon(Icons.text_fields))
            ],
          )
        ]
      ],
    );
  }
}
