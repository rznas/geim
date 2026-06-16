<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Content.ContentBuildInterface.ArchiveAndCompress.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| resourceFiles | Array of ResourceFile structs pointing to the files that should be copied into the Archive. |
| outputBundlePath | File path of the output Archive file. |
| compression | Type of compression to apply to the content of the Archive. |
| stripUnityVersion | By default the Archive file will record the version of the Unity Editor that created the Archive. When true is passed for this parameter the version will not be recorded in the Archive header. This can be useful when rebuilding AssetBundles after a minor upgrade of the Unity Editor, to make sure otherwise identical AssetBundles generate the exact same full-file content. Note: The CRC and hash values calculated by Unity for AssetBundles ignore the Archive Header. So it is not necessary to strip the Unity Version in the Archive Header when using those for integrity and version tracking. |

### Description

Create a Unity archive file, containing the content of one or more resource files.

Generate a Unity Archive file. This low level API is exposed primarily for use by the **Scriptable Build Pipeline** package. For example, when building AssetBundles using BuildPipeline.BuildAssetBundles it is not necessary to call this API because the AssetBundle Archive files are created automatically.

 Additional resources: ArchiveFileInterface.
