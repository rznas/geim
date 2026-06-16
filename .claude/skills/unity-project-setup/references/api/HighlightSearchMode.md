<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HighlightSearchMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Used to specify how to find a given element in the editor to highlight.

Let's consider various approaches to highlighting the Scale control in the Transform component.

Using the HighlightSearchMode.PrefixLabel mode you can specify the label text "Scale" as the identifier to highlight the entire Scale control with both label and all three number fields included. This mode can't be used if you want to only highlight the X component of the Scale control. Since the label text of the X component is simply "X", you would get the X component of the Position control instead if you attempted that. The HighlightSearchMode.PrefixLabel mode works for any control that uses EditorGUI.PrefixLabel or EditorGUI.HandlePrefixLabel.

If you use the HighlightSearchMode.Content mode to search for the text "Scale", only the label itself will be highlighted. This mode can highlight what corresponds to a single GUIStyle.Draw call and hence cannot highlight composite controls. It is particularly useful for highlighting buttons.

The HighlightSearchMode.Identifier mode searches for rects explicitly marked to be highlightable using the Highlighter.HighlightIdentifier function. This is for example done for all controls that uses the SerializedProperty system, using the SerializedProperty.propertyPath as the identifier. This means you could use this mode to highlight the X component of the Scale control by searching for "m_LocalScale.x".

The HighlightSearchMode.Auto mode searches using all the above modes and can be used in most cases. Searching for "Scale" using this mode will highlight the entire Scale control rather than just the label, since the PrefixLabel handling is hit before the GUIStyle.Draw call of the label.

Additional resources: Highlighter.

### Properties

| Property | Description |
| --- | --- |
| None | Highlights nothing. |
| Auto | Highlights the first element found using any of the search modes. |
| Identifier | Highlights an element with a given identifier text. |
| PrefixLabel | Highlights an entire editor control using its label text as identifier. |
| Content | Highlights an element containing text using the text as identifier. |
