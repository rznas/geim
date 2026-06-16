<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.BuildPlayerContext.AddAdditionalPathToStreamingAssets.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| directoryOrFile | Path representing an existing file or directory. If the path doesn't exist, this function throws a FileNotFoundException. |
| pathInStreamingAssets | The path within the StreamingAssets folder at which to place the additional assets. If null, the file or directory is placed directly in the StreamingAssets folder. |

### Description

Add additional streaming assets to the built player data. For example, you can include AssetBundles or other streaming assets without first putting them in the project StreamingAssets folder.

You can add a single file or an entire directory.

If a file or directory with the same destination path has already been added to the BuildPlayerContext, then this function throws an ArgumentException.

If a file or directory with the same destination path already exists in the project, an exception is thrown later in the build process.
