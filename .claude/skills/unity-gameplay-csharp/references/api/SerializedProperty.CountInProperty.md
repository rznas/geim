<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedProperty.CountInProperty.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Count visible children of this property, including this property itself.

This is useful for allocating height for drawing this property including its children. Note that calling the method will move the property forward, so if this is not the desired behavior make a copy of the property before calling the method using Copy.

 Additional resources: hasVisibleChildren, CountRemaining
