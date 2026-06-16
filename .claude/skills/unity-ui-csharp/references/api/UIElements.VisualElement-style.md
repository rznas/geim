<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.VisualElement-style.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets the style values on a VisualElement.

The returned style data, computed from USS files or inline styles written to this object in C#, doesn't represent the fully resolved styles, such as the final height and width of a VisualElement. To access these fully resolved styles, use resolvedStyle. 

 For information about how to use this property and all the supported USS properties, refer to the Apply styles in C# scripts and USS properties reference manual pages. 

 Additional resources: VisualElement.resolvedStyle, VisualElement.customStyle, StyleSheet

```csharp
// Set the background color of the element to red.
 element.style.backgroundColor = Color.red;
```
