<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase-importPackageCancelled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | Name of package. |

### Description

Callback raised whenever a package import is cancelled by the user.

```csharp
using UnityEditor;
using UnityEngine;[InitializeOnLoad]
public class AssetDatabaseExamples
{
    static AssetDatabaseExamples()
    {
        AssetDatabase.importPackageStarted += OnImportPackageStarted;
        AssetDatabase.importPackageCompleted += OnImportPackageCompleted;
        AssetDatabase.importPackageFailed += OnImportPackageFailed;
        AssetDatabase.importPackageCancelled += OnImportPackageCancelled;
    }    private static void OnImportPackageCancelled(string packageName)
    {
        Debug.Log($"Cancelled the import of package: {packageName}");
    }    private static void OnImportPackageCompleted(string packagename)
    {
        Debug.Log($"Imported package: {packagename}");
    }    private static void OnImportPackageFailed(string packagename, string errormessage)
    {
        Debug.Log($"Failed importing package: {packagename} with error: {errormessage}");
    }    private static void OnImportPackageStarted(string packagename)
    {
        Debug.Log($"Started importing package: {packagename}");
    }
}
```
