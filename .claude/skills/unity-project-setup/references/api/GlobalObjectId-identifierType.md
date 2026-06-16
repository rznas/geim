<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GlobalObjectId-identifierType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The identifier type of the referenced object, represented as an integer.

`{i}` is the identifier type represented by one of the following integers:

0 = Null
1 = Imported asset
2 = Scene object
3 = Source asset
4 = Built-in asset

The `identifierType` constitutes the `{i}` element in the string representation of a `GlobalObjectId`, the format of which is:

`GlobalObjectId_V1-{i}-{a}-{l}-{p}`
