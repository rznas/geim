<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WSA.Tile.Update.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| xml | A string containing XML document for new tile look. |
| medium | An `uri` to 150x150 image, shown on medium tile. |
| wide | An `uri` to a 310x150 image to be shown on a wide tile (if such issupported). |
| large | An `uri` to a 310x310 image to be shown on a large tile (if such is supported). |
| text | A text to shown on a tile. |

### Description

Send a notification for tile (update tiles look).

A tile is updated by providing and XML document with new look. The second version is a convenience method to make tile display image, text or both. At least one of medium and text argumets must be provided, and these two are used to determine whether this is image-only, text-only or image-and-text tile. Uris ms-appx:/// and ms-appdata://`local` can be used to access local application resources. If uri points to network resource, internet access capability must be enabled in applications manifest.
