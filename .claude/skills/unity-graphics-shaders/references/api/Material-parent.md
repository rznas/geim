<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material-parent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Parent of this material.

Materials with a non null parent are referred to as material variants.

Material variants will inherit all their properties from their parent, and can override them on a per property basis. Changing the value of a property of a material will therefore impact all variants below in the hierarchy.

This property is only available in the Editor, in a built project all material hierarchies are flattened.

Additional resources: Material.IsChildOf, Material.IsPropertyOverriden, Material.IsPropertyLocked.

```csharp
using UnityEngine;
using UnityEditor;public class Example : MonoBehaviour
{
#if UNITY_EDITOR
    [MenuItem("GameObject/Create Material Variant")]
    static void DuplicateMaterial()
    {
        Material selected = Selection.activeObject as Material;
        if (selected == null)
            return;        // Create a material variant from selected material
        // And override it's color to red
        Material material = new Material(selected);
        material.parent = selected;
        material.color = Color.red;        AssetDatabase.CreateAsset(material, "Assets/" + selected.name + " Variant.mat");
    }
#endif
}
```
