<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.PanelInputConfiguration-autoCreatePanelComponents.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

When enabled, automatically creates child GameObjects with raycaster and event handler components attached to uGUI's EventSystem.

If this option is enabled, for each panel that uses the screen space overlay render mode, one child GameObject is created with a PanelRaycaster and PanelEventHandler components associated to it. 

 If the defaultEventCameraIsMainCamera option is enabled, Unity automatically adds one WorldDocumentRaycaster to handle inputs for world-space UI. When created automatically, the WorldDocumentRaycaster's Event Camera is not assigned. Instead, it automatically detects and uses the Main Camera in the Scene as the source for input. Otherwise, for each Camera in the eventCameras list, a distinct WorldDocumentRaycaster component is created and its Event Camera property is assigned to that Camera. 

 If this option is disabled, UI Toolkit events are disabled unless you manually add raycaster and event handler components to the scene manually and initialize them accordingly. 

 This property has no effect in the following situations:

- If there is no active EventSystem.
- If the panelInputRedirection option is set to not interact with the EventSystem.
