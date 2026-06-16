<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ContactPairHeader.GetContactPair.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | The ContactPair index. |

### Returns

**ContactPair** A reference or a copy of the ContactPair struct at `index`.

### Description

Gets the ContactPair at `index` of this pair header.

Can be used with the `ref readonly` keyword to avoid copying the whole struct.
