<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Motion.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Stores a reference to an animation asset associated with a State Machine state.

The Motion class acts as an abstraction for APIs that accept either the AnimationClip or BlendTree animation classes.

Additional resources: AnimatorState.motion, AnimatorController.AddMotion, BlendTree.AddChild.

This example demonstrates how to create a BlendTree from a selection of AnimationClips. This example also demonstrates how a BlendTree is composed of two or more child Motions, and how to use a BlendTree to instantiate an AnimatorState.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.Animations;
using UnityEngine;

static class MotionClassExample
{
    [MenuItem("Example/Create Animator Controller From Selected Clips")]
    static void CreateAnimatorControllerFromClips()
    {
        // Get the Motion-derived assets in the selection. You can only do this with AnimationClip assets.
        var motions = new List<Motion>();
        foreach (var obj in Selection.objects)
        {
            if (obj is Motion clip)
            {
                motions.Add(clip);
            }
        }

        if (motions.Count == 0)
        {
            Debug.LogWarning("No clips selected");
            return;
        }

        // Create an AnimationController in the project.
        var animatorController =
            AnimatorController.CreateAnimatorControllerAtPath(
                AssetDatabase.GenerateUniqueAssetPath("Assets/MotionExample.controller"));

        // Create a BlendTree that blends between the selected Motion objects.
        var blendTree = new BlendTree { name = "Default" };
        for (var i = 0; i < motions.Count; i++)
        {
            var clip = motions[i];
            blendTree.AddChild(clip, (float)i / motions.Count);
        }

        // Create a new state from the BlendTree (which is itself a Motion).
        animatorController.AddMotion(blendTree);

        // Make sure the BlendTree is persisted.
        AssetDatabase.AddObjectToAsset(blendTree, animatorController);

        // Show the new  AnimatorController in the project window.
        Selection.activeObject = animatorController;
        EditorGUIUtility.PingObject(animatorController);
    }
}
```

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| GetEntityId | Gets the EntityId of the object. |
| ToString | Returns the name of the object. |

### Static Methods

| Method | Description |
| --- | --- |
| Destroy | Removes a GameObject, component, or asset. |
| DestroyImmediate | Destroys the specified object immediately. Use with caution and in Edit mode only. |
| DontDestroyOnLoad | Do not destroy the target Object when loading a new Scene. |
| FindAnyObjectByType | Retrieves any active loaded object of Type type. |
| FindObjectsByType | Retrieves a list of all loaded objects of Type type. |
| Instantiate | Clones the object original and returns the clone. |
| InstantiateAsync | Captures a snapshot of the original object (that must be related to some GameObject) and returns the AsyncInstantiateOperation. |

### Operators

| Operator | Description |
| --- | --- |
| bool | Does the object exist? |
| operator != | Compares if two objects refer to a different object. |
| operator == | Compares two object references to see if they refer to the same object. |
