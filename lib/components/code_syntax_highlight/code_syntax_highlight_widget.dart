import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'code_syntax_highlight_model.dart';
export 'code_syntax_highlight_model.dart';

class CodeSyntaxHighlightWidget extends StatefulWidget {
  const CodeSyntaxHighlightWidget({
    super.key,
    String? code,
    this.lang,
    int? width,
    int? height,
  })  : code = code ?? 'code',
        width = width ?? 800,
        height = height ?? 800;

  final String code;
  final String? lang;
  final int width;
  final int height;

  @override
  State<CodeSyntaxHighlightWidget> createState() =>
      _CodeSyntaxHighlightWidgetState();
}

class _CodeSyntaxHighlightWidgetState extends State<CodeSyntaxHighlightWidget> {
  late CodeSyntaxHighlightModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CodeSyntaxHighlightModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width.toDouble(),
      height: widget.height.toDouble(),
      child: Stack(
        children: [
          Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondary,
              ),
              child: custom_widgets.DahobiCodeHighlight(
                width: 800.0,
                height: 800.0,
                code: valueOrDefault<String>(
                  widget.code,
                  '\'{  \"detail\": [    {      \"type\": \"string_too_short\",      \"loc\": [        \"body\",        \"username\"      ],      \"msg\": \"String should have at least 1 character\",      \"input\": \"\",      \"ctx\": {        \"min_length\": 1      },      \"url\": \"https://errors.pydantic.dev/2.6/v/string_too_short\"    },    {      \"type\": \"string_too_short\",      \"loc\": [        \"body\",        \"password1\"      ],      \"msg\": \"String should have at least 1 character\",      \"input\": \"\",      \"ctx\": {        \"min_length\": 1      },      \"url\": \"https://errors.pydantic.dev/2.6/v/string_too_short\"    },    {      \"type\": \"string_too_short\",      \"loc\": [        \"body\",        \"password2\"      ],      \"msg\": \"String should have at least 1 character\",      \"input\": \"\",      \"ctx\": {        \"min_length\": 1      },      \"url\": \"https://errors.pydantic.dev/2.6/v/string_too_short\"    }  ]}\'',
                ),
                lang: valueOrDefault<String>(
                  widget.lang,
                  'javascript',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
