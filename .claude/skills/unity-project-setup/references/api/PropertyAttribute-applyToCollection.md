<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PropertyAttribute-applyToCollection.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Makes attribute affect collections instead of their items.

```csharp
using UnityEditor;
using UnityEditor.UIElements;
using UnityEngine;
using UnityEngine.UIElements;public class Collection : MonoBehaviour
{
    public int before;
    [GreenCollectionDrawer] public int[] collection;
    public int after;
}public class GreenCollectionDrawerAttribute : PropertyAttribute
{
    public GreenCollectionDrawerAttribute() : base(true) { }
}[CustomPropertyDrawer(typeof(GreenCollectionDrawerAttribute))]
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
