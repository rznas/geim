<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh-tangents.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The tangents of the Mesh.

Tangents are mostly used in bump-mapped Shaders. A tangent is a unit-length vector that follows Mesh surface along horizontal (U) texture direction. Tangents in Unity are represented as Vector4, with *x,y,z* components defining the vector, and `w` used to flip the binormal if needed.

Unity calculates the other surface vector (binormal) by taking a cross product between the normal and the tangent, and multiplying the result by tangent.w. Therefore, `w` should always be 1 or -1.

You should calculate tangents yourself if you plan to use bump-mapped shaders on the Mesh. Assign tangents after assigning normals or using RecalculateNormals.

**Note:** To make changes to the tangents, it is important to copy the tangents from the Mesh. Once the tangents have been copied and changed, the tangents can be reassigned back to the Mesh.
