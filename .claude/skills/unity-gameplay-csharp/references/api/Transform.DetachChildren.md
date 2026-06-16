<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Transform.DetachChildren.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Unparents all of the target object's children.

Each immediate child is moved to the root-level, preserving their internal hierarchies. This is useful if you want to destroy the root of a hierarchy without destroying the children, and is more efficient than unparenting each child individually.

Additional resources: Transform.parent to detach/change the parent of a single transform.

```csharp
{
    GameObject root = new GameObject("Root");
    AddChildTransforms(root.transform, new[] { "Child1", "Child2", "Child3" });
    // Destroying an object destroys its children as well. To avoid this,
    // the children must first be detached. We can't safely detach children
    // while iterating through its child list, so we need to extract them into
    // a separate list as a pre-pass.
    List<Transform> children = new List<Transform>();
    for(int i=0; i<root.transform.childCount; ++i)
    {
        children.Add(root.transform.GetChild(i));
    }
    // Now we can safely deparent each child.
    foreach (Transform child in children)
    {
        child.SetParent(null, true);
    }
    Assert.AreEqual(0, root.transform.childCount);
    // Destroying the root no longer destroys the children
    Object.Destroy(root.gameObject);
}

{
    GameObject root = new GameObject("Root");
    AddChildTransforms(root.transform, new[] { "Child1", "Child2", "Child3" });
    // This has the same effect as the above loops.
    root.transform.DetachChildren();
    Assert.AreEqual(0, root.transform.childCount);
    // Destroying the root no longer destroys the children
    Object.Destroy(root.gameObject);
}
```
