import 'dart:convert';
import 'package:alice/model/alice_log.dart';
import 'package:alice/utils/alice_scroll_behavior.dart';
import 'package:alice/utils/alice_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AliceLogListWidget extends StatefulWidget {
  const AliceLogListWidget({
    required this.logsListenable,
    required this.scrollController,
    required this.emptyWidget,
    super.key,
  });

  final ValueListenable<List<AliceLog>> logsListenable;
  final ScrollController? scrollController;
  final Widget emptyWidget;

  @override
  State<AliceLogListWidget> createState() => _AliceLogListWidgetState();
}

class _AliceLogListWidgetState extends State<AliceLogListWidget> {
  final _minLevel = DiagnosticLevel.debug;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<AliceLog>>(
      valueListenable: widget.logsListenable,
      builder: (context, logs, _) {
        if (logs.isEmpty) {
          return widget.emptyWidget;
        }
        final filteredLogs =
            logs.where((it) => it.level.index >= _minLevel.index).toList();
        return ScrollConfiguration(
          behavior: AliceScrollBehavior(),
          child: ListView.builder(
            controller: widget.scrollController,
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(vertical: 8),
            itemCount: filteredLogs.length,
            itemBuilder: (context, i) => AliceLogEntryWidget(filteredLogs[i]),
          ),
        );
      },
    );
  }
}

class AliceLogEntryWidget extends StatelessWidget {
  AliceLogEntryWidget(this.log) : super(key: ValueKey(log));

  final AliceLog log;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final rawTimestamp = log.timestamp.toString();
    final timeStartIndex = rawTimestamp.indexOf(' ') + 1;
    final formattedTimestamp = rawTimestamp.substring(timeStartIndex);

    final color = _getTextColor(context);
    final content = Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: formattedTimestamp,
            style: textTheme.bodySmall!.copyWith(
              color: color.withValues(alpha: 0.6),
              fontFeatures: [const FontFeature.tabularFigures()],
            ),
          ),
          TextSpan(text: ' ${log.message}'),
          ..._toText(context, 'Error', log.error),
          ..._toText(
            context,
            'Stack Trace',
            log.stackTrace,
            addLineBreakAfterTitle: true,
          ),
        ],
        style: TextStyle(color: color),
      ),
    );

    return InkWell(
      onLongPress: () => _copyToClipboard(context),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              _getLogIcon(log.level),
              size: 16,
              color: color,
            ),
            const SizedBox(width: 4),
            Expanded(child: content),
          ],
        ),
      ),
    );
  }

  List<InlineSpan> _toText(
    BuildContext context,
    String title,
    dynamic object, {
    bool addLineBreakAfterTitle = false,
  }) {
    final string = _stringify(object);
    if (string == null) return [];

    return [
      TextSpan(
        text: '\n$title:${addLineBreakAfterTitle ? '\n' : ' '}',
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(text: string),
    ];
  }

  Color _getTextColor(BuildContext context) {
    return AliceTheme.getTextColor(context, log.level);
  }

  IconData _getLogIcon(DiagnosticLevel level) {
    switch (level) {
      case DiagnosticLevel.hidden:
        return Icons.all_inclusive_outlined;
      case DiagnosticLevel.fine:
        return Icons.bubble_chart_outlined;
      case DiagnosticLevel.debug:
        return Icons.bug_report_outlined;
      case DiagnosticLevel.info:
        return Icons.info_outline;
      case DiagnosticLevel.warning:
        return Icons.warning_outlined;
      case DiagnosticLevel.hint:
        return Icons.privacy_tip_outlined;
      case DiagnosticLevel.summary:
        return Icons.subject;
      case DiagnosticLevel.error:
        return Icons.error_outlined;
      case DiagnosticLevel.off:
        return Icons.not_interested_outlined;
    }
  }

  Future<void> _copyToClipboard(BuildContext context) async {
    final error = _stringify(log.error);
    final stackTrace = _stringify(log.stackTrace);
    final text = [
      '${log.timestamp}: ${log.message}',
      if (error != null) 'Error: $error',
      if (stackTrace != null) 'Stack Trace: $stackTrace',
    ].join('\n');
    await Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text('Copied!')));
  }

  String? _stringify(dynamic object) {
    if (object == null) return null;
    if (object is String) return object.trim();
    if (object is DiagnosticsNode) return object.toStringDeep();

    try {
      // ignore: avoid_dynamic_calls
      object.toJson();
      // It supports `toJson()`.

      dynamic toEncodable(dynamic object) {
        try {
          // ignore: avoid_dynamic_calls
          return object.toJson();
        } catch (_) {
          try {
            return '$object';
          } catch (_) {
            return describeIdentity(object);
          }
        }
      }

      return JsonEncoder.withIndent('  ', toEncodable).convert(object);
    } catch (_) {}

    try {
      return '$object'.trim();
    } catch (_) {
      return describeIdentity(object);
    }
  }
}
