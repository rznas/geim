# Sprites, sprite sheets, and Tilemaps (2D)

Unity 6 (6000.x). Grounded in the embedded `references/api/` pages; not
compile-tested here (no Editor installed).

## Importing a texture as a sprite

Source: `references/api/TextureImporter.md`, `TextureImporterType.md`,
`TextureImporter-spriteImportMode.md`.

Set the importer's `textureType = TextureImporterType.Sprite` (vs `Default` for a
plain albedo/3D texture). For a single graphic, leave the import mode at **Single**;
for a sheet, use **Multiple** (next section).

`spritePixelsPerUnit` (default 100) controls world size: a 100-px sprite at PPU 100 is
1 Unity unit (≈1 m) wide. Lower PPU → bigger sprite in the world. `spritePivot` and
`spriteBorder` set the pivot and 9-slice borders.

Pixel-art vs smooth (the crisp/blurry switch):

| Goal | `filterMode` | `mipmapEnabled` | `textureCompression` |
| --- | --- | --- | --- |
| Crisp pixel art | `FilterMode.Point` | `false` | None (avoid block artifacts) |
| Smooth/HD art | `FilterMode.Bilinear`/`Trilinear` | `true` (if it shrinks on screen) | Compressed OK |

`filterMode`, `mipmapEnabled`, `wrapMode` are all on `TextureImporter`
(`references/api/TextureImporter-filterMode.md`,
`TextureImporter-mipmapEnabled.md`). The default bilinear + mipmaps makes pixel
art blurry — that's the #1 "my pixels look muddy".

```csharp
// editor-side: configure a PNG as a crisp pixel-art sprite
var ti = (TextureImporter)AssetImporter.GetAtPath("Assets/hero.png");
ti.textureType          = TextureImporterType.Sprite;
ti.spritePixelsPerUnit  = 16;                   // 16px = 1 unit (typical pixel art)
ti.filterMode           = FilterMode.Point;     // no smoothing
ti.mipmapEnabled        = false;
ti.SaveAndReimport();
```

## Sprite sheets — Multiple mode + slicing

Source: `references/api/SpriteImportMode.Multiple.md`
("Sprites are multiple image sections extracted from the texture"),
`TextureImporter-spriteImportMode.md`, `Sprite.Create.md`.

A sprite sheet is one texture holding many frames. Set
`spriteImportMode = SpriteImportMode.Multiple`, then **slice** it in the **Sprite
Editor** (Grid By Cell Size / Grid By Cell Count, or Automatic). Each slice becomes a
named `Sprite` **sub-asset** of the texture. Wrong slicing (cell size or count not
matching the sheet) is what produces "frames are offset / half-frames" — match the
grid to the actual cell layout, and watch for padding between frames.

`SpriteImportMode` values: `None`, `Single`, `Multiple`, `Polygon`
(`references/api/SpriteImportMode.md`).

You can also build a sprite from a texture rect at runtime with `Sprite.Create`
(verbatim from `Sprite.Create.md`): `rect` is the sub-texture in pixels, `pivot`
is normalized (0,0 bottom-left … 1,1 top-right), and `pixelsPerUnit` controls size.

```csharp
// Verbatim shape from Sprite.Create.md — whole texture, centered pivot.
mySprite = Sprite.Create(tex, new Rect(0f, 0f, tex.width, tex.height),
                         new Vector2(0.5f, 0.5f), 100.0f);
```

## Drawing a sprite — SpriteRenderer

Source: `references/api/SpriteRenderer.md` ("A component that renders a Sprite…
renders the assigned Sprite asset… using the position, rotation and scale from the
Transform"). Verbatim:

```csharp
using UnityEngine;
public class Example : MonoBehaviour
{
    public Sprite sprite;
    private SpriteRenderer m_spriteRenderer;

    private void Awake()
    {
        m_spriteRenderer = GetComponent<SpriteRenderer>();
    }

    private void Start()
    {
        m_spriteRenderer.sprite = sprite;          // assign what to draw
        m_spriteRenderer.color  = Color.red;       // tint
        m_spriteRenderer.flipX  = true;            // mirror horizontally
        m_spriteRenderer.flipY  = true;
    }
}
```

Other useful members: `sortingLayerName` / `sortingOrder` (draw order between
sprites), `drawMode` (`Simple`/`Sliced`/`Tiled` for 9-slice + tiling), `maskInteraction`
(for SpriteMask). `flipX/flipY` mirror without a second sprite — handy for left/right
locomotion.

### Frame-by-frame sprite animation

Two routes: (1) put the sliced frames into an **AnimationClip** and drive it from an
Animator Controller exactly like any other clip — see `animation_mecanim.md`
(parameters → states); or (2) swap `spriteRenderer.sprite` yourself on a timer in C#.
Route (1) is the Mecanim-consistent choice and integrates with transitions/blend.

## Tilemaps (2D tile-based levels)

Source: `references/api/Tilemaps.Tilemap.md` ("The Tilemap stores Sprites in a
layout marked by a Grid component"), `Tilemaps.Tilemap.SetTile.md`,
`Tilemaps.Tile.md`, `Tilemaps.TileBase.md`.

The pieces:
- A **Grid** GameObject defines the cell layout (`layoutGrid` on the Tilemap).
- A **Tilemap** component (child of the Grid) holds the placed tiles; renders via a
  `TilemapRenderer`.
- **Tile assets** (`Tile`, or a custom `TileBase`/scriptable tile) reference a sprite
  and optional collider/animation data. A **Tile Palette** is the authoring brush.

Paint from C# with `Tilemap.SetTile(Vector3Int position, TileBase tile)`
(`Tilemaps.Tilemap.SetTile.md`: "Sets a Tile at the given XYZ coordinates of a
cell in the Tilemap"):

```csharp
using UnityEngine;
using UnityEngine.Tilemaps;

public class TilePainter : MonoBehaviour
{
    [SerializeField] Tilemap tilemap;   // assign the Tilemap component
    [SerializeField] TileBase groundTile;

    void Start()
    {
        // Fill a 10x1 strip of ground at y = 0.
        for (int x = 0; x < 10; x++)
            tilemap.SetTile(new Vector3Int(x, 0, 0), groundTile);
    }
}
```

`SetTiles(...)` sets many at once (faster for large fills);
`GetTile(position)` reads one back (`Tilemaps.Tilemap.GetTile.md`). Tile
animation runs at `tilemap.animationFrameRate`. Tile colliders come from a
`TilemapCollider2D` plus the tile's collider type — collision *layers/masks* are
`unity-physics-and-ai`.

## Terrain (brief)

For large outdoor 3D ground there is the **Terrain** system (`Terrain` + `TerrainData`,
in `references/api/` — `Terrain.md`, `TerrainData.md`, `TerrainTools`). A
heightmap-based mesh with splat-mapped textures and tree/detail instancing, sculpted in
the Editor or driven by `TerrainData.SetHeights`. It's a niche of this skill; reach into
the `Terrain*`/`TerrainData*` api pages when an open-world ground is in scope.
