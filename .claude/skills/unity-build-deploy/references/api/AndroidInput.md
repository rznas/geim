<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AndroidInput.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

AndroidInput provides support for off-screen touch input, such as a touchpad.

### Static Properties

| Property | Description |
| --- | --- |
| secondaryTouchEnabled | Property indicating whether the system provides secondary touch input. |
| secondaryTouchHeight | Property indicating the height of the secondary touchpad. |
| secondaryTouchWidth | Property indicating the width of the secondary touchpad. |
| touchCountSecondary | Number of secondary touches. Guaranteed not to change throughout the frame. (Read Only). |

### Static Methods

| Method | Description |
| --- | --- |
| GetSecondaryTouch | Returns object representing status of a specific touch on a secondary touchpad (Does not allocate temporary variables). |
