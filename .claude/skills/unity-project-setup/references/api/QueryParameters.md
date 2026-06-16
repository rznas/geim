<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/QueryParameters.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Creates a struct to set up parameters for batch queries: RaycastCommand, BoxcastCommand, CapsulecastCommand, SpherecastCommand.

Use this struct to configure hit flags and layer mask. This supports hit triggers, hit backfaces and hit multiple Mesh faces.

Note: Only RaycastCommand supports hitting multiple Mesh faces.

### Static Properties

| Property | Description |
| --- | --- |
| Default | Create a default QueryParameters struct. |

### Properties

| Property | Description |
| --- | --- |
| hitBackfaces | Whether physics queries should hit back-face triangles. |
| hitMultipleFaces | Whether raycast batch query should hit multiple faces. |
| hitTriggers | Whether queries hit Triggers by default. |
| layerMask | A LayerMask that is used to selectively filter which colliders are considered when casting a ray. |

### Constructors

| Constructor | Description |
| --- | --- |
| QueryParameters | Struct used to set up parameters for queries: RaycastCommand, BoxcastCommand, CapsulecastCommand, SpherecastCommand. |
