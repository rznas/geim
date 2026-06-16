<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Tilemaps.TileBase.StartUp.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Position of the Tile on the Tilemap. |
| tilemap | The Tilemap the tile is present on. |
| go | The GameObject instantiated for the Tile. |

### Returns

**bool** Whether the call was successful.

### Description

StartUp is called on the first frame of the running Scene.

Use this to set values for the instantiated GameObject or run any logic at the beginning of the Scene.

```csharp
using UnityEngine;
using UnityEngine.Tilemaps;// Tile that instantiates a GameObject on Start and assigns a random rotation to the instanced GameObject
[CreateAssetMenu]
public class RandomRotationStartupTile : TileBase
{
    public Sprite m_Sprite;
    public GameObject m_Prefab;    public override void GetTileData(Vector3Int location, ITilemap tilemap, ref TileData tileData)
    {
        tileData.sprite = m_Sprite;
        tileData.gameObject = m_Prefab;
    }    public override bool StartUp(Vector3Int location, ITilemap tilemap, GameObject go)
    {
        if (go != null)
        {
            go.transform.rotation = Random.rotation;
        }
        return true;
    }
}
```
