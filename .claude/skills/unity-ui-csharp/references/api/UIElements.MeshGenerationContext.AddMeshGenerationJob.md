<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.MeshGenerationContext.AddMeshGenerationJob.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| jobHandle | JobHandle to wait for. |

### Description

Instructs the renderer to wait for the completion of the provided JobHandle before beginning processing the meshes.

The following code example shows how to use a job to generate a mesh:

```csharp
using System;
using Unity.Collections;
using Unity.Jobs;
using UnityEngine;
using UnityEngine.UIElements;class CheckerboardElement : VisualElement
{
    struct CheckerboardJob : IJob
    {
        [WriteOnly] public NativeSlice<Vertex> vertices;
        [WriteOnly] public NativeSlice<ushort> indices;        public int horizontalCount;
        public int verticalCount;
        public float divisions;
        public Color32 color1;
        public Color32 color2;        public void Execute()
        {
            Span<Color32> colors = stackalloc Color32[2];
            colors[0] = color1;
            colors[1] = color2;
            int colorIndex = 0;            int vCount = 0;
            int iCount = 0;            float left = 0;
            float right = divisions;
            for (int i = 0; i < horizontalCount; ++i)
            {
                float top = 0;
                float bottom = divisions;
                for (int j = 0; j < verticalCount; ++j)
                {
                    colorIndex = (i ^ j) & 1;                    Color32 color = colors[colorIndex];                    vertices[vCount + 0] = new Vertex { position = new Vector3(left, bottom), tint = color };
                    vertices[vCount + 1] = new Vertex { position = new Vector3(left, top), tint = color };
                    vertices[vCount + 2] = new Vertex { position = new Vector3(right, top), tint = color };
                    vertices[vCount + 3] = new Vertex { position = new Vector3(right, bottom), tint = color };                    indices[iCount + 0] = (ushort)(vCount + 0);
                    indices[iCount + 1] = (ushort)(vCount + 1);
                    indices[iCount + 2] = (ushort)(vCount + 2);
                    indices[iCount + 3] = (ushort)(vCount + 2);
                    indices[iCount + 4] = (ushort)(vCount + 3);
                    indices[iCount + 5] = (ushort)(vCount + 0);                    vCount += 4;
                    iCount += 6;
                    top += divisions;
                    bottom += divisions;
                }                left += divisions;
                right += divisions;
            }
        }
    }    int m_Divisions;
    Color32 m_Color1;
    Color32 m_Color2;    public CheckerboardElement(int divisions, Color32 color1, Color32 color2)
    {
        generateVisualContent = OnGenerateVisualContent;
        m_Divisions = divisions;
        m_Color1 = color1;
        m_Color2 = color2;
    }    void OnGenerateVisualContent(MeshGenerationContext mgc)
    {
        int horizontalCount = Mathf.FloorToInt(layout.width / m_Divisions);
        int verticalCount = Mathf.FloorToInt(layout.height / m_Divisions);        if (horizontalCount == 0 || verticalCount == 0)
            return;        var job = new CheckerboardJob
        {
            horizontalCount = horizontalCount,
            verticalCount = verticalCount,
            divisions = m_Divisions,
            color1 = m_Color1,
            color2 = m_Color2
        };        int quads = horizontalCount * verticalCount;        mgc.AllocateTempMesh(quads * 4, quads * 6, out job.vertices, out job.indices);
        mgc.DrawMesh(job.vertices, job.indices);        JobHandle jobHandle = job.Schedule();
        mgc.AddMeshGenerationJob(jobHandle);
    }
}
```
