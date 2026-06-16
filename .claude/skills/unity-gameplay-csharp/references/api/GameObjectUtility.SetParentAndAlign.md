<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GameObjectUtility.SetParentAndAlign.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| child | The GameObject that should have a new parent set. |
| parent | The GameObject that the child should get as a parent and have position and layer copied from. If null, this function does nothing. |

### Description

Sets the parent and gives the child the same layer and position.

This is intended as a utility function when creating custom GameObjects with a MenuItem in the "GameObject/" menu. When using the context click menu to create new GameObjects in the Scene hierarchy, the newly created GameObjects should be parented to the clicked GameObject, which is passed in as MenuCommand.context. Calling this method ensures this behavior in the case of a context click while doing nothing if the context is null (see example on the MenuItem docs).
