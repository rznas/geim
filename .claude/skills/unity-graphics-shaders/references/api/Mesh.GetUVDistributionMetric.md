<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.GetUVDistributionMetric.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| uvSetIndex | UV set index to return the UV distibution metric for. 0 for first. |

### Returns

**float** Average of triangle area / uv area.

### Description

The UV distribution metric can be used to calculate the desired mipmap level based on the position of the camera.

The example code shows how this value can be used with some camera properties to calculate a required mipmap level.

```csharp
using UnityEngine;public class MyMipmapClass : MonoBehaviour
{
    private Vector3 m_CameraPosition;
    private float m_CameraEyeToScreenDistanceSquared;    private float m_MeshUVDistributionMetric;
    private float m_TexelCount;
    private Texture2D m_Texture;    public void SetView(Vector3 cameraPosition, float cameraHalfAngle, float screenHalfHeight, float aspectRatio)
    {
        m_CameraPosition = cameraPosition;
        m_CameraEyeToScreenDistanceSquared = Mathf.Pow(screenHalfHeight / Mathf.Tan(cameraHalfAngle), 2.0f);        // Switch to using the horizontal dimension if larger
        if (aspectRatio > 1.0f)    // Width is larger than height
            m_CameraEyeToScreenDistanceSquared *= aspectRatio;
    }    public void SetView(Camera camera)
    {
        float cameraHA = Mathf.Deg2Rad * camera.fieldOfView * 0.5f;
        float screenHH = (float)camera.pixelHeight * 0.5f;
        SetView(camera.transform.position, cameraHA, screenHH, camera.aspect);
    }    private int CalculateMipmapLevel(Bounds bounds, float uvDistributionMetric, float texelCount)
    {
        // based on  http://web.cse.ohio-state.edu/~crawfis.3/cse781/Readings/MipMapLevels-Blog.html
        // screenArea = worldArea * (ScreenPixels/(D*tan(FOV)))^2
        // mip = 0.5 * log2 (uvArea / screenArea)
        float dSq = bounds.SqrDistance(m_CameraPosition);
        if (dSq < 1e-06)
            return 0;        // uvDistributionMetric is the average of triangle area / uv area (a ratio from world space triangle area to normalised uv area)
        // - triangle area is in world space
        // - uv area is in normalised units (0->1 rather than 0->texture size)        // m_CameraEyeToScreenDistanceSquared / dSq is the ratio of screen area to world space area        float v = (texelCount * dSq) / (uvDistributionMetric * m_CameraEyeToScreenDistanceSquared);
        float desiredMipLevel = 0.5f * Mathf.Log(v, 2);        return (int)desiredMipLevel;
    }    // Pick the larger two scales of the 3 components and multiply together
    float GetLargestAreaScale(float x, float y, float z)
    {
        if (x > y)
        {
            if (y > z)
                return x * y;
            else
                return x * z;
        }
        else // x <= y
        {
            if (x < z)
                return y * z;
            else
                return x * y;
        }
    }    public void Start()
    {
        Mesh mesh = GetComponent<MeshFilter>().sharedMesh;
        m_MeshUVDistributionMetric = mesh.GetUVDistributionMetric(0);        // If the mesh has a transform scale or uvscale it would need to be applied here        // Transform scale:
        // Use two scale values as we need an 'area' scale.
        // Use the two largest component to usa a more conservative selection and pick the higher resolution mip
        m_MeshUVDistributionMetric *= GetLargestAreaScale(transform.lossyScale.x, transform.lossyScale.y, transform.lossyScale.z);        // To determine uv scale for a material use Material.GetTextureScale
        // If there is a uv scale to apply then divide the m_MeshUVDistributionMetric by (uvScale.x * uvScale.y)        m_TexelCount = m_Texture.width * m_Texture.height;
    }    public void Update()
    {
        SetView(Camera.main);        m_Texture.requestedMipmapLevel = CalculateMipmapLevel(GetComponent<Renderer>().bounds, m_MeshUVDistributionMetric, m_TexelCount);
    }
}
```
