<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TrailRenderer-textureMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Choose whether the U coordinate of the trail texture is tiled or stretched.

Stretching maps the texture along the trail with no repeats. Tiling maps the texture along the trail with repeats every world unit. To change the repeat rate, use TrailRenderer.textureScale or Material.SetTextureScale.

```csharp
using UnityEditor;
using UnityEngine;
using System.Collections;[RequireComponent(typeof(TrailRenderer))]
public class ExampleClass : MonoBehaviour
{
    public LineTextureMode textureMode = LineTextureMode.Stretch;
    public float textureScale = 1.0f;
    private TrailRenderer tr;    void Start()
    {
        tr = GetComponent<TrailRenderer>();
        tr.material = new Material(Shader.Find("Sprites/Default"));
    }    void Update()
    {
        tr.textureMode = textureMode;
        tr.textureScale = new Vector2(textureScale, 1.0f);
        tr.transform.position = new Vector3(Mathf.Sin(Time.time * 1.51f) * 7.0f, Mathf.Cos(Time.time * 1.27f) * 4.0f, 0.0f);
    }    void OnGUI()
    {
        textureMode = GUI.Toggle(new Rect(25, 25, 200, 30), textureMode == LineTextureMode.Tile, "Tiled") ? LineTextureMode.Tile : LineTextureMode.Stretch;        GUI.Label(new Rect(25, 60, 200, 30), "Tile Amount");
        textureScale = GUI.HorizontalSlider(new Rect(125, 65, 200, 30), textureScale, 0.1f, 4.0f);
    }
}
```
