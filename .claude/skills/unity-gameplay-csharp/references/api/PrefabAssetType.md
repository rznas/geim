<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabAssetType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enum indicating the type of Prefab Asset, such as Regular, Model and Variant.

For an object on a Prefab Asset, the asset itself is checked. For an object on a Prefab instance, its corresponding asset is checked.

### Properties

| Property | Description |
| --- | --- |
| NotAPrefab | The object being queried is not part of a Prefab at all. |
| Regular | The object being queried is part of a regular Prefab. |
| Model | The object being queried is part of a Model Prefab. |
| Variant | The object being queried is part of a Prefab Variant. |
| MissingAsset | The object being queried is part of a Prefab instance, but because the asset is missing the actual type of Prefab can’t be determined. |
