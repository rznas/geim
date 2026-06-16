<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.AlignmentUtils.RoundToPanelPixelSize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Round the value so that it is a whole number of pixels on the target when rendered.

It will only work on visualElements inside a panel.

 Is is used to get dimensions repesenting whole pixels used for layout values, translations or in the generation of the visual Content. It does not consider the transform of the element and its ancestors. 

 This method uses the scaling from [see cref="VisualElement.scaledPixelsPerPoint"/> and uses the same rounding thresholds as the layout engine.
