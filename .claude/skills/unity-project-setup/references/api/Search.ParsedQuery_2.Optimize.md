<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.ParsedQuery_2.Optimize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| propagateNotToLeaves | Propagate "Not" operations to leaves, so only leaves can have "Not" operations as parents. |
| swapNotToRightHandSide | Swaps "Not" operations to the right-hand side of combining operations (i.e. "And", "Or"). Useful if a "Not" operation is slow. |
| options | Optimization options. |

### Description

Optimizes the query by optimizing the underlying filtering graph.
