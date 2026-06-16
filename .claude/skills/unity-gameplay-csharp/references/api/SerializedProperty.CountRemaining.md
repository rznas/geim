<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedProperty.CountRemaining.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Count remaining visible properties.

This is useful for allocating height for drawing this property and all the following ones. Note that calling this method will move the property forward to the end of the SerializedObject. If this is not the desired behavior either use Copy to make a copy of the current property before calling this method or Reset to reset the property after calling this method.

 Additional resources: hasVisibleChildren, CountInProperty
