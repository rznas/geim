<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.AccessibilityRole.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options for defining the role of an AccessibilityNode to screen readers.

You can use the values in this enumeration to set the AccessibilityNode.role. This property assigns a semantic meaning to the accessibility node, which informs screen readers how to interact with it and announce its purpose appropriately. 

 Setting accurate roles improves the usability and user experience of your user interface by enabling the screen reader to set clear expectations for the user. A missing role can block the user from interacting with your application, and an incorrect role can cause confusion and frustration. 

 If the visual element that the node represents has a role that is not covered by any of the enumeration options, use the default value, AccessibilityRole.None, and provide information about the node's purpose and behavior in properties such as the AccessibilityNode.label and AccessibilityNode.hint. 

 Additional resources:

- Accessibility for mobile applications
- [Sample project using the accessibility APIs](https://github.com/Unity-Technologies/a11y-public-sample )

The following example demonstrates assigning an AccessibilityRole to a UI element based on its VisualElement type.

```csharp
// Attach this script to a UIDocument GameObject.
// This script demonstrates creating an AccessibilityNode for each child of a
// UIDocument's rootVisualElement and assigning an appropriate
// AccessibilityRole based on its VisualElement type.
// It also shows how to create custom controls to support AccessibilityRoles
// that don't have a corresponding VisualElement type. These can be used in
// UXML files and the UI Builder.
// To view the properties of the AccessibilityNodes in Playmode, go to
// Window > Accessibility > Hierarchy Viewer.using System;
using UnityEngine;
using UnityEngine.Accessibility;
using UnityEngine.UIElements;namespace UnityEngine.Accessibility.Examples
{
    public class AccessibilityManager : MonoBehaviour
    {
        // The active accessibility hierarchy.
        AccessibilityHierarchy m_Hierarchy;        void OnEnable()
        {
            // Create an accessibility hierarchy and set it as the active
            // hierarchy.
            m_Hierarchy = new AccessibilityHierarchy();
            AssistiveSupport.activeHierarchy = m_Hierarchy;            // Add accessibility nodes to each child of the root VisualElement.
            AddNodesToChildren();
        }        void AddNodesToChildren()
        {
            UIDocument document = GetComponent<UIDocument>();
            if (document == null)
            {
                Debug.LogError("UIDocument is not attached to this GameObject.");
                return;
            }            // Loop through each child of the rootVisualElement of the UIDocument.
            foreach (var child in document.rootVisualElement.Children())
            {
                // Create a node in the active hierarchy to represent the element.
                AccessibilityNode node = m_Hierarchy.AddNode();                // Set the node's label to the name of the VisualElement for clarity in
                // the Hierarchy Viewer.
                node.label = $"{child.name}";                // Assign an appropriate AccessibilityRole to the node based on the
                // type of VisualElement.
                AssignNodeRole(node, child);
            }
        }        void AssignNodeRole(AccessibilityNode node, VisualElement element)
        {
            // Match the VisualElement type to an AccessibilityRole using the "is"
            // operator to include subclasses. We check KeyboardKey before Button
            // because it's a subclass of Button with a distinct AccessibilityRole.
            if (element is KeyboardKey) node.role = AccessibilityRole.KeyboardKey;
            else if (element is Button) node.role = AccessibilityRole.Button;
            else if (element is Image) node.role = AccessibilityRole.Image;
            else if (element is Label) node.role = AccessibilityRole.StaticText;
            else if (element is SearchField) node.role = AccessibilityRole.SearchField;
            else if (element is Header) node.role = AccessibilityRole.Header;
            else if (element is TabView) node.role = AccessibilityRole.TabBar;
            else if (element is SliderInt || element is Slider) node.role = AccessibilityRole.Slider;
            else if (element is Toggle) node.role = AccessibilityRole.Toggle;            // The default value AccessibilityRole.None is used for elements that
            // don't have a corresponding role.
        }
    }    // The following classes define custom controls. They can be extended with
    // additional properties and methods as needed.    [UxmlElement]
    public partial class SearchField : TextField { }    [UxmlElement]
    public partial class KeyboardKey : Button { }    [UxmlElement]
    public partial class Header : VisualElement { }
}
```

### Properties

| Property | Description |
| --- | --- |
| None | The accessibility node has none of the predefined roles. |
| Button | The accessibility node behaves like a button. |
| Image | The accessibility node behaves like an image. |
| StaticText | The accessibility node behaves like static text that can't change. |
| SearchField | The accessibility node behaves like a search field. |
| KeyboardKey | The accessibility node behaves like a keyboard key. |
| Header | The accessibility node behaves like a heading that divides content into sections, such as the title of a navigation bar. |
| TabBar | The accessibility node behaves like an ordered list of tabs. |
| Slider | The accessibility node behaves like a slider that allows continuous adjustment through a range of values. |
| Toggle | The accessibility node behaves like a toggle. |
| Container | The accessibility node is a container of other nodes (examples of containers include tab bars and scroll views). |
| TextField | The accessibility node behaves like a text field. |
| Dropdown | The accessibility node behaves like a dropdown list. |
| TabButton | The accessibility node behaves like an item in an ordered list of tabs. |
| ScrollView | The accessibility node behaves like a scrollable container. |
