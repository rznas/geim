<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BuildPipeline.GetCRCForAssetBundle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targetPath | Asset bundle path. |
| crc | A resulting checksum of the given asset bundle. |

### Returns

**bool** True if the method successfully reads the manifest file and extracts the CRC value. False if it cannot find the .manifest file associated to the `targetPath` or fails to parse the CRC value, which might happen due to incorrect paths.

### Description

Extract the CRC checksum for the given AssetBundle.

A 32-bit checksum is generated during the AssetBundle build process and recorded in the .manifest file and exposed by this method.

Additional resources: CRC Checksums, AssetBundleManifest.GetAssetBundleHash

```csharp
using UnityEngine;
using UnityEditor;public class CheckAssetBundleCRCExample
{
    [MenuItem("Debug/Check AssetBundle CRC")]
    static public void CheckAssetBundleCRC()
    {
        string targetPath = EditorUtility.OpenFilePanel("Pick AssetBundle", "", "");
        uint crc;
        if (targetPath.Length == 0 || !BuildPipeline.GetCRCForAssetBundle(targetPath, out crc))
            return;        Debug.Log($"AssetBundle {targetPath} has CRC equal to {crc}");
    }
}
```
