<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.ConnectGameObjectToPrefab.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| go | The disconnected GameObject that you want to reconnect. |
| sourcePrefab | The source Prefab to connect to the GameObject. |

### Description

Connects the source Prefab to the game object.

This method allows you to reconnect a GameObject to its source Prefab, when it has become disconnected. Prior to 2018.3 it was possible for Prefab instances to become disconnected from their source Prefab. This method fixes that connection. From 2018.3 onwards, Prefabs cannot become disconnected, so this method exists only to correct problems that may exist in projects created in earlier versions of Unity.
