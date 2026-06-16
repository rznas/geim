<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.QueryGraphOptimizationOptions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Structure containing the different options used to optimize a query graph.

### Properties

| Property | Description |
| --- | --- |
| propagateNotToLeaves | Propagate "Not" operations to leaves, so only leaves can have "Not" operations as parents. |
| swapFilterFunctionsToRightHandSide | Swaps filter functions to the right-hand side of combining operations (i.e. "And", "Or"). Useful if those filter operations are slow. |
| swapNotToRightHandSide | Swaps "Not" operations to the right-hand side of combining operations (i.e. "And", "Or"). Useful if a "Not" operation is slow. |
