<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationCurve.AddKey.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| time | The time at which to add the key (horizontal axis in the curve graph). |
| value | The value for the key (vertical axis in the curve graph). |

### Returns

**int** The index of the added key, or -1 if the key could not be added.

### Description

Add a new key to the curve.

Smooth tangents are automatically computed for the key. Returns the index of the added key. If no key could be added because there is already another keyframe at the same time -1 will be returned.

Additional resources: keys variable.

### Parameters

| Parameter | Description |
| --- | --- |
| key | The key to add to the curve. |

### Returns

**int** The index of the added key, or -1 if the key could not be added.

### Description

Add a new key to the curve.

Returns the index of the added key. If no key could be added because there is already another keyframe at the same time -1 will be returned.

Additional resources: keys variable, Keyframe struct.
