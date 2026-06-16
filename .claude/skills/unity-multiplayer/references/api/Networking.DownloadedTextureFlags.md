<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.DownloadedTextureFlags.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Flags to be set in DownloadedTextureParams to indicate properties of the texture that will be created.

These flags should be combined using bitwise-or operator.

### Properties

| Property | Description |
| --- | --- |
| None | Special value indicating that none of the other options are being used. |
| Readable | Indicates that created texture must be readable. Allows reading values of texture pixels, but increases memory usage. |
| MipmapChain | Indicates that created texture must have mipmaps (multiple versions of different quality of the same texture). More efficient, but uses more memory. |
| LinearColorSpace | Indicates that a texture using linear color space must be created. |
