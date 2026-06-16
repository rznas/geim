<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PropertyCollectionAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Base class to derive custom property attributes for collections from. Use this to create custom attributes for array and list variables in scripts.

A custom attributes can be hooked up with a custom PropertyDrawer class to control how a script variable with that attribute is shown in the Inspector.

```csharp
using UnityEditor;
using UnityEditor.UIElements;
using UnityEngine;
using UnityEngine.UIElements;public class Collection : MonoBehaviour
{
    public int before;
    [GreenCollectionDrawer] public int[] collection;
    public int after;
}public class GreenCollectionDrawerAttribute : PropertyCollectionAttribute { }[CustomPropertyDrawer(typeof(GreenCollectionDrawerAttribute))]
public class GreenCollectionDrawer : PropertyDrawer
{
    public override VisualElement CreatePropertyGUI(SerializedProperty property)
    {
        return new PropertyField(property)
        {
            style =
            {
                backgroundColor = Color.green
            }
        };
    }
}
```

Additional resources: PropertyDrawer class.

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| applyToCollection | Makes attribute affect collections instead of their items. |
| order | Optional field to specify the order that multiple DecorationDrawers should be drawn in. |
