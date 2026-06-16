<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windows.Directory-temporaryFolder.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns a path to temporary folder.

On Windows Store Apps, it will be <main drive>:\Users\<user name>\AppData\Local\Packages\<package id>\TempState, directory is writeable, so you can create, read and write files to it. In Editor, it will be <your project path>\TempState.

**Note:** This property is only available on the Universal Windows Platform.
