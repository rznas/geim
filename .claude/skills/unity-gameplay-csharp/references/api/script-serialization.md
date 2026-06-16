<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/script-serialization.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Script serialization

**Serialization** is the automatic process of transforming data structures or **GameObject** states into a format that Unity can store and reconstruct later.

How you organize data in your Unity project affects how Unity serializes that data, which can have a significant impact on the performance of your project. This page outlines serialization in Unity and how to optimize your project for it.

| **Topic** | **Description** |
| --- | --- |
| Serialization rules | Conditions that determine whether fields in your **scripts** are serialized. |
| Custom serialization | How to serialize additional items not supported by Unity’s serializer. |
| How Unity uses serialization | More details about how serialization works in Unity. |
| JSON Serialization | Convert Unity objects to and from JSON format using the JsonUtility class. |
| Serialization best practices | Best practices for serialization. |

## Additional resources

- Script compilation
- Scripting back ends
- Code reload in the Editor
