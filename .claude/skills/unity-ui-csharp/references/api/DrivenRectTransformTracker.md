<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/DrivenRectTransformTracker.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A component can be designed to drive a RectTransform. The DrivenRectTransformTracker struct is used to specify which RectTransforms it is driving.

Driving a RectTransform means that the values of the driven RectTransform are controlled by that component. These driven values cannot be edited in the Inspector (they are shown as disabled). They also won't be saved when saving a Scene, which prevents undesired Scene file changes.

Whenever the component is changing values of driven RectTransforms, it should first call the Clear method and then use the Add method to add all RectTransforms it is driving. The Clear method should also be called in the OnDisable callback of the component.

### Public Methods

| Method | Description |
| --- | --- |
| Add | Add a RectTransform to be driven. |
| Clear | Clear the list of RectTransforms being driven. |

### Static Methods

| Method | Description |
| --- | --- |
| StartRecordingUndo | Resume recording undo of driven RectTransforms. |
| StopRecordingUndo | Stop recording undo actions from driven RectTransforms. |
