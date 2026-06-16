<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Lightmapping.Tetrahedralize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| positions | An array of Light Probe positions. |
| outIndices | An array that Unity populates with updated Light Probe indices. |
| outPositions | An array that Unity populates with updated Light Probe positions. |

### Description

Calculates tetrahderons from positions using Delaunay Tetrahedralization.

This is an Editor-only method for visualizing the tetrahedrons that Unity uses for blending probe lighting.

When you pass an array of Light Probe positions, Unity performs the same calculations as it does when regenerating the tetrahedrons, and populates the out parameters with the results of those calculations:

`outIndices`: every four entries correspond to the vertices of a tetrahedron `outPositions`: indexed in the same order as `outIndices`, containing the positions of the corresponding probes

Unity considers Light Probes at the same position (within some tolerance) as duplicates, and does not include them in the tetrahedralization. When this happens, only the first element is included. As a result, `outPositions` might have fewer elements than `positions`.

Note that this method does not cause Unity to update the tetrahedrons that it uses for Light Probes; use this method only for visualizing the results of such an operation.

Additional resources: LightProbes.Tetrahedralize, LightProbes.TetrahedralizeAsync, Light Probes and Scene loading.
