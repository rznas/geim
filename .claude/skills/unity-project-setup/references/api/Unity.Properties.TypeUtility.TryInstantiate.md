<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Properties.TypeUtility.TryInstantiate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| instance | When this method returns, contains the created instance, if type instantiation succeeded; otherwise, the default value for `T`. |

### Returns

**bool** `true` if a new instance of type `T` was created; otherwise, `false`.

### Description

Creates a new instance of the specified `T`.

### Parameters

| Parameter | Description |
| --- | --- |
| derivedType | The type we want to create a new instance of. |
| value | When this method returns, contains the created instance, if type instantiation succeeded; otherwise, the default value for `T`. |

### Returns

**bool** `true` if a new instance of the given type could be created.

### Description

Tries to create a new instance of the given type type and returns it as `T`.
