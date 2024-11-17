
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/cubit/image_cubit.dart';

class ImagePickerPage extends StatelessWidget {
  const ImagePickerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Picker App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BlocBuilder<ImageCubit, ImageState>(
              builder: (context, state) {
                if (state is ImageLoadedState) {
                  return Image.file(File(state.imagePath), height: 400,);
                }
                return const Text('No image selected');
              },
            ),
            ElevatedButton(
              onPressed: () {
                context.read<ImageCubit>().pickImage();
              },
              child: const Text('Pick an Image from Gallery'),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<ImageCubit>().clearImage();
              },
              child: const Text('Clear Image'),
            ),
          ],
        ),
      ),
    );
  }
}