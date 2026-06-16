<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.GenericBindingUtility.UnbindProperties.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| boundProperties | The list of BoundProperty to unbind. |

### Description

Unbinds and frees all resources used by a list of BoundProperty.

Creating a BoundProperty that targets a serialized reference avoids garbage collection for its objects. If you forget to unbind and free the resources used by this BoundProperty, it may result in a memory leak.

This method throws an ArgumentException if the boundProperties's NativeArray is not yet created.
