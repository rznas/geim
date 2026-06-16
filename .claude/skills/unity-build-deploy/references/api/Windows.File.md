<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windows.File.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides static methods for file operations.

The UnityEngine.Windows.File class is available only for the Universal Windows Platform. It was recommended during the times in which the System.IO.File class was not available for the Universal Windows Platform. Now, the System.IO.File class is available for the Universal Windows Platform, and Unity recommends not using the UnityEngine.Windows.File class anymore, but the System.IO.File class instead.

### Static Methods

| Method | Description |
| --- | --- |
| Delete | Deletes the specified file. |
| Exists | Determines whether the specified file exists. |
| ReadAllBytes | Opens a binary file, reads the contents of the file into a byte array, and then closes the file. |
| WriteAllBytes | Creates a new file, writes the specified byte array to the file, and then closes the file. If the target file already exists, it is overwritten. |
