<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.VisualElement-resolvedStyle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The final rendered style values of a visual element, as it's rendered in the current frame.(Read Only)

Use `resolvedStyle` to find the actual rendered styling of a VisualElement in the current frame, such as style values for width, height, and colors. You can get the resolved style value of an element to make layout decisions, troubleshoot styling issues, or ensure visual consistency across different platforms. 

 The final rendered style is computed from applied classes, inherited styles from ancestors, and inline styles defined in UXML or C# code. Therefore, the resolved style might be different from what you set through the VisualElement.style property, depending on the other styles applied to the element. 

 To get the resolved style when the geometry changes, register a callback to the GeometryChangedEvent event. If the element's geometry remains unchanged, consider adding a scheduler to periodically check the element's resolved style. You can also poll the value during the MonoBehaviour.LateUpdate phase at runtime if you have access to MonoBehaviours. 

 For a list of all the style properties supported by UI Toolkit, refer to USS properties reference. 

 For more information about how to use this property and an example of how style changes when layout updates, refer to Apply styles in C# scripts. 

 Additional resources: VisualElement.style, VisualElement.customStyle

```csharp
// Get the resolved width of the element.
 float width = element.resolvedStyle.width;
```
