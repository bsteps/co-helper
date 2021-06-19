import 'package:flutter/material.dart';

class CustomMultiListClipSelector extends StatelessWidget {
  final Map<String, List<ClipData>> data;

  const CustomMultiListClipSelector({
    Key? key,
    this.data = const {},
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...data.entries
            .map((data) {
              return [
                Text(
                  data.key,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
                Wrap(
                  children: data.value
                      .map((clipData) => [
                            FilterChip(
                              label: Text(clipData.title),
                              shape: StadiumBorder(
                                side: BorderSide(
                                  color: Colors.grey.withOpacity(0.5),
                                ),
                              ),
                              backgroundColor: Colors.white,
                              onSelected: clipData.onSelected,
                              selected: clipData.selected,
                            ),
                            SizedBox(
                              width: 16,
                            ),
                          ])
                      .toList()
                      .reduce((value, element) => value..addAll(element)),
                ),
                SizedBox(
                  height: 16,
                ),
              ];
            })
            .toList()
            .reduce((value, element) => value..addAll(element)),
      ],
    );
  }
}

class ClipData {
  final String title;
  final void Function(bool)? onSelected;
  final bool selected;

  ClipData({
    required this.title,
    this.onSelected,
    this.selected = false,
  });
}
