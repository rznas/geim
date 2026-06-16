<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.UsageHints.GroupTransform.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Optimizes rendering of a VisualElement that changes its transformation and position frequently, and has many descendants that have their hints set to DynamicTransform.

This option is similar to DynamicTransform in that it allows GPU transformation of the vertices of the descendants. However it breaks the batch, and adds an extra draw call. The purpose of this hint is to avoid having to update the stored matrix of many elements that have DynamicTransform set when a common ancestor changes its transformation or position. In other words, this is an optimisation for DynamicTransform.
 
 An example use case is that in Shader Graph, you can set individual nodes with DynamicTransform, and set the ancestor panner/zoomer with `GroupTransform`, so that when you pan/zoom, you avoid the need to update hundreds of dynamic transforms.
 
 **Note**: Don't use both DynamicTransform and GroupTransform at the same time on a single VisualElement.
