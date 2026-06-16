<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ModifiableContactPair.GetBounciness.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| i | Index of the contact point. |

### Returns

**float** Bounciness value for the specified contact point.

### Description

Get the restitution value for the specified contact point in this contact pair.

Restitution value specifies how bouncy the surfaces at the specified contact point are.

Bounciness of 0 means absolutely not bouncy at all (all the kinetic energy is lost at contact). A value of 1 means all the kinetic energy (and then some due to computational errors) will be conserved. Because of that, normally, bounciness is somewhere in between 0 and 1.
