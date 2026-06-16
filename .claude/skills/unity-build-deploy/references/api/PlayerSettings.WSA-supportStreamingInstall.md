<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.WSA-supportStreamingInstall.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates whether you can launch the Universal Windows Platform application package before installation is complete.

In the Editor, Unity displays this under **Streaming Install** in UWP Player Settings. 
If you enable Streaming Install, you must also set a lastRequiredScene value to indicate which scenes the application requires to launch and which scenes are streamable. 

Unity generates an AppxContentGroupMap.xml file which specifies the assets that the application requires to launch and which the application can stream in the background while the application is running. 
The application requires the assets from the scenes from the top of the Build list through to the lastRequiredScene and does not launch until it installs these assets. The application considers assets from the remaining scenes as streamable which allows the application to launch before installing these assets.. 

For information on Streaming install, see [Microsoft's documentation.](https://docs.microsoft.com/en-us/windows/msix/package/streaming-install)
