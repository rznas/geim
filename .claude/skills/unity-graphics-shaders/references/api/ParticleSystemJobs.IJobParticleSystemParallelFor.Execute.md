<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystemJobs.IJobParticleSystemParallelFor.Execute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| jobData | Contains the particle properties. |
| index | The index of the current particle. |

### Description

Implement this method to access and modify particle properties.

Below is an example of a script that you can use to attract particles to a supplied position.

```csharp
using System;
using Unity.Collections;
using UnityEngine;
using UnityEngine.ParticleSystemJobs;public class ParticleJob : MonoBehaviour
{
    public float effectRange = 2.0f;
    public float effectStrength = 1.0f;
    public float oscillationSpeed = 12.0f;
    public bool useJobSystem = false;    private float oscillationPhase;    private ParticleSystem ps;
    private UpdateParticlesJob job = new UpdateParticlesJob();
    private ParticleSystem.Particle[] mainThreadParticles;    private static float Remap(float x, float x1, float x2, float y1, float y2)
    {
        var m = (y2 - y1) / (x2 - x1);
        var c = y1 - m * x1;        return m * x + c;
    }    private static Vector3 CalculateVelocity(ref UpdateParticlesJob job, Vector3 delta)
    {
        float attraction = job.effectStrength / job.effectRangeSqr;
        return delta.normalized * attraction;
    }    private static Color32 CalculateColor(ref UpdateParticlesJob job, Vector3 delta, Color32 srcColor, UInt32 seed)
    {
        var targetColor = new Color32((byte)(seed >> 24), (byte)(seed >> 16), (byte)(seed >> 8), srcColor.a);
        float lerpAmount = delta.magnitude * job.inverseEffectRange;
        lerpAmount = lerpAmount * 0.25f + 0.75f;
        return Color32.Lerp(targetColor, srcColor, lerpAmount);
    }    void Start()
    {
        ps = GetComponent<ParticleSystem>();
        oscillationPhase = UnityEngine.Random.Range(0.0f, Mathf.PI * 2.0f);
    }    void Update()
    {
        Vector2 mouse = Input.mousePosition;
        job.effectPosition = Camera.main.ScreenToWorldPoint(new Vector3(mouse.x, mouse.y, -Camera.main.transform.position.z));
        job.effectRangeSqr = effectRange * effectRange;
        job.effectStrength = effectStrength * Remap(Mathf.Sin(oscillationPhase + Time.time * oscillationSpeed), -1, 1, -1, 0.5f);
        job.inverseEffectRange = (1.0f / effectRange);        if (!useJobSystem)
        {
            if (mainThreadParticles == null)
                mainThreadParticles = new ParticleSystem.Particle[ps.main.maxParticles];            var count = ps.GetParticles(mainThreadParticles);
            for (int i = 0; i < count; i++)
            {
                Vector3 position = mainThreadParticles[i].position;
                Vector3 delta = position - job.effectPosition;
                if (delta.sqrMagnitude < job.effectRangeSqr)
                {
                    mainThreadParticles[i].velocity += CalculateVelocity(ref job, delta);
                    mainThreadParticles[i].startColor = CalculateColor(ref job, delta, mainThreadParticles[i].startColor, mainThreadParticles[i].randomSeed);
                }
            }
            ps.SetParticles(mainThreadParticles, count);
        }
    }    void OnParticleUpdateJobScheduled()
    {
        if (useJobSystem)
            job.Schedule(ps, 2048);
    }    struct UpdateParticlesJob : IJobParticleSystemParallelFor
    {
        [ReadOnly]
        public Vector3 effectPosition;        [ReadOnly]
        public float effectRangeSqr;        [ReadOnly]
        public float effectStrength;        [ReadOnly]
        public float inverseEffectRange;        public void Execute(ParticleSystemJobData particles, int i)
        {
            var positionsX = particles.positions.x;
            var positionsY = particles.positions.y;
            var positionsZ = particles.positions.z;            var velocitiesX = particles.velocities.x;
            var velocitiesY = particles.velocities.y;
            var velocitiesZ = particles.velocities.z;            var colors = particles.startColors;            var randomSeeds = particles.randomSeeds;            Vector3 position = new Vector3(positionsX[i], positionsY[i], positionsZ[i]);
            Vector3 delta = (position - effectPosition);
            if (delta.sqrMagnitude < effectRangeSqr)
            {
                Vector3 velocity = CalculateVelocity(ref this, delta);                velocitiesX[i] += velocity.x;
                velocitiesY[i] += velocity.y;
                velocitiesZ[i] += velocity.z;                colors[i] = CalculateColor(ref this, delta, colors[i], randomSeeds[i]);
            }
        }
    }
}
```

