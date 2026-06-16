<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AndroidJNIHelper.Unbox.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| obj | A Java object that is a counterpart of a primitive type of the value parameter. |
| value | Destination for the primitive value of obj. |

### Description

Converts Java object of a boxed type to its primitive counterpart.

Each primitive type in Java has a counterpart class, for example java.lang.Integer class is a counterpart for primitive type int. Note, that this methods is designed Java object to be of the correct type depending of the value you want to get. Fix example, if value is short, then obj is expected to be of type java.lang.Short, though in practice any descendant of java.lang.Number should work for any numeric destination, possibly with rounding or loss.
