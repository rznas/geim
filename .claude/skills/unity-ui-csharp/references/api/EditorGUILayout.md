<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUILayout.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Auto laid out version of EditorGUI.

This class contains much of the same functionality as EditorGUI, with the added benefit that the layout is done automatically. This is useful for arranging buttons and other GUI elements when you are not worried about the exact pixel positions of each element and are only interested in the relative placement of your elements.

 EditorGUILayout has two main kinds of methods: Methods to define an area, and methods to create GUI elements. If an element is defined outside an area, by default it will be vertically aligned.

 Methods for defining areas will often be split into a method starting with the word "Begin" and a starting with the word "End". For example, EditorGUILayout.BeginHorizontal and EditorGUILayout.EndHorizontal. Any EditorGUI or EditorGUILayout code that goes in between a "Begin" method and an "End" method will be placed next to each other in your GUI according to which area method you used. For example, all elements placed after a EditorGUILayout.BeginHorizontal call will be aligned horizontally next to one another in your GUI. It is possible to have an area within an area, but note that you have to have a corresponding End call for every Begin call or else you will run into errors.

 One way in which EditorGUILayout differs from GUILayout is while GUILayout.BeginHorizontal and other similar methods have no return type, EditorGUILayout returns the Rect created by the area. This Rect can then be passed to non EditorGUILayout methods to include them within the area demarcated by EditorGUILayout methods.

 Based on which of the "Begin" methods you use, the return type and the exact method of using it will vary somewhat. Whenever possible, check the documentation for each method you use to ensure you use it correctly.

 Once you've defined an area within your code, you can populate your GUI with fields that will comprise the elements that can be seen or interacted with by your users. Some examples of methods used to create fields are EditorGUILayout.LabelField, EditorGUILayout.PasswordField, and EditorGUILayout.Toggle.

 EditorGUILayout methods are used along with GUILayout and EditorGUI methods to create a fully functioning GUI. Some methods are only present in one of these APIs, so it's good to check between all of them if you can't find a specific element you'd like to use. For example, to create a button, you'll want to use GUILayout.Button.

```csharp
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;public class EditorGUILayoutExample : EditorWindow
{
    Vector2 scrollPos;
    string t = "This is a label inside a Scroll view!";    [MenuItem("Examples/EditorGUILayout Example")]
    static void Init()
    {
        EditorGUILayoutExample window = (EditorGUILayoutExample)EditorWindow.GetWindow(typeof(EditorGUILayoutExample), true, "My Empty Window");
        window.Show();
    }    void OnGUI()
    {
        // Creates a horizontally laid out group
        EditorGUILayout.BeginHorizontal();        // Creates a ScrollView within that group
        scrollPos =
            EditorGUILayout.BeginScrollView(scrollPos, GUILayout.Width(100), GUILayout.Height(100));        // Creates a label element within the ScrollView
        GUILayout.Label(t);        // Ends the ScrollView
        EditorGUILayout.EndScrollView();        // Places a button within the Horizontal area, but outside the ScrollView
        if (GUILayout.Button("Add More Text", GUILayout.Width(100), GUILayout.Height(100)))
            t += " \nAnd this is more text!";        // Ends the Horizontal area
        EditorGUILayout.EndHorizontal();        // Places a button outside the Horizontal area
        if (GUILayout.Button("Clear"))
            t = "";
    }
}
```

### Static Methods

