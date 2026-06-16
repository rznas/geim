<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ScriptableSingleton_1.Save.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| saveAsText | If true then the file is saved as text, if false it is saved as binary. |

### Description

Saves the current state of the ScriptableSingleton.

Call `Save` to save the current state of the ScriptableSingleton to disk for persistence. If you call this function and your class has no FilePathAttribute, then saving has no effect.

**Note**: Don't call this method from ScriptableObject.OnValidate because the singleton can be in the process of reading its data from a file, which causes an error.

Additional resources: GetFilePath.
