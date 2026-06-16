<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUI.ScrollViewScope-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Rectangle on the screen to use for the ScrollView. |
| scrollPosition | The pixel distance that the view is scrolled in the X and Y directions. |
| viewRect | The rectangle used inside the scrollview. |
| alwaysShowHorizontal | Optional parameter to always show the horizontal scrollbar. If false or left out, it is only shown when `clientRect` is wider than `position`. |
| alwaysShowVertical | Optional parameter to always show the vertical scrollbar. If false or left out, it is only shown when `clientRect` is taller than `position`. |
| horizontalScrollbar | Optional GUIStyle to use for the horizontal scrollbar. If left out, the `horizontalScrollbar` style from the current GUISkin is used. |
| verticalScrollbar | Optional GUIStyle to use for the vertical scrollbar. If left out, the `verticalScrollbar` style from the current GUISkin is used. |

### Description

Create a new ScrollViewScope and begin the corresponding ScrollView.
