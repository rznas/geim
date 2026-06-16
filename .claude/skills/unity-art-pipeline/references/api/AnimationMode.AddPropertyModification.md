<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationMode.AddPropertyModification.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| binding | Description of the animation clip curve being modified. |
| modification | Object property being modified. |
| keepPrefabOverride | Indicates whether to retain modifications when the targeted object is an instance of a Prefab. |

### Description

Marks a property as currently being animated.

This method uses the animation recording system to add a property to the Animation mode snapshot. A property is added when the user modifies its value through scripting, in the Inspector window, and so on.
