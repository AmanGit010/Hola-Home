import 'package:flutter/cupertino.dart';
import '../../core/constants/colors.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({required this.image, required this.icon, Key? key})
      : super(key: key);
  final Image image;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      width: 125,
      decoration: const BoxDecoration(shape: BoxShape.circle),
      child: Column(
        children: [
          Stack(
            children: [
              image,
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.yellow,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      showCupertinoModalPopup(
                        context: context,
                        builder: (context) {
                          return CupertinoActionSheet(
                            title: const Text('Select Profile Picture'),
                            actions: [
                              CupertinoActionSheetAction(
                                onPressed: () {
                                  // Do something when the first option is pressed
                                  Navigator.pop(
                                      context); // Close the modal popup
                                },
                                child: const Text('Open Photos'),
                              ),
                              CupertinoActionSheetAction(
                                onPressed: () {
                                  // Do something when the second option is pressed
                                  Navigator.pop(
                                      context); // Close the modal popup
                                },
                                child: const Text('Take Picture'),
                              ),
                            ],
                            cancelButton: CupertinoActionSheetAction(
                              onPressed: () {
                                Navigator.pop(context); // Close the modal popup
                              },
                              child: const Text('Cancel'),
                            ),
                          );
                        },
                      );
                    },
                    child: icon,
                    // const Icon(
                    //   Icons.add,
                    //   color: AppColors
                    //       .white, // Change the plus sign color if needed
                    //   size: 24,
                    //   // Adjust the size as per your requirement
                    // ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
