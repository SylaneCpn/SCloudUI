import 'package:flutter/material.dart';
import 'package:scloud_ui/data_structures/appstate.dart';
import 'package:scloud_ui/data_structures/server_files.dart';

class CustomAvatar extends StatefulWidget {
  final AppState state;
  const CustomAvatar({super.key, required this.state});

  @override
  State<CustomAvatar> createState() => _CustomAvatarState();
}

class _CustomAvatarState extends State<CustomAvatar> {
  late Future<List<ServerFile>> userRootFiles;

  String withoutExt(String name) {
    final pos = name.lastIndexOf('.');
    return name.substring(0, pos);
  }

  String? findAvatarPic(List<ServerFile> content) {
    return content
        .where(
          (e) =>
              withoutExt(e.name).endsWith('portrait') &&
              e.content_type == 'image',
        )
        .firstOrNull
        ?.full_path;
  }

  @override
  void initState() {
    super.initState();
    userRootFiles = widget.state.getFilesInRoot();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ServerFile>>(
      future: userRootFiles,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final avatarPath = findAvatarPic(snapshot.data!);
          return avatarPath != null
              ? CircleAvatar(
                maxRadius: 80,
                backgroundImage: NetworkImage(
                  widget.state.parseGetExtPath(avatarPath),
                ),
              )
              : CircleAvatar(maxRadius: 80.0, backgroundImage: AssetImage('assets/icon/icon_black_and_white.png'));
        } else if (snapshot.hasError) {
          return CircleAvatar(maxRadius: 80.0, backgroundImage: AssetImage('assets/icon/icon_black_and_white.png'));
        }

        // By default, show a loading spinner.
        return const CircularProgressIndicator();
      },
    );
  }
}
