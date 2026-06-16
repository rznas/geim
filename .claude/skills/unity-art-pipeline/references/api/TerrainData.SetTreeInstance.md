<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainData.SetTreeInstance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | The index of the tree instance. |
| instance | The new TreeInstance value. |

### Description

Sets the tree instance with new parameters at the specified index. However, you cannot change TreeInstance.prototypeIndex and TreeInstance.position. If you change them, the method throws an ArgumentException.
