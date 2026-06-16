<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/InstantiateParameters-originalImmutable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

It tells the InstantiateAsync if it's safe to do the serialization step async.

By default InstantiateAsync serializes all the data before returning and the only async part is the creation of the new objects. This is to avoid issues in the case that the object that we are cloning is modified or deleted. If this flag is set, the serialization will also be async, allowing it to return way earlier.
