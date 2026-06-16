<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.PropertyDatabase.GetView.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| delayedSync | Boolean indicating if the sync between views should only happen when the view is disposed, or for every operation. |

### Returns

**IPropertyDatabaseView** The PropertyDatabase view.

### Description

Opens a view on the PropertyDatabase.

The view handles all the internal file operations and concurrent accesses. All operations on the PropertyDatabase create a view, so for performance reasons you should get a view with PropertyDatabase.GetView and do all your operations with it.

Additional resources: IPropertyDatabaseView
