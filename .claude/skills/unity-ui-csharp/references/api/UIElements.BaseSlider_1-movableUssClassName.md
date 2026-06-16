<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.BaseSlider_1-movableUssClassName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

USS class name on the dragger that indicates it is currently controlled by NavigationMoveEvent. When the slider detects move events aligned with the slider's direction, it adjusts the slider's value. If it detects a navigation submit event, it removes the style, causing all navigation events to revert to their default behavior. A second navigation submit event re-applies the style to the dragger and restores the previous customized behavior.
