<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorUtility.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Editor utility functions.

### Static Properties

| Property | Description |
| --- | --- |
| activePlayModeTint | The tint color that is currently applied the editor UI. |
| scriptCompilationFailed | True if there are any compilation error messages in the log. |

### Static Methods

| Method | Description |
| --- | --- |
| ClearDefaultParentObject | Clears the default parent GameObject from either a specific Scene or the active Scene. |
| ClearDirty | Clear target's dirty flag. |
| ClearProgressBar | Removes the progress bar. |
| CollectDeepHierarchy | Collect all objects in the hierarchy rooted at each of the given objects. |
| CollectDependencies | Calculates and returns a list of all assets the assets listed in roots depend on. |
| CompressCubemapTexture | Compress a cubemap texture. |
| CompressTexture | Compress a texture. |
| CopySerialized | Copies all serialized properties of a Unity Object from one object to another. |
| CopySerializedIfDifferent | Copy all settings of a Unity Object to a second Object if they differ. |
| CopySerializedManagedFieldsOnly | Copies the serializable fields from one managed object to another. |
| CreateGameObjectWithHideFlags | Creates a game object with HideFlags and specified components. |
| DisplayCancelableProgressBar | Displays or updates a progress bar that has a cancel button. |
| DisplayDialog | This method displays a modal dialog. |
| DisplayDialogComplex | Displays a modal dialog with three buttons. |
| DisplayPopupMenu | Displays a popup menu. |
| DisplayProgressBar | Displays or updates a progress bar. |
| EntityIdToObject | Translates an EntityId to a reference to an object. |
| FocusProjectWindow | Brings the project window to the front and focuses it. |
| FormatBytes | Returns a text for a number of bytes. |
| GetDirtyCount | Returns an integer that indicates the number of times the specified object's serialized properties have changed. |
| GetObjectEnabled | Is the object enabled (0 disabled, 1 enabled, -1 has no enabled button). |
| IsDirty | Gets a boolean value that indicates whether the specified object has changed since the last time it was saved. |
| IsPersistent | Determines if an object is stored on disk. |
| IsRunningUnderCPUEmulation | Gets a boolean value. This value indicates whether your CPU is unable to execute Unity natively and is running an emulated version. |
| IsUnityExtensionsInitialized | Returns a boolean value which represents the state of initialization of Unity extensions. |
| IsValidUnityYAML | Returns true if the provided string can be parsed as YAML. |
| NaturalCompare | Human-like sorting. |
| OpenFilePanel | Displays the "open file" dialog and returns the selected path name. |
| OpenFilePanelWithFilters | Displays the "open file" dialog and returns the selected path name. |
| OpenFolderPanel | Displays the "open folder" dialog and returns the selected path name. |
| OpenPropertyEditor | Open properties editor for an Object. |
| RequestScriptReload | The Unity Editor reloads script assemblies asynchronously on the next frame. This resets the state of all the scripts, but Unity does not compile any code that has changed since the previous compilation. |
| RevealInFinder | Opens a Finder window (macOS) or File Explorer window (Microsoft Windows) and points it to the specified file. |
| SaveFilePanel | Displays the "save file" dialog and returns the selected path name. |
| SaveFilePanelInProject | Displays the "save file" dialog in the Assets folder of the project and returns the selected path name. |
| SaveFolderPanel | Displays the "save folder" dialog and returns the selected path name. |
| SetCameraAnimateMaterials | Sets this camera to allow animation of materials in the Editor. |
| SetCameraAnimateMaterialsTime | Sets the global time for this camera to use when rendering. |
| SetCustomDiffTool | Set custom diff tool settings. |
| SetDefaultParentObject | Sets the default parent object for the active Scene. |
| SetDirty | Marks target object as dirty. |
| SetObjectEnabled | Set the enabled state of the object. |
| SetSelectedRenderState | Set the Scene View selected display mode for this Renderer. |
| UnloadUnusedAssetsImmediate | Unloads assets that are not used. |
| UpdateGlobalShaderProperties | Updates the global shader properties to use when rendering. |
