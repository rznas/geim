<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Tilemaps.TileAnimationFlags.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options for flags controlling behavior for a Tile Animation on a Tilemap.

### Properties

| Property | Description |
| --- | --- |
| None | Sets no TileAnimationFlags and the Tile Animation will run normally. |
| LoopOnce | Loops the Tile Animation once, then stops on the last Sprite of the animation. |
| PauseAnimation | Pauses the Tile Animation, stopping it from running. |
| UpdatePhysics | Updates the Physics Shape in the TilemapCollider2D whenever the Tile Animation switches to the next Sprite in the animation. |
| UnscaledTime | When true, the unscaled time is used to run the Tile Animation. Otherwise, the scaled time is used to run the Tile Animation. |
| SyncAnimation | When set, this will sync the start time of this Tile Animation with other Tile Animations that are the same. |
