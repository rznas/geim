<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WSA.Tile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents tile on Windows start screen

This class can be used to create or update secondary tiles on start screen and get instances of tiles to send notifications to them.

### Static Properties

| Property | Description |
| --- | --- |
| main | Returns applications main tile |

### Properties

| Property | Description |
| --- | --- |
| exists | Whether secondary tile is pinned to start screen. |
| hasUserConsent | Whether secondary tile was approved (pinned to start screen) or rejected by user. |
| id | A unique string, identifying secondary tile |

### Public Methods

| Method | Description |
| --- | --- |
| Delete | Show a request to unpin secondary tile from start screen. |
| PeriodicBadgeUpdate | Starts periodic update of a badge on a tile. |
| PeriodicUpdate | Starts periodic update of a tile. |
| RemoveBadge | Remove badge from tile. |
| StopPeriodicBadgeUpdate | Stops previously started periodic update of a tile. |
| StopPeriodicUpdate | Stops previously started periodic update of a tile. |
| Update | Send a notification for tile (update tiles look). |
| UpdateBadgeImage | Sets or updates badge on a tile to an image. |
| UpdateBadgeNumber | Set or update a badge on a tile to a number. |

### Static Methods

| Method | Description |
| --- | --- |
| CreateOrUpdateSecondary | Creates new or updates existing secondary tile. |
| DeleteSecondary | Show a request to unpin secondary tile from start screen. |
| Exists | Whether secondary tile is pinned to start screen. |
| GetSecondaries | Gets all secondary tiles. |
| GetSecondary | Returns the secondary tile, identified by tile id. |
| GetTemplate | Get template XML for tile notification. |
