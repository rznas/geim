<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Highlighter.Highlight.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| windowTitle | The title of the window the element is inside. |
| text | The text to identify the element with. |
| mode | Optional mode to specify how to search for the element. |

### Returns

**bool** `true` if the requested element was found; otherwise `false`.

### Description

Highlights an element in the editor.

This function will highlight the specified element in the specified window. If the element could not be found, the function returns false. If the element is inside a scrollview and is not currently visible, the scrollview will first automatically scroll to reveal the element and then highlight it.

Once the element is highlighted it will stay highlighted until either the Highlighter.Stop function is called, or the element disappears from view. The element could disappear from view if the user scrolls away from it, the window is closed, the section of the GUI with the element in it is collapsed or otherwise hidden, or when starting or stopping Play Mode.

Most EditorGUI controls can be highlighted using their label as identifier.

Any control that uses the SerializedProperty system can be highlighted using its SerializedProperty.propertyPath.

Any element with text in it can be highlighted using that text as identifier, which is for example useful for buttons.

See the HighlightSearchMode enum for more details on identifying elements.

Additional resources: Highlighter.Stop, Highlighter.HighlightIdentifier.
