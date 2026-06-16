<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings-useDirect3D11.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Should Direct3D 11 be used when available?

Using DX11 enables more modern graphics features, like Compute Shaders, tessellation shaders and other shader model 4.0-5.0 features.

This flag is specific to Windows Editor, Standalone and Web Player builds.

When set to `true`, Unity will try to use the Direct3D 11 graphics API (which works on Windows Vista or later OS, and DX10+ level GPU). If that is not available (e.g. DX9 level GPU or Windows XP), Direct3D 9 will be used instead.

When set to `false`, Direct3D 9 API will be used.
