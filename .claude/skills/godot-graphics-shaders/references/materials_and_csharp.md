# Materials & driving shaders from C# (Godot 4.6)

Shaders are GSL; C# only attaches materials and pushes uniform values. These C#
forms are verified against the 4.6 API.

## Setting / reading shader uniforms

```csharp
var mat = (ShaderMaterial)sprite.Material;
mat.SetShaderParameter("flash", 0.8f);
mat.SetShaderParameter("tint", new Color(1f, 0.5f, 0.2f));
float f = mat.GetShaderParameter("flash").AsSingle();   // returns Variant; convert
```

The parameter name is a string and must match the shader's `uniform` exactly,
case included. A typo fails silently — nothing changes.

Hit-flash example, driven from gameplay:

```csharp
public partial class Enemy : Node2D
{
    private ShaderMaterial _mat;
    public override void _Ready() => _mat = (ShaderMaterial)GetNode<Sprite2D>("Sprite").Material;

    public async void TakeHit()
    {
        _mat.SetShaderParameter("flash", 1.0f);
        await ToSignal(GetTree().CreateTimer(0.1), SceneTreeTimer.SignalName.Timeout);
        _mat.SetShaderParameter("flash", 0.0f);
    }
}
```

## Assigning a ShaderMaterial in code

```csharp
var shader = GD.Load<Shader>("res://shaders/dissolve.gdshader");
var mat = new ShaderMaterial { Shader = shader };
mat.SetShaderParameter("threshold", 0.0f);
GetNode<Sprite2D>("Sprite").Material = mat;
```

Usually you assign the material in the `.tscn` and only set parameters from C#;
build the material in code only when you need per-instance unique materials.

## StandardMaterial3D from C# (no shader needed)

```csharp
var m = new StandardMaterial3D
{
    AlbedoColor = new Color(0.2f, 0.6f, 0.9f),
    Metallic = 0.0f,
    Roughness = 0.4f,
    EmissionEnabled = true,
    Emission = new Color(0.2f, 0.6f, 0.9f),   // glows with WorldEnvironment glow on
};
GetNode<MeshInstance3D>("Mesh").MaterialOverride = m;
```

## Per-instance shader params (one shader, many tints)

When many nodes share one ShaderMaterial but need individual values, declare
`instance uniform` in the shader and set per-MeshInstance — no material
duplication:

```glsl
instance uniform vec4 instance_tint : source_color = vec4(1.0);
```
```csharp
meshInstance.SetInstanceShaderParameter("instance_tint", new Color(1,0,0));
```

## Materials in a .tscn

A ShaderMaterial as a sub-resource attached to a sprite:

```
[ext_resource type="Shader" path="res://shaders/flash.gdshader" id="1_sh"]

[sub_resource type="ShaderMaterial" id="mat1"]
shader = ExtResource("1_sh")
shader_parameter/flash = 0.0

[node name="Sprite" type="Sprite2D"]
material = SubResource("mat1")
texture = ExtResource("...")
```

Note the `shader_parameter/<name>` key form for default uniform values in the
scene file.
