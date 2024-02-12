import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class GroupMessageCard extends StatelessWidget {
  final int index;
  const GroupMessageCard({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          index % 2 == 0 ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        index % 2 == 0
            ? IconButton(onPressed: () {}, icon: Icon(Iconsax.message_edit))
            : SizedBox(),
        Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(index % 2 == 0 ? 16 : 0),
            bottomRight: Radius.circular(index % 2 == 0 ? 0 : 16),
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          )),
          color: index % 2 == 0
              ? Theme.of(context).colorScheme.background
              : Theme.of(context).colorScheme.primaryContainer,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.sizeOf(context).width / 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  index % 2 != 0 ? Text("Name") : SizedBox(),
                  SizedBox(
                    height: 4,
                  ),
                  Text("Messagejsdhkjhdks"),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      index % 2 == 0
                          ? Icon(
                              Iconsax.tick_circle,
                              color: Colors.blueAccent,
                              size: 18,
                            )
                          : SizedBox(),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        "06:16 pm",
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
