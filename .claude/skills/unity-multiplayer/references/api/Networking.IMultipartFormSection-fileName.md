<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.IMultipartFormSection-fileName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**string** The desired file name of this section, or `null` if this is not a file section.

### Description

Returns a string denoting the desired filename of this section on the destination server.

If this property returns a non-null string, then this is assumed to be a file section, and the file's name will be defined by the returned string.

If you do not wish your section to be a file section, simply return `null` from this property.
