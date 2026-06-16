<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializationUtility.ClearAllManagedReferencesWithMissingTypes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Removes all managed references that are missing their type.

This method removes all serialized data associated with managed reference fields that have missing types.

This API is useful for removing missing type warning messages when an asset is loaded, for example if there is a reference to a class in a package that is not being used anymore.

This method returns false if the object had no references with missing types.

Additional resources: ClearManagedReferenceWithMissingType, SerializeReference.

```csharp
using System.Collections.Generic;
using System.Text;
using UnityEngine;
using UnityEditor;public class ClearMissingTypeExample
{
    [MenuItem("Example/Clear ScriptableObject References with Missing Types")]
    static public void ClearMissingTypesOnScriptableObjects()
    {
        var report = new StringBuilder();        var guids = AssetDatabase.FindAssets("t:ScriptableObject", new[] {"Assets"});
        foreach (string guid in guids)
        {
            var path = AssetDatabase.GUIDToAssetPath(guid);
            Object obj = AssetDatabase.LoadMainAssetAtPath(path);
            if (obj != null)
            {
                if (SerializationUtility.ClearAllManagedReferencesWithMissingTypes(obj))
                {
                    report.Append("Cleared missing types from ").Append(path).AppendLine();
                }
                else
                {
                    report.Append("No missing types to clear on ").Append(path).AppendLine();
                }
            }
        }        Debug.Log(report.ToString());
    }
}
```
