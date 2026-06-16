<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Undo.RegisterFullObjectHierarchyUndo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| objectToUndo | The object used to determine a hierarchy of objects whose state changes need to be undone. |
| name | The name of the undo operation. |

### Description

Copy the states of a hierarchy of objects onto the undo stack.

This function works similarly to Undo.RegisterCompleteObjectUndo. The key difference is that instead of copying the states of a single object, this function stores the states of a hierarchy of objects. Depending on the type of `objectToUndo`, the hierarchy is determined differently: 

* If `objectToUndo` is a game object, the hierarchy will contain (a) `objectToUndo` itself and its child game objects; (b) the components attached to these game objects.

* If `objectToUndo` is a component attached to an existing game object, the hierarchy will contain the game object and all of its components, including `objectToUndo`. Child game objects are NOT involved in this case. 

* In all other cases, the hierarchy will only contain `objectToUndo` itself. It's then equivalent to calling Undo.RegisterCompleteObjectUndo with the same parameters. 

If the undo is performed, any changes made to the objects in the above described hierarchy after this function is called will be undone, and the objects will be restored to the recorded state.

Transform parent change, AddComponent, and object destruction can not be restored with this function, for that you should use the dedicated functions. See Undo.SetTransformParent, Undo.AddComponent, Undo.DestroyObjectImmediate.

If any object involved is part of the current Scene (e.g. a game object in the Hierarchy window or a component attached to such game object), calling this function will immediately mark the Scene as modified, even if you don't actually change the states of the objects afterwards.

```csharp
using UnityEngine;
using UnityEditor;public class UndoExamples
{
    [MenuItem("Undo Examples/RegisterFullObjectHierarchyUndo 1")]
    static void Example1()
    {
        GameObject root = new GameObject("Root");
        MeshRenderer rootComponent1 = root.AddComponent<MeshRenderer>();
        MeshCollider rootComponent2 = root.AddComponent<MeshCollider>();        GameObject child = new GameObject("Child");
        child.transform.parent = root.transform;
        MeshRenderer childComponent1 = child.AddComponent<MeshRenderer>();
        MeshCollider childComponent2 = child.AddComponent<MeshCollider>();        // Store the states of 'root' and its children.
        Undo.RegisterFullObjectHierarchyUndo(root, "full object hierarchy change");        root.name = "New Root";
        child.name = "New Child";        rootComponent1.enabled = false;
        rootComponent2.enabled = false;        childComponent1.enabled = false;
        childComponent2.enabled = false;        // If you choose "Edit->Undo full object hierarchy change" from the main menu now,
        // the states of both game objects and their components will be restored to what they were right before calling Undo.RegisterFullObjectHierarchyUndo.
    }
}
```

```csharp
using UnityEngine;
using UnityEditor;public class UndoExamples
{
    [MenuItem("Undo Examples/RegisterFullObjectHierarchyUndo 2")]
    static void Example2()
    {
        GameObject root = new GameObject("Root");
        MeshRenderer rootComponent1 = root.AddComponent<MeshRenderer>();
        MeshCollider rootComponent2 = root.AddComponent<MeshCollider>();        GameObject child = new GameObject("Child");
        child.transform.parent = root.transform;
        MeshRenderer childComponent1 = child.AddComponent<MeshRenderer>();
        MeshCollider childComponent2 = child.AddComponent<MeshCollider>();        // Store the states of 'root' and all of its components.
        Undo.RegisterFullObjectHierarchyUndo(rootComponent1, "full object hierarchy change");        root.name = "New Root";
        child.name = "New Child";        rootComponent1.enabled = false;
        rootComponent2.enabled = false;        childComponent1.enabled = false;
        childComponent2.enabled = false;        // If you choose "Edit->Undo full object hierarchy change" from the main menu now,
        // the states of 'root' and all of its components will be restored to what they were right before calling Undo.RegisterFullObjectHierarchyUndo,
        // but changes made to 'child' and its components won't be restored.
    }
}
```

### Description

This overload is deprecated. Use Undo.RegisterFullObjectHierarchyUndo(Object, string) instead.