Here is a script that you can use with the above example, to supply the mouse position as the point to attract particles towards.

```csharp
using UnityEditor;
using UnityEngine;public class ParticleSpawner : MonoBehaviour
{
    public ParticleSystem prefab;
    public int systemCount = 128;
    public int particleEmissionRatePerSystem = 400;
    public float particleSystemShapeRadius = 1.0f;
    public float totalRadius = 5.0f;
    public float effectRange = 3.0f;
    public float effectStrength = 1.0f;
    public float oscillationSpeed = 10.0f;
    public bool hasTrails = true;
    public bool useJobSystem = false;    void Start()
    {
        var material = new Material(Shader.Find("Legacy Shaders/Particles/Additive"));
        material.SetTexture("_MainTex", AssetDatabase.GetBuiltinExtraResource<Texture2D>("Default-Particle.psd"));        for (int i = 0; i < systemCount; i++)
        {
            var go = GameObject.Instantiate(prefab);
            var ps = go.GetComponent<ParticleSystem>();            go.GetComponent<ParticleSystemRenderer>().sharedMaterial = material;            float x = (float)i / systemCount;
            float theta = x * Mathf.PI * 2;            var transform = go.GetComponent<Transform>();
            transform.position = new Vector3(Mathf.Sin(theta), Mathf.Cos(theta), 0.0f) * totalRadius;            var main = ps.main;
            main.startColor = Color.HSVToRGB(x, Random.Range(0.5f, 1.0f), Random.Range(0.5f, 1.0f));            var emission = ps.emission;
            emission.rateOverTime = particleEmissionRatePerSystem;            var shape = ps.shape;
            shape.radius = particleSystemShapeRadius;            var trails = ps.trails;
            trails.enabled = hasTrails;            var updateJob = go.GetComponent<ParticleJob>();
            updateJob.effectRange = effectRange;
            updateJob.effectStrength = effectStrength;
            updateJob.oscillationSpeed = oscillationSpeed;
            updateJob.useJobSystem = useJobSystem;
        }
    }    // UI
    void OnGUI()
    {
        float x = 25.0f;
        float y = 60.0f;
        float spacing = 40.0f;        EditorGUI.BeginChangeCheck();        GUIStyle backgroundStyle = new GUIStyle(GUI.skin.box);
        backgroundStyle.normal.background = Texture2D.whiteTexture;
        var oldColor = GUI.backgroundColor;
        GUI.backgroundColor = new Color(0.5f, 0.5f, 0.5f, 0.5f);
        GUI.Box(new Rect(x - 10, y - 35, 260, 230), "Options", backgroundStyle);
        GUI.backgroundColor = oldColor;        GUI.Label(new Rect(x, y, 140, 30), "Effect Range");
        effectRange = GUI.HorizontalSlider(new Rect(x + 140, y + 5, 100, 30), effectRange, 0.0f, 10.0f);
        y += spacing;        GUI.Label(new Rect(x, y, 140, 30), "Effect Strength");
        effectStrength = GUI.HorizontalSlider(new Rect(x + 140, y + 5, 100, 30), effectStrength, 0.0f, 10.0f);
        y += spacing;        GUI.Label(new Rect(x, y, 140, 30), "Oscillation Speed");
        oscillationSpeed = GUI.HorizontalSlider(new Rect(x + 140, y + 5, 100, 30), oscillationSpeed, 0.0f, 20.0f);
        y += spacing;        hasTrails = GUI.Toggle(new Rect(x, y + 5, 140, 30), hasTrails, "Trails");
        y += spacing;        useJobSystem = GUI.Toggle(new Rect(x, y + 5, 140, 30), useJobSystem, "Use C# Job System");
        y += spacing;        if (EditorGUI.EndChangeCheck())
        {
            ParticleJob[] updateJobs = GameObject.FindObjectsOfType<ParticleJob>();
            for (int i = 0; i < updateJobs.Length; i++)
            {
                var updateJob = updateJobs[i];
                updateJob.effectRange = effectRange;
                updateJob.effectStrength = effectStrength;
                updateJob.oscillationSpeed = oscillationSpeed;
                updateJob.useJobSystem = useJobSystem;                var ps = updateJob.GetComponent<ParticleSystem>();                var trails = ps.trails;
                trails.enabled = hasTrails;
            }
        }
    }
}
```
