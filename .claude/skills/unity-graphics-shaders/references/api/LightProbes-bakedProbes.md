<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightProbes-bakedProbes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Coefficients of baked light probes.

Additional resources: SphericalHarmonicsL2.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class ExampleClass : MonoBehaviour
{
    public Color m_Ambient;
    public Light[] m_Lights;    // This script adds the contribution of an ambient light and an array of lights to calculate new spherical harmonics
    // coefficients for all the baked light probes. You can use this for example in the Editor or at runtime to replace
    // the light probe coefficients that Unity bakes.
    void Start()
    {
        SphericalHarmonicsL2[] bakedProbes = LightmapSettings.lightProbes.bakedProbes;
        Vector3[] probePositions = LightmapSettings.lightProbes.positions;
        int probeCount = LightmapSettings.lightProbes.count;
        for (int i = 0; i < probeCount; i++)
        {
            // Clear the probe and add ambient light
            bakedProbes[i].Clear();
            bakedProbes[i].AddAmbientLight(m_Ambient);
            
            // Add the contribution of directional and point lights
            foreach (Light light in m_Lights)
            {
                if (light.type == LightType.Directional)
                {
                    bakedProbes[i].AddDirectionalLight(-light.transform.forward, light.color, light.intensity);
                }
                else if (light.type == LightType.Point)
                {
                    AddPointLight(probePositions[i], light, ref bakedProbes[i]);
                }
            }
        }        LightmapSettings.lightProbes.bakedProbes = bakedProbes;
    }    void AddPointLight(Vector3 probePosition, Light light, ref SphericalHarmonicsL2 sh)
    {
        // Direction from the light probe to the point light
        Vector3 probeToLight = light.transform.position - probePosition;
        
        // Light attenuation between the point light and the light probe. This formula matches what Unity uses for
        // quadratic light attenuation.
        float attenuation = 1.0f / (1.0f + 25.0f * probeToLight.sqrMagnitude / (light.range * light.range));
        
        // With the normalized direction and the attenuation, the point light is equivalent to a directional
        // light in the context of a light probe.
        sh.AddDirectionalLight(probeToLight.normalized, light.color, light.intensity * attenuation);
    }
}
```
