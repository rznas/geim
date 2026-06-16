<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.PlayableDirector.SetGenericBinding.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| key | The source object in the PlayableBinding. |
| value | The object to bind to the key. |

### Description

Sets the binding of a reference object from a PlayableBinding.

Use this method to associate assets to objects loaded in the scene. For example, use SetGenericBinding to bind a Timeline track to a GameObject or Component.

If the value is set to null, the source object is bound to null and the dependency between the PlayableDirector and the source object is kept.
