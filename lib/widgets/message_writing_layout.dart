import 'package:flutter/material.dart';
import 'package:profile/core/components/exporting_packages.dart';
import 'package:profile/provider/message_provider.dart';

class MessageWritingLayout extends StatelessWidget {
  const MessageWritingLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MessageProvider provider = context.watch();
    return ListenableProvider(
      create: (context) => MessageProvider(),
      child: Container(
        padding: MyEdgeInsets.symmetric(v: 16.0, h: 12.0),
        constraints: BoxConstraints(maxHeight: getHeight(79.0)),
        alignment: Alignment.bottomCenter,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomIconButton(onPressed: () {}, assetIcon: AssetIcon.emoticon),
            _buildSizedBox(),
            Expanded(
              child: CustomInput(controller: provider.messageController),
            ),
            _buildSizedBox(),
            FloatingActionButton(
              onPressed: provider.sendMessage,
              mini: true,
              elevation: 0.0,
              backgroundColor: ConstColor.text,
              child: const Icon(Icons.arrow_upward),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox _buildSizedBox() => SizedBox(width: getWidth(12.0));
}
