<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Shader.PropertyToID.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | Shader property name. |

### Returns

**int** Unique integer for the name.

### Description

Gets unique identifier for a shader property name.

Using property identifiers is more efficient than passing strings to all material property functions. For example if you are calling Material.SetColor a lot, or using MaterialPropertyBlock, then it is better to get the identifiers of the properties you need just once.

Each name of shader property (for example, `_MainTex` or `_Color`) is assigned an unique integer number in Unity, that stays the same for the whole game. The numbers will not be the same between different runs of the game or between machines, so do not store them or send them over network.

Additional resources: Material, MaterialPropertyBlock.
