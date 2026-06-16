<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.GraphView.SearchWindow.Open.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | Structure of parameters that configure the search window. |
| provider | Reference to the object that provides the search results. |

### Returns

**bool** Returns true if the window opens successfully. Returns false otherwise.

### Description

Opens the search window above the Graph.

The provider object must be of type ScriptableObject for the search window to maintain the its reference after a domain reload. For example, you can use your own instance of an EditorWindow subclass.
