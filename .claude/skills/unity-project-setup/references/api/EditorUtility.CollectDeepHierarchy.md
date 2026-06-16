<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorUtility.CollectDeepHierarchy.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| roots | Array of objects where the search will start. |

### Returns

**Object[]** Array of objects heirarchically attached to the search array.

### Description

Collect all objects in the hierarchy rooted at each of the given objects.

This is most useful for linearizing entire GameObject hierarchies including all their components.
 Note that the traversal will not include assets referenced from within the hierarchy. For example, having a MeshFilter component in the hierarchy will not cause the referenced Mesh to be included in the resulting list.

```csharp
using UnityEngine;
using UnityEditor;public class CollectHierarchyExample : MonoBehaviour
{
    void Start()
    {
        // Create two GameObjects
        GameObject  parent = new GameObject();
        GameObject  child = new GameObject();
        Object[]    roots = new Object[] { parent };        // Name them
        parent.name = "Parent";
        child.name = "Child";        // Make one a child of the other.
        child.transform.parent = parent.transform;        // Collect entire hierarchy
        Object[] result = EditorUtility.CollectDeepHierarchy(roots);        // Dump results.  Will log four objects to the console;
        // two GameObjects ("Parent" and "Child") and two Transform
        // components (one belonging to "Parent" and one belonging to
        // "Child")
        foreach (Object obj in result)
            Debug.Log(obj);
    }
}
```