| Method | Description |
| --- | --- |
| BeginBuildTargetSelectionGrouping | Begin a build target grouping and get the selected BuildTargetGroup back. |
| BeginFadeGroup | Begins a group that can be be hidden/shown and the transition will be animated. |
| BeginFoldoutHeaderGroup | Make a label with a foldout arrow to the left of it. |
| BeginHorizontal | Begin a horizontal group and get its rect back. |
| BeginScrollView | Begin an automatically laid out scrollview. |
| BeginToggleGroup | Begin a vertical group with a toggle to enable or disable all the controls within at once. |
| BeginVertical | Begin a vertical group and get its rect back. |
| BoundsField | Make Center & Extents field for entering a Bounds. |
| BoundsIntField | Make Position & Size field for entering a BoundsInt. |
| ColorField | Make a field for selecting a Color. |
| CurveField | Make a field for editing an AnimationCurve. |
| DelayedDoubleField | Make a delayed text field for entering doubles. |
| DelayedFloatField | Make a delayed text field for entering floats. |
| DelayedIntField | Make a delayed text field for entering integers. |
| DelayedTextField | Make a delayed text field. |
| DoubleField | Make a text field for entering double values. |
| DropdownButton | Make a button that reacts to mouse down, for displaying your own dropdown content. |
| EditorToolbar | Makes a toolbar populated with the specified collection of editor tools. |
| EditorToolbarForTarget | Makes a toolbar populated with the collection of editor tools that match the EditorToolAttribute of the target object. |
| EndBuildTargetSelectionGrouping | Close a group started with BeginBuildTargetSelectionGrouping. |
| EndFadeGroup | Closes a group started with BeginFadeGroup. |
| EndFoldoutHeaderGroup | Closes a group started with BeginFoldoutHeaderGroup. |
| EndHorizontal | Close a group started with BeginHorizontal. |
| EndScrollView | Ends a scrollview started with a call to BeginScrollView. |
| EndToggleGroup | Close a group started with BeginToggleGroup. |
| EndVertical | Close a group started with BeginVertical. |
| EnumFlagsField | Displays a menu with an option for every value of the enum type when clicked. |
| EnumPopup | Make an enum popup selection field. |
| FloatField | Make a text field for entering float values. |
| Foldout | Make a label with a foldout arrow to the left of it. |
| GetControlRect | Get a rect for an Editor control. |
| GradientField | Make a field for editing a Gradient. |
| HelpBox | Make a help box with a message to the user. |
| InspectorTitlebar | Make an inspector-window-like titlebar. |
| IntField | Make a text field for entering integers. |
| IntPopup | Make an integer popup selection field. |
| IntSlider | Make a slider the user can drag to change an integer value between a min and a max. |
| LabelField | Make a label field. (Useful for showing read-only info.) |
| LayerField | Make a layer selection field. |
| LinkButton | Make a clickable link label. |
| LongField | Make a text field for entering long integers. |
| MaskField | Make a field for masks. |
| MinMaxSlider | Make a special slider the user can use to specify a range between a min and a max. |
| ObjectField | Make a field to receive any object type. |
| PasswordField | Make a text field where the user can enter a password. |
| Popup | Make a generic popup selection field. |
| PrefixLabel | Make a label in front of some control. |
| PropertyField | Make a field for SerializedProperty. |
| RectField | Make an X, Y, W & H field for entering a Rect. |
| RectIntField | Make an X, Y, W & H field for entering a RectInt. |
| RenderingLayerMaskField | Makes a layer selection field. |
| SelectableLabel | Make a selectable label field. (Useful for showing read-only info that can be copy-pasted.) |
| Slider | Make a slider the user can drag to change a value between a min and a max. |
| Space | Make a small space between the previous control and the following. |
| TagField | Make a tag selection field. |
| TextArea | Make a text area. |
| TextField | Make a text field. |
| Toggle | Make a toggle. |
| ToggleLeft | Make a toggle field where the toggle is to the left and the label immediately to the right of it. |
| ToolContextToolbar | Makes a toolbar populated with the specified collection of editor tool contexts. |
| ToolContextToolbarForTarget | Makes a toolbar populated with the collection of EditorToolContext that match the EditorToolContextAttribute.targetType of the target object. |
| Vector2Field | Make an X & Y field for entering a Vector2. |
| Vector2IntField | Make an X & Y integer field for entering a Vector2Int. |
| Vector3Field | Make an X, Y & Z field for entering a Vector3. |
| Vector3IntField | Make an X, Y & Z integer field for entering a Vector3Int. |
| Vector4Field | Make an X, Y, Z & W field for entering a Vector4. |
