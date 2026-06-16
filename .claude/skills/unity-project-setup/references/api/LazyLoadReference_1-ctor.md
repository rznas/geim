<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LazyLoadReference_1-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| asset | The asset reference. |
| entityId | The asset EntityId. |

### Description

Construct a new LazyLoadReference.

Note that the signature which takes an asset reference may trigger loading the referenced object into memory if the object is not already loaded. The signature which takes an EntityId will never trigger a load.

### Parameters

| Parameter | Description |
| --- | --- |
| instanceID | The asset instance id. |

### Description

Construct a new LazyLoadReference.

Note that the signature which takes an asset reference may trigger loading the referenced object into memory if the object is not already loaded. The signature which takes an instance id will never trigger a load.
