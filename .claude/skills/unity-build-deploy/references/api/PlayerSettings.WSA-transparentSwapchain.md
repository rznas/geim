<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.WSA-transparentSwapchain.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets AlphaMode on the swap chain to DXGI_ALPHA_MODE_PREMULTIPLIED.

This setting is only used for UWP projects that use the XAML build type. By enabling this setting, you will be able to compose Unity content with other XAML content in your application. Note that because the swapchain assumes premultiplied alpha, you may need to make adjustments to your content to achieve the expected output, particularly for transparent content.
