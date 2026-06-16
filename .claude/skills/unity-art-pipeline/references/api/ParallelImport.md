<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/ParallelImport.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Import assets simultaneously

By default, Unity imports assets one after another sequentially on the main Unity Editor process. However, you can use the **Parallel Import** setting to import certain texture and **model files** simultaneously. The **Parallel Import** setting uses multiple processes to import assets simultaneously, which is faster than the default sequential method of importing.

## Supported file types

The **Parallel Import** setting supports only certain types of asset. The specific types of asset which Unity can import in parallel are as follows:

- Image file types imported by the Texture Importer.
- Model file types imported by the Model Importer.
- Audio file types imported by the Audio Importer

Other types of asset are always imported sequentially during an Asset Database refresh.

Some Asset Database API methods also respect this setting if you use them to import, refresh, or create texture or model assets. These are:

- `AssetDatabase.ImportAsset`
- `AssetDatabase.Refresh`
- `AssetDatabase.CreateAsset`

## Enable parallel importing

To enable parallel importing:

1. Go to **Edit** > **Project Settings** > **Editor**.
2. Under the **Asset Pipeline** section, enable the **Parallel Import** setting.

Parallel importing only happens when the Editor performs a standard Asset Database refresh, which happens when it detects new or modified assets in the Project folder and automatically imports them.

## Parallel importing effects on AssetPostprocessor instances

Parallel imports operate in a separate worker instance of the Editor, so any `AssetPostprocessor` instances that handle texture or model imports take effect in that instance rather than the main Editor process.

If you enable the **Parallel Import** setting, be aware that Unity executes the code on multiple threads, so any code you write for post processors must be self-contained, deterministic, and must not change the context it’s running in. For example, don’t use an `AssetPostprocessor` to change the Editor settings or create new assets on disk. Following these rules helps your processor code avoid parallel threading issues and ensures that the results are always consistent.

## Controlling the import worker processes

You can use the Asset Pipeline Project settings to control the behavior of the import worker processes. These settings are project-specific.

You can also control the default values that Unity sets the **Desired Import Worker Count** for new projects in the Settings window. To do this, go to **Settings** > **Asset Pipeline** > **Import Worker Count %**.

When you create a new project, Unity uses the **Import Worker Count %** value to assign your project’s **Desired Import Worker Count** value to the percentage of the number of logical cores available on your system.

For example, if your system has 16 logical cores and this preference is set to 25%, the **Desired Import Worker Count** for new projects is 4. If you set this value too high, the import worker processes need to compete over other processes and system resources such as reading and writing files. The default value is 25% which suits most situations.

## Additional resources

- Importing assets introduction
- Asset Database introduction
- Asset Pipeline Project Settings reference
- Asset Pipeline Settings reference
