import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'sound_model.dart';
export 'sound_model.dart';

class SoundWidget extends StatefulWidget {
  const SoundWidget({super.key});

  @override
  State<SoundWidget> createState() => _SoundWidgetState();
}

class _SoundWidgetState extends State<SoundWidget> {
  late SoundModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SoundModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 342.0,
      height: 357.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Align(
        alignment: const AlignmentDirectional(0.0, 0.0),
        child: FlutterFlowAudioPlayer(
          audio: Audio.network(
            'https://filesamples.com/samples/audio/mp3/sample3.mp3',
            metas: Metas(
              id: 'sample3.mp3-eeb58457',
            ),
          ),
          titleTextStyle: FlutterFlowTheme.of(context).titleLarge,
          playbackDurationTextStyle: FlutterFlowTheme.of(context).labelMedium,
          fillColor: FlutterFlowTheme.of(context).secondaryBackground,
          playbackButtonColor: FlutterFlowTheme.of(context).primary,
          activeTrackColor: FlutterFlowTheme.of(context).alternate,
          elevation: 4.0,
          playInBackground: PlayInBackground.disabledRestoreOnForeground,
        ),
      ),
    );
  }
}
