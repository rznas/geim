<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.UQueryBuilder_1.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Utility Object that constructs a set of selection rules to be run on a root visual element.

A generic class that allows you to build queries for UI elements of type T. You can refine queries using selectors like name, class, and other conditions. It enables you to search for elements and execute the query on any VisualElement, making it easier to navigate and filter the VisualElement tree in large UIs, by type, name, class, and hierarchy conditions.

 For more information, refer to the UQuery manual page. 

The following example demonstrates how to use UQueryBuilder to find certain elements in a UI hierarchy and iterate over them:

```csharp
using UnityEngine;
using UnityEngine.UIElements;public class UQueryBuilderExample : MonoBehaviour
{
    public UIDocument uiDocument;    private void OnEnable()
    {
        // Get the root visual element
        var root = uiDocument.rootVisualElement;        // Example query: Find all buttons with a specific class name
        var buttonQuery = new UQueryBuilder<Button>(root)
            .Class("my-button-class")
            .Build();        // Iterate over those buttons and add click handlers
        buttonQuery.ForEach(button => button.clicked += () => OnButtonClick(button));        // Another query: Find all labels that are descendants of elements with the class "container"
        var labelQuery = new UQueryBuilder<Label>(root)
            .Descendents<VisualElement>("container")
            .Build();        // Change the text color of each label found
        labelQuery.ForEach(label => label.style.color = Color.green);
    }    private void OnButtonClick(Button button)
    {
        Debug.Log($"Button with name {button.name} clicked.");
    }
}
```

### Constructors

| Constructor | Description |
| --- | --- |
| UQueryBuilder_1 | Initializes a QueryBuilder. |

### Public Methods

| Method | Description |
| --- | --- |
| Active | Selects all elements that are active. |
| AtIndex | Convenience overload, shorthand for Build().AtIndex(). |
| Build | Compiles the selection rules into a UQueryState<T0> object. |
| Checked | Selects all elements that are checked. |
| Children | Selects all direct child elements of elements matching the previous rules. |
| Class | Selects all elements with the specified class in the class list, as specified with the class attribute in a UXML file or added with VisualElement.AddToClassList method. |
| Descendents | Selects all elements, recursively, that are descendants of currently matching ancestors. |
| Enabled | Selects all elements that are enabled. |
| First | Convenience overload, shorthand for Build().First(). |
| Focused | Selects all elements that are focused. |
| ForEach | Convenience overload, shorthand for Build().ForEach(). |
| Hovered | Selects all elements that are hovered. |
| Last | Convenience overload, shorthand for Build().Last(). |
| Name | Selects element with this name. |
| NotActive | Selects all elements that are not active. |
| NotChecked | Selects all elements that not checked. |
| NotEnabled | Selects all elements that are not enabled. |
| NotFocused | Selects all elements that don't currently own the focus. |
| NotHovered | Selects all elements that are not hovered. |
| NotVisible | Selects all elements that are not visible. |
| OfType | Selects all elements of the specified Type (eg: Label, Button, ScrollView, etc). |
| ToList | Convenience method. shorthand for Build().ToList. |
| Visible | Selects all elements that are visible. |
| Where | Selects all elements satifying the predicate. |
