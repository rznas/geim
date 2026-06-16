<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AndroidJavaObject.CloneReference.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**AndroidJavaObject** A new C# object which references the same Java object as the original instance.

### Description

Creates a clone of the C# object that references the same Java object.

Allows you to create multiple C# instances referencing the same Java object. The Java object will be excluded from garbage collection until all the C# references to it are disposed or garbage collected. If you call this method on an AndroidJavaClass instance, the returned clone's type will also be AndroidJavaClass.
