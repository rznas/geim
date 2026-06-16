<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VideoClipImporter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

VideoClipImporter lets you modify VideoClip import settings from Editor scripts.

See the **Movie File Format Support Notes** section in the VideoPlayer class documentation for supported movie file formats and encoding guidelines.

### Properties

| Property | Description |
| --- | --- |
| defaultTargetSettings | Default values for the platform-specific import settings. |
| deinterlaceMode | Images are deinterlaced during transcode. This tells the importer how to interpret fields in the source, if any. |
| flipHorizontal | Apply a horizontal flip during import. |
| flipVertical | Apply a vertical flip during import. |
| frameCount | Number of frames in the clip. |
| frameRate | Frame rate of the clip. |
| importAudio | Import audio tracks from source file. |
| isPlayingPreview | Whether the preview is currently playing. |
| keepAlpha | Whether to keep the alpha from the source into the transcoded clip. |
| outputFileSize | Size in bytes of the file once imported. |
| pixelAspectRatioDenominator | Denominator of the pixel aspect ratio (num:den). |
| pixelAspectRatioNumerator | Numerator of the pixel aspect ratio (num:den). |
| sourceAudioTrackCount | Number of audio tracks in the source file. |
| sourceFileSize | Size in bytes of the file before importing. |
| sourceHasAlpha | True if the source file has a channel for per-pixel transparency. |
| sRGBClip | Whether the imported clip contains sRGB color data. |
| transcodeSkipped | Returns true if transcoding was skipped during import, false otherwise. (Read Only)When VideoImporterTargetSettings.enableTranscoding is set to true, the resulting transcoding operation done at import time may be quite long, up to many hours depending on source resolution and content duration. An option to skip this process is offered in the asset import progress bar. When skipped, the transcoding instead provides a non-transcoded verision of the asset. However, the importer settings stay intact so this property can be inspected to detect the incoherence with the generated artifact.Re-importing without stopping the transcode process, or with transcode turned off, causes this property to become false. |

### Public Methods

| Method | Description |
| --- | --- |
| ClearTargetSettings | Clear the platform-specific import settings for the specified platform, causing them to go back to the default settings. |
| Equals | Performs a value comparison with another VideoClipImporter. |
| GetPreviewTexture | Returns a texture with the transcoded clip's current frame. Returns frame 0 when not playing, and frame at current time when playing. |
| GetResizeHeight | Get the resulting height of the resize operation for the specified resize mode. |
| GetResizeModeName | Get the full name of the resize operation for the specified resize mode. |
| GetResizeWidth | Get the resulting width of the resize operation for the specified resize mode. |
| GetSourceAudioChannelCount | Number of audio channels in the specified source track. |
| GetSourceAudioSampleRate | Sample rate of the specified audio track. |
| GetTargetSettings | Returns the platform-specific import settings for the specified platform. |
| PlayPreview | Starts preview playback. |
| SetTargetSettings | Sets the platform-specific import settings for the specified platform. |
| StopPreview | Stops preview playback. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| assetBundleName | Get or set the AssetBundle name. |
| assetBundleVariant | Get or set the AssetBundle variant. |
| assetPath | The path name of the asset for this importer. (Read Only) |
| importSettingsMissing | The value is true when no meta file is provided with the imported asset. |
| userData | Get or set any user data. |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| AddRemap | Map a sub-asset from an imported asset (such as an FBX file) to an external Asset of the same type. |
| GetExternalObjectMap | Gets a copy of the external object map used by the AssetImporter. |
| RemoveRemap | Removes an item from the map of external objects. |
| SaveAndReimport | Save asset importer settings if asset importer is dirty. |
| SetAssetBundleNameAndVariant | Set the AssetBundle name and variant. |
| SupportsRemappedAssetType | Checks if the AssetImporter supports remapping the given asset type. |
| GetEntityId | Gets the EntityId of the object. |
| ToString | Returns the name of the object. |

### Static Methods

| Method | Description |
| --- | --- |
| GetAtPath | Retrieves the asset importer for the asset at path. |
| GetImportLog | Retrieves logs generated during the import of the asset at path. |
| Destroy | Removes a GameObject, component, or asset. |
| DestroyImmediate | Destroys the specified object immediately. Use with caution and in Edit mode only. |
| DontDestroyOnLoad | Do not destroy the target Object when loading a new Scene. |
| FindAnyObjectByType | Retrieves any active loaded object of Type type. |
| FindObjectsByType | Retrieves a list of all loaded objects of Type type. |
| Instantiate | Clones the object original and returns the clone. |
| InstantiateAsync | Captures a snapshot of the original object (that must be related to some GameObject) and returns the AsyncInstantiateOperation. |

### Operators

| Operator | Description |
| --- | --- |
| bool | Does the object exist? |
| operator != | Compares if two objects refer to a different object. |
| operator == | Compares two object references to see if they refer to the same object. |
