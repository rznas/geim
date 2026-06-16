<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.OnTransformParentChanged.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Called when a direct or indirect parent of a GameObject's Transform changes.

Changes to the parent includes both direct and indirect changes to the hierarchy: whether the GameObject is reparented to a new Transform, or if any ancestor in its hierarchy is reparented.

`OnTransformParentChanged` is called at runtime when a GameObject's direct children change. It can also be called in Edit mode if scripts use ExecuteInEditMode or ExecuteAlways. It's called after the parent change has occurred, allowing you to react to the new hierarchy in your script.

Use this callback to:

- Update or reconfigure components and logic that depend on the GameObject's position in the scene hierarchy.
- Refresh cached references to parent objects or components when the parent changes.
- Synchronize state or properties with the new parent, such as inheriting settings, updating UI layouts, or recalculating world-space properties.
- Perform cleanup related to the old parent or initialization tasks relevant to the new parent.
- In custom Editor scripts, to maintain correct relationships in tools that manipulate the hierarchy at Edit time.

Additional resources: MonoBehaviour.OnTransformChildrenChanged.

```csharp
// Attach this script to any GameObject (for example, an empty "Parent" object).
// Assign a Text UI element to the infoText field in the Inspector (optional, for UI feedback).
// At runtime, change the object's parent in the hierarchy (via script or by dragging in the Editor).
// You'll see a log message, and the UI text will update whenever the parent changes.using UnityEngine;
using UnityEngine.UI; // For UI Textpublic class ParentChangeWatcher : MonoBehaviour
{
    public Text infoText; // Assign in inspector    void Start()
    {
        UpdateInfoText();
    }    // Called automatically by Unity when the parent changes
    void OnTransformParentChanged()
    {
        Debug.Log($"{gameObject.name} parent changed to: {transform.parent?.name ?? "None"}");
        UpdateInfoText();
    }    void UpdateInfoText()
    {
        if (infoText != null)
        {
            string parentName = transform.parent ? transform.parent.name : "None";
            infoText.text = $"{gameObject.name} is now child of: {parentName}";
        }
    }
}
```
