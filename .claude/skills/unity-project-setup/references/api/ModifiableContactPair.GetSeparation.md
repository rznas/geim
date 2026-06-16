<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ModifiableContactPair.GetSeparation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| i | Index of the contact point. |

### Returns

**float** The separation at a contact point.

### Description

Get the separation value at a particular contact point in this contact pair.

Separation shows the distance between the colliders at this contact point. Negative means the colliders overlap each other. Positive means the colliders are still separated.

Note that the physics engine starts generating contact pairs when the distance between is lower than the sum of their respective Collider.contactOffset.
