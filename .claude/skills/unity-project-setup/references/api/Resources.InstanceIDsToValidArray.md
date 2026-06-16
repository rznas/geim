<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Resources.InstanceIDsToValidArray.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| instanceIDs | IDs of Object instances. |
| validArray | Array of bools indicating whether a given instance ID corresponds to a valid Object. |

### Description

Translates an array of instance IDs to an array of bools indicating whether a given instance ID from **instanceIDs** corresponds to a valid Object in memory. The Object could have been deleted or not loaded into memory yet.

**instanceIDs** and **validArray** must be of the same length. The value at each index in **validArray** corresponds with the instance ID at the same index in **instanceIDs**.
