<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.NativeContainerIsReadOnlyAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Marks a native container type as read only.

Use this attribute when defining a read-only interface to the data stored in a native container.

Providing a read-only interface to a native collection can help to use your container efficiently because it removes any ambiguity about whether the code is reading or writing the data when scheduling a job. 

Native container types marked with this attribute must only allow read access. Applying this attribute doesn't prevent code that uses the native container type from attempting to write to the native container.

For information on creating your own native container, refer to the User Manual documentation on Implement a custom native container.
