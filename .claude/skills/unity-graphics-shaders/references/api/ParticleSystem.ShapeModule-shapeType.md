<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.ShapeModule-shapeType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The type of shape to emit particles from.

```csharp
using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public ParticleSystemShapeType shapeType = ParticleSystemShapeType.Cone;
    private int shapeTypeIndex = 2;
    public float arc = 360.0f;
    public ParticleSystemShapeMultiModeValue arcMode = ParticleSystemShapeMultiModeValue.Random;
    public float arcSpread = 0.0f;
    public float arcSpeed = 1.0f;
    public float angle = 25.0f;
    public float radius = 1.0f;
    public float radiusThickness = 1.0f;
    public ParticleSystemShapeMultiModeValue radiusMode = ParticleSystemShapeMultiModeValue.Random;
    public float radiusSpread = 0.0f;
    public float radiusSpeed = 1.0f;
    public float donutRadius = 0.2f;
    public float length = 2.0f;
    public Vector3 boxThickness = new Vector3(0.0f, 0.0f, 0.0f);
    public ParticleSystemMeshShapeType meshShapeType;
    public float normalOffset = 0.0f;
    public float randomizeDirection = 0.0f;
    public float spherizeDirection = 0.0f;
    public float randomizePosition = 0.0f;
    public Vector3 position = new Vector3(0.0f, 0.0f, 0.0f);
    public Vector3 rotation = new Vector3(0.0f, 0.0f, 0.0f);
    public Vector3 scale = new Vector3(1.0f, 1.0f, 1.0f);    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var main = ps.main;
        main.startSpeed = 0.1f;
        main.startSize = 0.1f;
        main.startLifetime = 1.0f;        var emission = ps.emission;
        emission.rateOverTime = 500.0f;        var shape = ps.shape;
        shape.mesh = Resources.GetBuiltinResource<Mesh>("Capsule.fbx");
    }    void Update()
    {
        var shape = ps.shape;
        shape.shapeType = shapeType;
        shape.arc = arc;
        shape.arcMode = arcMode;
        shape.arcSpread = arcSpread;
        shape.arcSpeed = arcSpeed;
        shape.angle = angle;
        shape.radius = radius;
        shape.radiusMode = radiusMode;
        shape.radiusSpread = radiusSpread;
        shape.radiusSpeed = radiusSpeed;
        shape.radiusThickness = radiusThickness;
        shape.donutRadius = donutRadius;
        shape.length = length;
        shape.boxThickness = boxThickness;
        shape.meshShapeType = meshShapeType;
        shape.normalOffset = normalOffset;
        shape.randomDirectionAmount = randomizeDirection;
        shape.sphericalDirectionAmount = spherizeDirection;
        shape.randomPositionAmount = randomizePosition;
        shape.position = position;
        shape.rotation = rotation;
        shape.scale = scale;
    }    void OnGUI()
    {
        List<GUIContent> content = new List<GUIContent>();
        for (int i = 0; i < (int)ParticleSystemShapeType.SpriteRenderer + 1; i++)
        {
            ParticleSystemShapeType currentShapeType = (ParticleSystemShapeType)i;
            var obsoleteAttribute = Attribute.GetCustomAttribute(currentShapeType.GetType().GetField(currentShapeType.ToString()), typeof(ObsoleteAttribute), false);   // skip the obsolete shape types
            if (obsoleteAttribute == null)
                content.Add(new GUIContent(currentShapeType.ToString(), i.ToString()));
        }
        shapeTypeIndex = GUI.SelectionGrid(new Rect(25, 25, 1000, 80), shapeTypeIndex, content.ToArray(), content.Count / 3);
        shapeType = (ParticleSystemShapeType)int.Parse(content[shapeTypeIndex].tooltip);        float y = 120.0f;
        float spacing = 40.0f;        if (shapeType == ParticleSystemShapeType.Sphere || shapeType == ParticleSystemShapeType.Hemisphere)
        {
            GUI.Label(new Rect(25, y, 140, 30), "Radius");
            radius = GUI.HorizontalSlider(new Rect(165, y + 5, 100, 30), radius, 1.0f, 5.0f);
            y += spacing;            GUI.Label(new Rect(25, y, 140, 30), "Radius Thickness");
            radiusThickness = GUI.HorizontalSlider(new Rect(165, y + 5, 100, 30), radiusThickness, 0.0f, 1.0f);
            y += spacing;            GUI.Label(new Rect(25, y, 140, 30), "Arc");
            arc = GUI.HorizontalSlider(new Rect(165, y + 5, 100, 30), arc, 1.0f, 360.0f);
            y += spacing;            GUI.Label(new Rect(25, y, 140, 30), "Arc Mode");
            arcMode = (ParticleSystemShapeMultiModeValue)GUI.SelectionGrid(new Rect(165, 280, 360, 20), (int)arcMode, new GUIContent[] { new GUIContent("Random"), new GUIContent("Loop"), new GUIContent("Ping-Pong"), new GUIContent("Burst Spread") }, 4);
            y += spacing;            GUI.Label(new Rect(25, y, 140, 30), "Arc Spread");
            arcSpread = GUI.HorizontalSlider(new Rect(165, y + 5, 100, 30), arcSpread, 0.0f, 1.0f);
            y += spacing;            GUI.Label(new Rect(25, y, 140, 30), "Arc Speed");
            arcSpeed = GUI.HorizontalSlider(new Rect(165, y + 5, 100, 30), arcSpeed, 0.0f, 2.0f);
            y += spacing;
        }        if (shapeType == ParticleSystemShapeType.Cone || shapeType == ParticleSystemShapeType.ConeVolume)
        {
            GUI.Label(new Rect(25, y, 140, 30), "Angle");
            angle = GUI.HorizontalSlider(new Rect(165, y + 5, 100, 30), angle, 1.0f, 90.0f);
            y += spacing;            GUI.Label(new Rect(25, y, 140, 30), "Radius");
            radius = GUI.HorizontalSlider(new Rect(165, y + 5, 100, 30), radius, 0.2f, 5.0f);
            y += spacing;            GUI.Label(new Rect(25, y, 140, 30), "Radius Thickness");
            radiusThickness = GUI.HorizontalSlider(new Rect(165, y + 5, 100, 30), radiusThickness, 0.0f, 1.0f);
            y += spacing;            GUI.Label(new Rect(25, y, 140, 30), "Arc");
            arc = GUI.HorizontalSlider(new Rect(165, y + 5, 100, 30), arc, 1.0f, 360.0f);
            y += spacing;            GUI.Label(new Rect(25, y, 140, 30), "Arc Mode");
            arcMode = (ParticleSystemShapeMultiModeValue)GUI.SelectionGrid(new Rect(165, 280, 360, 20), (int)arcMode, new GUIContent[] { new GUIContent("Random"), new GUIContent("Loop"), new GUIContent("Ping-Pong"), new GUIContent("Burst Spread") }, 4);
            y += spacing;            GUI.Label(new Rect(25, y, 140, 30), "Arc Spread");
            arcSpread = GUI.HorizontalSlider(new Rect(165, y + 5, 100, 30), arcSpread, 0.0f, 1.0f);
            y += spacing;            GUI.Label(new Rect(25, y, 140, 30), "Arc Speed");
            arcSpeed = GUI.HorizontalSlider(new Rect(165, y + 5, 100, 30), arcSpeed, 0.0f, 2.0f);
            y += spacing;            if (shapeType == ParticleSystemShapeType.ConeVolume)
            {
                GUI.Label(new Rect(25, y, 140, 30), "Length");
                length = GUI.HorizontalSlider(new Rect(165, y + 5, 100, 30), length, 1.0f, 5.0f);
                y += spacing;
            }
        }        if (shapeType == ParticleSystemShapeType.Box || shapeType == ParticleSystemShapeType.BoxShell || shapeType == ParticleSystemShapeType.BoxEdge)
        {
            if (shapeType == ParticleSystemShapeType.BoxShell || shapeType == ParticleSystemShapeType.BoxEdge)
            {
                GUI.Label(new Rect(25, y, 140, 30), "Box Thickness");
                boxThickness.x = GUI.HorizontalSlider(new Rect(165, y + 5, 50, 30), boxThickness.x, 0.0f, 1.0f);
                boxThickness.y = GUI.HorizontalSlider(new Rect(220, y + 5, 50, 30), boxThickness.y, 0.0f, 1.0f);
                boxThickness.z = GUI.HorizontalSlider(new Rect(275, y + 5, 50, 30), boxThickness.z, 0.0f, 1.0f);
                y += spacing;
            }
        }        if (shapeType == ParticleSystemShapeType.Donut)
        {
            GUI.Label(new Rect(25, y, 140, 30), "Arc");
            arc = GUI.HorizontalSlider(new Rect(165, y + 5, 100, 30), arc, 1.0f, 360.0f);
            y += spacing;            GUI.Label(new Rect(25, y, 140, 30), "Arc Mode");
            arcMode = (ParticleSystemShapeMultiModeValue)GUI.SelectionGrid(new Rect(165, y, 360, 20), (int)arcMode, new GUIContent[] { new GUIContent("Random"), new GUIContent("Loop"), new GUIContent("Ping-Pong"), new GUIContent("Burst Spread") }, 4);
            y += spacing;            GUI.Label(new Rect(25, y, 140, 30), "Arc Spread");
            arcSpread = GUI.HorizontalSlider(new Rect(165, y + 5, 100, 30), arcSpread, 0.0f, 1.0f);
            y += spacing;            GUI.Label(new Rect(25, y, 140, 30), "Arc Speed");
            arcSpeed = GUI.HorizontalSlider(new Rect(165, y + 5, 100, 30), arcSpeed, 0.0f, 2.0f);
            y += spacing;            GUI.Label(new Rect(25, y, 140, 30), "Radius");
            radius = GUI.HorizontalSlider(new Rect(165, y + 5, 100, 30), radius, 0.2f, 5.0f);
            y += spacing;            GUI.Label(new Rect(25, y, 140, 30), "Radius Thickness");
            radiusThickness = GUI.HorizontalSlider(new Rect(165, y + 5, 100, 30), radiusThickness, 0.0f, 1.0f);
            y += spacing;            GUI.Label(new Rect(25, y, 140, 30), "Donut Radius");
            donutRadius = GUI.HorizontalSlider(new Rect(165, y + 5, 100, 30), donutRadius, 0.0f, 5.0f);
            y += spacing;
        }        if (shapeType == ParticleSystemShapeType.Circle)
        {
            GUI.Label(new Rect(25, y, 140, 30), "Arc");
            arc = GUI.HorizontalSlider(new Rect(165, y + 5, 100, 30), arc, 1.0f, 360.0f);
            y += spacing;            GUI.Label(new Rect(25, y, 140, 30), "Arc Mode");
            arcMode = (ParticleSystemShapeMultiModeValue)GUI.SelectionGrid(new Rect(165, y, 360, 20), (int)arcMode, new GUIContent[] { new GUIContent("Random"), new GUIContent("Loop"), new GUIContent("Ping-Pong"), new GUIContent("Burst Spread") }, 4);
            y += spacing;            GUI.Label(new Rect(25, y, 140, 30), "Arc Spread");
            arcSpread = GUI.HorizontalSlider(new Rect(165, y + 5, 100, 30), arcSpread, 0.0f, 1.0f);
            y += spacing;            GUI.Label(new Rect(25, y, 140, 30), "Arc Speed");
            arcSpeed = GUI.HorizontalSlider(new Rect(165, y + 5, 100, 30), arcSpeed, 0.0f, 2.0f);
            y += spacing;            GUI.Label(new Rect(25, y, 140, 30), "Radius");
            radius = GUI.HorizontalSlider(new Rect(165, y + 5, 100, 30), radius, 0.2f, 5.0f);
            y += spacing;            GUI.Label(new Rect(25, y, 140, 30), "Radius Thickness");
            radiusThickness = GUI.HorizontalSlider(new Rect(165, y + 5, 100, 30), radiusThickness, 0.0f, 1.0f);
            y += spacing;
        }        if (shapeType == ParticleSystemShapeType.SingleSidedEdge)
        {
            GUI.Label(new Rect(25, y, 140, 30), "Radius");
            radius = GUI.HorizontalSlider(new Rect(165, y + 5, 100, 30), radius, 0.2f, 5.0f);
            y += spacing;            GUI.Label(new Rect(25, y, 140, 30), "Radius Mode");
            radiusMode = (ParticleSystemShapeMultiModeValue)GUI.SelectionGrid(new Rect(165, y, 360, 20), (int)radiusMode, new GUIContent[] { new GUIContent("Random"), new GUIContent("Loop"), new GUIContent("Ping-Pong"), new GUIContent("Burst Spread") }, 4);
            y += spacing;            GUI.Label(new Rect(25, y, 140, 30), "Radius Spread");
            radiusSpread = GUI.HorizontalSlider(new Rect(165, y + 5, 100, 30), radiusSpread, 0.0f, 1.0f);
            y += spacing;            GUI.Label(new Rect(25, y, 140, 30), "Radius Speed");
            radiusSpeed = GUI.HorizontalSlider(new Rect(165, y + 5, 100, 30), radiusSpeed, 0.0f, 2.0f);
            y += spacing;
        }        if (shapeType == ParticleSystemShapeType.Mesh || shapeType == ParticleSystemShapeType.Sprite)
        {
            meshShapeType = (ParticleSystemMeshShapeType)GUI.SelectionGrid(new Rect(25, y + 5, 300, 20), (int)meshShapeType, new GUIContent[] { new GUIContent("Vertex"), new GUIContent("Edge"), new GUIContent("Polygon") }, 3);
            y += spacing;            GUI.Label(new Rect(25, y, 140, 30), "Normal Offset");
            normalOffset = GUI.HorizontalSlider(new Rect(165, y + 5, 100, 30), normalOffset, -3.0f, 3.0f);
            y += spacing;
        }        GUI.Label(new Rect(25, y, 140, 30), "Randomize Direction");
        randomizeDirection = GUI.HorizontalSlider(new Rect(165, y + 5, 100, 30), randomizeDirection, 0.0f, 1.0f);
        y += spacing;        if (shapeType != ParticleSystemShapeType.Sphere)
        {
            GUI.Label(new Rect(25, y, 140, 30), "Spherize Direction");
            spherizeDirection = GUI.HorizontalSlider(new Rect(165, y + 5, 100, 30), spherizeDirection, 0.0f, 1.0f);
            y += spacing;
        }        GUI.Label(new Rect(25, y, 140, 30), "Randomize Position");
        randomizePosition = GUI.HorizontalSlider(new Rect(165, y + 5, 100, 30), randomizePosition, 0.0f, 1.0f);
        y += spacing;        GUI.Label(new Rect(25, y, 140, 30), "Position");
        position.x = GUI.HorizontalSlider(new Rect(165, y + 5, 50, 30), position.x, -2.0f, 2.0f);
        position.y = GUI.HorizontalSlider(new Rect(220, y + 5, 50, 30), position.y, -2.0f, 2.0f);
        position.z = GUI.HorizontalSlider(new Rect(275, y + 5, 50, 30), position.z, -2.0f, 2.0f);
        y += spacing;        GUI.Label(new Rect(25, y, 140, 30), "Rotation");
        rotation.x = GUI.HorizontalSlider(new Rect(165, y + 5, 50, 30), rotation.x, 0.0f, 360.0f);
        rotation.y = GUI.HorizontalSlider(new Rect(220, y + 5, 50, 30), rotation.y, 0.0f, 360.0f);
        rotation.z = GUI.HorizontalSlider(new Rect(275, y + 5, 50, 30), rotation.z, 0.0f, 360.0f);
        y += spacing;        GUI.Label(new Rect(25, y, 140, 30), "Scale");
        scale.x = GUI.HorizontalSlider(new Rect(165, y + 5, 50, 30), scale.x, 0.0f, 3.0f);
        scale.y = GUI.HorizontalSlider(new Rect(220, y + 5, 50, 30), scale.y, 0.0f, 3.0f);
        scale.z = GUI.HorizontalSlider(new Rect(275, y + 5, 50, 30), scale.z, 0.0f, 3.0f);
        y += spacing;
    }
}
```
