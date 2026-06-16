<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorUtility.IsPersistent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Determines if an object is stored on disk.

Typically assets like Prefabs, textures, audio clips, animation clips, materials are stored on disk.

Returns false if the object lives in the Scene. Typically this is a game object or component but it could also be a material that was created from code and not stored in an asset but instead stored in the Scene.

```csharp
using UnityEditor;
using UnityEngine;
// Tells if an Object is stored on disk or not.
public class PersistentInfo : EditorWindow
{
    [MenuItem("Examples/Object on Disk?")]
    static void CheckPersistent()
    {
        bool persistent = EditorUtility.IsPersistent(Selection.activeObject);
        Debug.Log(Selection.activeObject.name + ": " + (persistent ? "Stored on disk" : "Not on disk"));
    }    [MenuItem("Examples/Object on Disk?", true)]
    static bool ValidateCheckPersistent()
    {
        return Selection.activeObject != null;
    }
}
```
