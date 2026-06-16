<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Assertions.Comparers.FloatComparer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A float comparer used by Assert performing approximate comparison.

### Static Properties

| Property | Description |
| --- | --- |
| kEpsilon | Default epsilon used by the comparer. |
| s_ComparerWithDefaultTolerance | Default instance of a comparer class with default error epsilon and absolute error check. |

### Constructors

| Constructor | Description |
| --- | --- |
| FloatComparer | Creates an instance of the comparer. |

### Static Methods

| Method | Description |
| --- | --- |
| AreEqual | Performs equality check with absolute error check. |
| AreEqualRelative | Performs equality check with relative error check. |
