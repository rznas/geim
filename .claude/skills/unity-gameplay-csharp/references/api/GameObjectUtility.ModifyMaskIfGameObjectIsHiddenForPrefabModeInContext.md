<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GameObjectUtility.ModifyMaskIfGameObjectIsHiddenForPrefabModeInContext.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| sceneCullingMask | The scene culling mask intended to be used with the custom renderer. |
| gameObject | The GameObject associated with the custom renderer. |

### Returns

**ulong** If the GameObject is hidden for Prefab Mode in Context, a modified scene culling mask is returned. If it's not hidden, then the input scene culling mask is returned.

### Description

Use this method if a custom scene culling mask is needed for renderers that should be shown or hidden in a Scene view when Prefab Mode in Context is active.

When entering Prefab Mode in Context for a Prefab Asset the Prefab instance in the Main Stage is hidden. Use this method to ensure that any custom renderers associated with a given GameObject are hidden in the same Scene views if that GameObject is part of a hidden Prefab instance.
