<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Properties.ConcreteTypeVisitor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Base class to implement a visitor responsible for getting an object's concrete type as a generic.

It is required that the visited object is a container type with a property bag.

### Protected Methods

| Method | Description |
| --- | --- |
| VisitContainer | Implement this method to receive the strongly typed callback for a given container. |
