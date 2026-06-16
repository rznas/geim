<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.InspectorElement.FillDefaultInspector.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| container | The parent VisualElement |
| serializedObject | The SerializedObject to inspect |
| editor | The editor currently used |

### Description

Adds default inspector property fields under a container VisualElement.

The following example shows how to fill a container with default inspector fields. For a complete example, refer to Create a default Inspector.

```csharp
using UnityEditor;
using UnityEditor.UIElements;
using UnityEngine;
using UnityEngine.UIElements;[CreateAssetMenu]
public class MyEditorData : ScriptableObject
{
    public string myString;
    public float myFloat;
    public string myInt;
}[CustomEditor(typeof(MyEditorData))]
public class MyEditor : UnityEditor.Editor
{
    public override VisualElement CreateInspectorGUI()
    {
        var root = new VisualElement();
        root.Add(new Label("My Custom Inspector"));
        InspectorElement.FillDefaultInspector(root, serializedObject, this);
        return root;
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| container | The parent VisualElement. |
| serializedObject | The SerializedObject to inspect. |
| editor | The Editor currently used. |
| propertiesToExclude | Properties to exclude when populating the Inspector. Properties with name matching SerializedProperty.name are skipped. |

### Description

Adds default inspector property fields under a container VisualElement.

The following example shows how to fill a container with default Inspector fields. For a complete example, refer to Create a default Inspector.

```csharp
using UnityEditor;
using UnityEditor.UIElements;
using UnityEngine;
using UnityEngine.UIElements;[CreateAssetMenu]
public class MyEditorData : ScriptableObject
{
    public string myString;
    public float myFloat;
    public string myInt;
}[CustomEditor(typeof(MyEditorData))]
public class MyEditor : UnityEditor.Editor
{
    public override VisualElement CreateInspectorGUI()
    {
        var root = new VisualElement();
        root.Add(new Label("My Custom Inspector"));
        InspectorElement.FillDefaultInspector(root, serializedObject, this);
        return root;
    }
}
```

The following example shows how to fill a container with default Inspector fields, excluding a specific property that is displayed as a Slider.

```csharp
using UnityEditor;
using UnityEditor.UIElements;
using UnityEngine;
using UnityEngine.UIElements;[CreateAssetMenu]
public class MyEditorDataExclude : ScriptableObject
{
    public string myString;
    public float myFloat;
    public string myInt;
}[CustomEditor(typeof(MyEditorDataExclude))]
public class MyEditorExclude : UnityEditor.Editor
{
    public override VisualElement CreateInspectorGUI()
    {
        var root = new VisualElement();
        root.Add(new Label("My Custom Inspector"));        var myFloatSlider = new Slider { bindingPath = "myFloat", label = "My Float" };
        root.Add(myFloatSlider);        // Draw all properties except "myFloat"
        InspectorElement.FillDefaultInspector(root, serializedObject, this, "myFloat");
        return root;
    }
}
```
