<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/FileUtil.GetPhysicalPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | Logical path. |

### Returns

**string** Physical path.

### Description

Converts a logical path to a physical path.

Logical paths in Unity are virtual paths which point to real (or "physical") file and directory paths on disk. They're designed to be shorter and simpler, making them easier to work with than the real file paths. For example in Unity you might see a logical path such as:

**Packages/MyPackage/MyFile.txt**

Which points to a physical file at:

**C:/Users/SomeUser/MyProject/Library/PackageCache/MyPackage@fingerprint/MyFile.txt**

When working inside Unity, these mappings occur automatically, so in most situations you do not need to call these methods to convert from logical to physical paths. However in certain situations if you are working with external tools that are unaware of Unity's logical paths, you may need to use these methods to provide the mapping between logical and physical paths.

Additional resources: [FileUtil.GetLogicalPath]
