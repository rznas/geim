<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Reporting.PackedAssetInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Contains information about a range of bytes in a file in the build output.

A Packed Asset contains either the serialized binary representation of a Unity Object, or the binary data of a texture, mesh, audio or video that belongs to a Unity object.

Note: the "Packed Asset" name is somewhat misleading because the data is associated with a specific object within an Asset, not an entire Asset. Some Assets contain just a single object, but in many cases it may contain an entire hierarchy of objects, each with its own PackedAssetInfo entry.

Additional resources: BuildReport, PackedAssets.contents

```csharp
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using UnityEditor;
using UnityEditor.Build.Reporting;
using UnityEngine;public struct ContentEntry
{
    public ulong size;        // Bytes
    public int objectCount;   // Number of objects from the same source
}public class BuildReportPackedAssetInfoExample
{
    [MenuItem("Example/Build and Analyze AssetBundle")]
    static public void Build()
    {
        string buildOutputDirectory = "BuildOutput";
        if (!Directory.Exists(buildOutputDirectory))
            Directory.CreateDirectory(buildOutputDirectory);        var bundleDefinitions = new AssetBundleBuild[]
        {
            new AssetBundleBuild()
            {
                assetBundleName = "MyBundle",                // Tip: Adjust this list to builds scenes or assets from your project
                assetNames = new string[] { "Assets/Scenes/TestScene.unity" }
            }
        };        BuildPipeline.BuildAssetBundles(
            buildOutputDirectory,
            bundleDefinitions,
            BuildAssetBundleOptions.ForceRebuildAssetBundle,
            EditorUserBuildSettings.activeBuildTarget);        BuildReport report = BuildReport.GetLatestReport();
        if (report != null)
        {
            var sb = new StringBuilder();
            sb.AppendLine("Build result   : " + report.summary.result);
            sb.AppendLine("Build size     : " + report.summary.totalSize + " bytes");
            sb.Append(ClassifyBuildOutputBySourceAsset(report));
            Debug.Log(sb.ToString());
        }
        else
        {
            Debug.Log("AssetBundle build failed");
        }
    }    public static string ClassifyBuildOutputBySourceAsset(BuildReport buildReport)
    {
        var sb = new StringBuilder();        var sourceAssetSize = new Dictionary<string, ContentEntry>();        var packedAssets = buildReport.packedAssets;
        foreach(var packedAsset in packedAssets)
        {
            sb.AppendLine("Analyzing " + packedAsset.shortPath + "....");            var contents = packedAsset.contents;
            foreach(var packedAssetInfo in contents)
            {
                // Path of the asset that contains this object
                var path = packedAssetInfo.sourceAssetPath;                if (string.IsNullOrEmpty(path))
                    path = "Internal";                if (sourceAssetSize.ContainsKey(path))
                {
                    var existingEntry = sourceAssetSize[path];
                    existingEntry.size += packedAssetInfo.packedSize;
                    existingEntry.objectCount++;
                    sourceAssetSize[path] = existingEntry;
                }
                else
                {
                    sourceAssetSize[path] = new ContentEntry
                    {
                        size = packedAssetInfo.packedSize,
                        objectCount = 1
                    };
                }
            }
        }        sb.AppendLine("The Build contains the content from the following source assets:\n");        // Sort biggest to smallest
        var sortedSourceAssetSize = sourceAssetSize.OrderByDescending(x => x.Value.size);        // Note: for large builds there could be thousands or more different source assets,
        // in which case it could be prudent to only show the top 10 or top 100 results.
        for (int i = 0; i < sortedSourceAssetSize.Count(); i++)
        {
            var entry = sortedSourceAssetSize.ElementAt(i);
            sb.AppendLine(" Asset: \"" + entry.Key + "\" Object Count: " + entry.Value.objectCount + " Size of Objects: " + entry.Value.size);
        }        return sb.ToString();
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| id | Local file id of the object |
| offset | The offset from the start of the file to the first byte of the range belonging to the Packed Asset. |
| packedSize | The size in bytes of the Packed Asset. |
| sourceAssetGUID | The Global Unique Identifier (GUID) of the source Asset that the build process used to generate the packed Asset. |
| sourceAssetPath | The file path to the source Asset that the build process used to generate the Packed Asset, relative to the Project directory. |
| type | The type of the object whose serialized data is represented by the Packed Asset, such as GameObject, Mesh or AudioClip. |
