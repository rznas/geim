<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ObjectNames.GetInspectorTitle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| obj | Object to get a title from. |
| multiObjectEditing | Tells if the inspector is running multi-edit. |

### Returns

**string** Returns the best title according to objects being inspected.

### Description

Inspector title for an object.

If an object is a script, this will return "*scriptname* (Script)", for example.

Additional resources: ObjectNames.GetClassName, ObjectNames.NicifyVariableName.
