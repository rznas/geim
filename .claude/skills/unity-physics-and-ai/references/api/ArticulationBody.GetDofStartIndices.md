<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ArticulationBody.GetDofStartIndices.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| dofStartIndices | Supplied list of integers to read back and store the data. |

### Returns

**int** Total degrees of freedom for the entire hierarchy of articulation bodies.

### Description

Calculates and reads back reduced coordinate data start indexes in reduced coordinate data buffer for every articulation body in the hierarchy.

In order to read back or set entire articulation hierarchy data in reduced coordinates where every degree of freedom is represented by float value, one needs to find the location of reduced cordinates data for particular ArticulationBody. This can be achieved by calling ArticulationBody.GetDofStartIndices and indexing resulting list by the particular body index via ArticulationBody.index. Number of degrees of freedom for particular articulation body can be found using ArticulationBody.dofCount. Additional resources: index, GetDofStartIndices, dofCount.
