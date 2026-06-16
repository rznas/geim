<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidProjectFilesModifierContext.SetData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| key | Data key. |
| value | Data value as string. |

### Description

Sets data for the OnModifyAndroidProjectFiles callback.

This method is used to set data from the Unity Editor and it is passed to the `OnModifyAndroidProjectFiles` callback.

 If data with the same key already exists, Unity throws an error.

### Parameters

| Parameter | Description |
| --- | --- |
| key | Data key. |
| value | Serializable object. |

### Description

Sets data as serializable object.

This method is used to set data from the Unity Editor and it is passed to the `OnModifyAndroidProjectFiles` callback.

 If data with the same key already exists, Unity throws an error.
