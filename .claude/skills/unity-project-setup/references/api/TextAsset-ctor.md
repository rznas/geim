<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextAsset-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| text | The text contents for the TextAsset. |

### Description

Creates a new TextAsset with specified text contents.

This constructor creates a TextAsset, not a plain text file. To save a TextAsset to disk using the AssetDatabase class, save the TextAsset with the .asset extension.

### Parameters

| Parameter | Description |
| --- | --- |
| bytes | The byte contents for the TextAsset. |

### Description

Creates a new TextAsset with specified byte contents.

This constructor creates a TextAsset, not a plain text file. To save a TextAsset to disk using the AssetDatabase class, save the TextAsset with the .asset extension.

Use this form of the constructor to specify an arbitrary byte buffer to store in the TextAsset. Use the TextAsset.bytes property to access this data or use the TextAsset.text property to interpret the byte data as text.
