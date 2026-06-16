<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WWW-text.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the contents of the fetched web page as a string (Read Only).

If the object has not finished downloading the data, it will return an empty string. Use isDone or `yield` to see if the data is available.

This function expects the web page contents in UTF-8 or ASCII character set. The returned string might be not correct for other characters or binary data. Use bytes property to get raw byte array in these cases.

Additional resources: bytes property.
