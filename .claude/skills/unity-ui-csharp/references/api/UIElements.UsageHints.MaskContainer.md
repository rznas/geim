<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.UsageHints.MaskContainer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Optimizes rendering of a VisualElement that has multiple descendants with nested masks.

This option reduces stencil state changes and capitalizes on consecutive mask push/pop operations for efficiency.
 
 Apply this option to a VisualElement with multiple nested masks among its descendants. For example, a child element has the `overflow: hidden;` style with rounded corners or SVG background.
 
 The following illustration shows the number of batches in a single-level masking, a nested masking, and a nested masking with MaskContainer. The yellow color indicates the masking elements. The orange color indicates the masking element with MaskContainer applied. The numbers indicate the number of batches.
 
 
 A: Single-level masking (1 batch)
 B: Nested masking (5 batches)
 C: Nested masking with MaskContainer (2 batches)
 
 **Note**: Don't use GroupTransform in scenarios with many subtrees, where each subtree uses two or more levels of masking. This helps minimize consecutive push/push or pop/pop operations.
