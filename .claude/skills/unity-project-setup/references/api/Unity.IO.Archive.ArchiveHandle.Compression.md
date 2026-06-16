<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.IO.Archive.ArchiveHandle.Compression.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The type of compression the archive uses.

Only accessible if the archive loaded successfully.

 Additional resources: AssetBundles compression.

```csharp
using Unity.Content;
using Unity.IO.Archive;
using UnityEditor;
using UnityEngine;public static class ArchiveUtilities
{
#if UNITY_EDITOR
    [MenuItem("Debug/Check Archive Compression")]
    static public void CheckCompression()
    {
        string archivePath = EditorUtility.OpenFilePanel("Pick AssetBundle or other Unity Archive file", "", "");
        if (archivePath.Length == 0)
            return;        Debug.Log($"Bundle {archivePath} has compression type {GetArchiveCompression(archivePath)}");
    }
#endif    static public UnityEngine.CompressionType GetArchiveCompression(string archivePath)
    {
        var archiveHandle = ArchiveFileInterface.MountAsync(ContentNamespace.Default, archivePath, "temp:");
        archiveHandle.JobHandle.Complete();        if (archiveHandle.Status == ArchiveStatus.Failed)
            throw new System.ArgumentException($"Failed to load {archivePath}");        var compression = archiveHandle.Compression;
        archiveHandle.Unmount().Complete();        return compression;
    }
}
```
