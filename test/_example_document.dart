import 'package:flutter/rendering.dart';
import 'package:super_editor/super_editor.dart';

Document createInitialDocument() {
  return MutableDocument(
    nodes: [
      ImageNode(
        id: "1",
        imageUrl: 'https://i.ibb.co/5nvRdx1/flutter-horizon.png',
        altText: "图片",
        metadata: const SingleColumnLayoutComponentStyles(
          width: double.infinity,
          padding: EdgeInsets.zero,
        ).toMetadata(),
      ),
      ParagraphNode(
        id: Editor.createNodeId(),
        text: AttributedText(
          'Welcome to Super Editor 💙 🚀',
        ),
        metadata: const {
          'blockType': header1Attribution,
        },
      ),
      ParagraphNode(
        id: Editor.createNodeId(),
        text: AttributedText(
          "Super Editor is a toolkit to help you build document editors, document layouts, text fields, and more.",
        ),
      ),
      HorizontalRuleNode(id: Editor.createNodeId()),
      ParagraphNode(
        id: Editor.createNodeId(),
        text: AttributedText(
          'Ready-made solutions 📦',
        ),
        metadata: const {
          'blockType': header2Attribution,
        },
      ),
      ListItemNode.unordered(
        id: Editor.createNodeId(),
        text: AttributedText(
          'SuperEditor is a ready-made, configurable document editing experience.',
        ),
      ),
      ListItemNode.unordered(
        id: Editor.createNodeId(),
        text: AttributedText(
          'SuperTextField is a ready-made, configurable text field.',
        ),
      ),
      ParagraphNode(
        id: Editor.createNodeId(),
        text: AttributedText(
          'Quickstart 🚀',
        ),
        metadata: const {
          'blockType': header2Attribution,
        },
      ),
      ParagraphNode(
        id: Editor.createNodeId(),
        text: AttributedText(
            'To get started with your own editing experience, take the following steps:'),
      ),
      TaskNode(
        id: Editor.createNodeId(),
        isComplete: false,
        text: AttributedText(
          'Create and configure your document, for example, by creating a new MutableDocument.',
        ),
      ),
      TaskNode(
        id: Editor.createNodeId(),
        isComplete: false,
        text: AttributedText(
          "If you want programmatic control over the user's selection and styles, create a DocumentComposer.",
        ),
      ),
      TaskNode(
        id: Editor.createNodeId(),
        isComplete: false,
        text: AttributedText(
          "Build a SuperEditor widget in your widget tree, configured with your Document and (optionally) your DocumentComposer.",
        ),
      ),
      ParagraphNode(
        id: Editor.createNodeId(),
        text: AttributedText(
          "Now, you're off to the races! SuperEditor renders your document, and lets you select, insert, and delete content.",
        ),
      ),
      ParagraphNode(
        id: Editor.createNodeId(),
        text: AttributedText(
          'Explore the toolkit 🔎',
        ),
        metadata: const {
          'blockType': header2Attribution,
        },
      ),
      ListItemNode.unordered(
        id: Editor.createNodeId(),
        text: AttributedText(
          "Use MutableDocument as an in-memory representation of a document.",
        ),
      ),
      ListItemNode.unordered(
        id: Editor.createNodeId(),
        text: AttributedText(
          "Implement your own document data store by implementing the Document api.",
        ),
      ),
      ParagraphNode(
        id: Editor.createNodeId(),
        text: AttributedText(
          "We hope you enjoy using Super Editor. Let us know what you're building, and please file issues for any bugs that you find.",
        ),
      ),
      ParagraphNode(
        id: Editor.createNodeId(),
        text: AttributedText(
            "加粗文本，斜体文本，删除文本,下划线文本..普通文本",
            AttributedSpans(attributions: const [
              SpanMarker(attribution: boldAttribution, offset: 0, markerType: SpanMarkerType.start),
              SpanMarker(attribution: boldAttribution, offset: 3, markerType: SpanMarkerType.end),
              SpanMarker(
                  attribution: italicsAttribution, offset: 5, markerType: SpanMarkerType.start),
              SpanMarker(
                  attribution: italicsAttribution, offset: 8, markerType: SpanMarkerType.end),
              SpanMarker(
                  attribution: strikethroughAttribution,
                  offset: 10,
                  markerType: SpanMarkerType.start),
              SpanMarker(
                  attribution: strikethroughAttribution,
                  offset: 13,
                  markerType: SpanMarkerType.end),
              SpanMarker(
                  attribution: underlineAttribution, offset: 14, markerType: SpanMarkerType.start),
              SpanMarker(
                  attribution: underlineAttribution, offset: 19, markerType: SpanMarkerType.end),
            ])),
      ),
      ParagraphNode(
        id: Editor.createNodeId(),
        metadata: const {'blockType': blockquoteAttribution},
        text: AttributedText(
            "加粗文本，斜体文本，删除文本,下划线文本.注释块类型",
            AttributedSpans(attributions: const [
              SpanMarker(attribution: boldAttribution, offset: 0, markerType: SpanMarkerType.start),
              SpanMarker(attribution: boldAttribution, offset: 3, markerType: SpanMarkerType.end),
              SpanMarker(
                  attribution: italicsAttribution, offset: 5, markerType: SpanMarkerType.start),
              SpanMarker(
                  attribution: italicsAttribution, offset: 8, markerType: SpanMarkerType.end),
              SpanMarker(
                  attribution: strikethroughAttribution,
                  offset: 10,
                  markerType: SpanMarkerType.start),
              SpanMarker(
                  attribution: strikethroughAttribution,
                  offset: 13,
                  markerType: SpanMarkerType.end),
              SpanMarker(
                  attribution: underlineAttribution, offset: 14, markerType: SpanMarkerType.start),
              SpanMarker(
                  attribution: underlineAttribution, offset: 19, markerType: SpanMarkerType.end),
            ])),
      ),
      ParagraphNode(
        id: Editor.createNodeId(),
        text: AttributedText(
            "Link Url",
            AttributedSpans(attributions: const [
              SpanMarker(
                  attribution: LinkAttribution("www.google.com"),
                  offset: 0,
                  markerType: SpanMarkerType.start),
              SpanMarker(
                  attribution: LinkAttribution("www.google.com"),
                  offset: 7,
                  markerType: SpanMarkerType.end),
            ])),
      )
    ],
  );
}
