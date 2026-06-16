<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UnityEngine.IMGUIModule.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The IMGUI module provides Unity's immediate mode GUI solution for creating in-game and editor user interfaces.

Additional resources: GUI tutorial.

### Classes

| Class | Description |
| --- | --- |
| Event | A UnityGUI event. |
| ExitGUIException | An exception that will prevent all subsequent immediate mode GUI functions from evaluating for the remainder of the GUI loop. |
| GUI | The GUI class is the interface for Unity's GUI with manual positioning. |
| GUIContent | The contents of a GUI element. |
| GUILayout | The GUILayout class is the interface for Unity gui with automatic layout. Unlike the standard GUI class which requires manual coordinates, GUILayout arranges controls based on their content and container. |
| GUILayoutOption | Class internally used to pass layout options into GUILayout functions. You don't use these directly, but construct them with the layouting functions in the GUILayout class. |
| GUILayoutUtility | Utility functions for implementing and extending the GUILayout class. |
| GUISettings | General settings for how the GUI behaves. |
| GUISkin | Defines how GUI looks and behaves. |
| GUIStyle | Styling information for GUI elements. |
| GUIStyleState | Specialized values for the given states used by GUIStyle objects. |
| GUITargetAttribute | Allows to control for which display the OnGUI is called. |
| GUIUtility | Utility class for making new GUI controls. |

### Enumerations

| Enumeration | Description |
| --- | --- |
| EventType | Types of UnityGUI input and processing events. |
| FocusType | Used by GUIUtility.GetControlID to inform the IMGUI system if a given control can get keyboard focus. This allows the IMGUI system to give focus appropriately when a user presses tab for cycling between controls. |
| ImagePosition | How image and text is placed inside GUIStyle. |
| PointerType | Pointer types. |
| ScaleMode | Scaling mode to draw textures with. |
| TextClipping | Different methods for how the GUI system handles text being too large to fit the rectangle allocated. |
