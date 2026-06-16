<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorPrefs.DeleteAll.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Removes all keys and values from the preferences. Use with caution.

*Clears all editor prefs keys.*

```csharp
// Clear all the editor prefs keys.
//
// Warning: this will also remove editor preferences as the opened projects, etc.using UnityEngine;
using UnityEditor;public class DeleteAllExample : ScriptableObject
{
    [MenuItem("Examples/EditorPrefs/Clear all Editor Preferences")]
    static void deleteAllExample()
    {
        if (EditorUtility.DisplayDialog("Delete all editor preferences.",
            "Are you sure you want to delete all the editor preferences? " +
            "This action cannot be undone.", "Yes", "No"))
        {
            Debug.Log("yes");
            EditorPrefs.DeleteAll();
        }
    }
}
```
