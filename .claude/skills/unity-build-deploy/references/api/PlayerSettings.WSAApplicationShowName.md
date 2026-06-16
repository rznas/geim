<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.WSAApplicationShowName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options for which tile types to display the application name on.

Tiles you exclude using the property do not display the application name and only display the logo image. There are no options that include the small tile size because this size can't display the application name.
**Note:** If you do not set logo images for the corresponding tiles (medium, large, and wide), the platform ignores the tiles and does not display the application name. **Important:** Unity writes these settings to the package manifest when it builds Universal Windows Platform for the first time. Building into an existing Universal Windows Platform build folder does not update the package manifest and does not apply any changes. Additional resources: tileShowName

### Properties

| Property | Description |
| --- | --- |
| NotSet | Indicates that you have not set the application name and to use the default Universal Windows Platform behavior. |
| AllLogos | Displays the application name on all tile sizes. |
| NoLogos | Doesn't display the application name on any tile size. |
| StandardLogoOnly | Displays the application name for medium and large tiles. |
| WideLogoOnly | Displays the application name for the wide tiles. |
