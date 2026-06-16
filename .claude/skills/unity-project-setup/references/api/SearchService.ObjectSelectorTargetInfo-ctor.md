<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SearchService.ObjectSelectorTargetInfo-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| globalObjectId | The object's global identifier. |
| targetObject | The object's instance. It can be null if the object is not loaded. |
| type | The object's underlying type. It can be null if the object is not loaded. |

### Description

Creates an ObjectSelectorTargetInfo.

This structure is used to pass an object's information to an ObjectSelectorHandlerAttribute without loading the object if it is not needed.
