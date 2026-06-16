<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/SL-SurfaceShaders-output.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Surface Shader output structures in the Built-In Render Pipeline

Standard output structure of surface **shaders** is this:

```
struct SurfaceOutput
{
    half3 Albedo;   // diffuse color
    half3 Normal;   // tangent space normal, if written
    half3 Emission;
    half Specular;  // specular power in 0..1 range
    half Gloss; // specular intensity
    half Alpha; // alpha for transparencies
};
```

In Unity 5, **surface shaders** can also use physically based lighting models. Built-in Standard and StandardSpecular lighting models (see below) use these output structures respectively:

```
struct SurfaceOutputStandard
{
    half3 Albedo;       // base (diffuse or specular) color
    half3 Normal;       // tangent space normal, if written
    half3 Emission;
    half Metallic;      // 0=non-metal, 1=metal
    half Smoothness;    // 0=rough, 1=smooth
    half Occlusion;     // occlusion (default 1)
    half Alpha;     // alpha for transparencies
};
struct SurfaceOutputStandardSpecular
{
    half3 Albedo;       // diffuse color
    half3 Specular; // specular color
    half3 Normal;       // tangent space normal, if written
    half3 Emission;
    half Smoothness;    // 0=rough, 1=smooth
    half Occlusion;     // occlusion (default 1)
    half Alpha;     // alpha for transparencies
};
```
