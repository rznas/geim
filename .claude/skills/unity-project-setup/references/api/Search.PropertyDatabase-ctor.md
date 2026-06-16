<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.PropertyDatabase-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| filePath | Path to the backing file. |

### Description

Constructs a new instance of a PropertyDatabase.

If **filePath** does not exist, the file will be created automatically. The PropertyDatabase will not update the backing file automatically, you will have to trigger the update manually with PropertyDatabase.TriggerBackgroundUpdate. If another PropertyDatabase is already opened on the same file, the PropertyDatabase will not be opened and will be invalid. See valid.

### Parameters

| Parameter | Description |
| --- | --- |
| filePath | Path to the backing file. |
| autoFlush | Boolean indicating if the backing file will be updated automatically or not. |
| backgroundUpdateDebounceInSeconds | Time between changes for the automatic background update to trigger. |

### Description

Constructs a new instance of a PropertyDatabase.

If **filePath** does not exist, the file will be created automatically. If **autoBackgroundUpdate** is true, the PropertyDatabase will automatically update the backing file after changes have completed. To prevent updating the file too often when there is a lot of changes, you can specify a delay between changes with **backgroundUpdateDebounceInSeconds** before the update can trigger. For example, with the default value of 5 seconds, a background update will only happen after 5 seconds have passed since the last changes to the PropertyDatabase. If another PropertyDatabase is already opened on the same file, the PropertyDatabase will not be opened and will be invalid. See valid.
