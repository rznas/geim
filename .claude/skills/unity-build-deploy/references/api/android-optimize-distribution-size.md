<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/android-optimize-distribution-size.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Optimize distribution size

Some digital distribution services have a limit on the initial install size of your application. Unity includes the following methods to help you to optimize the install size:

- Split APKs by target architecture.
- Split the application binary.
- Compression
- Minification.

## Split APKs by target architecture

If your output application uses **APK** format, the **Split APKs by target architecture** Player Setting optimizes the application download and installation size. Instead of producing one APK that contains binaries for every target CPU architecture selected in the **Target Architectures** Player Setting, Unity creates a separate APK for each CPU architecture. You can upload this set of APKs to digital distribution services which serve the APK with the correct target CPU architecture to each device that downloads your application.

This is primarily a Google Play feature and may not work for other digital distribution services. For more information, see Multiple APK support.

**Note**: Google Play requires new applications to be AABs and not APKs. When you upload an AAB, Google Play automatically generates and serves optimized APKs for each device configuration.

## Split the application binary

You can split your output application to make the initial install size smaller. The device can install a lighter version of your application and then download assets separately. If your output application uses APK format, Unity can split the application into a main APK and an expansion file (OBB). For more information see APK expansion files. If your output application uses AAB format, Unity can split the application into a [base module](https://developer.android.com/guide/app-bundle/configure-base) and asset packs. For more information, see Play Asset Delivery.

To split the application binary:

1. Select **Edit** > **Project Settings**.
2. In the **Project settings** window, select the **Player** tab, then open Android Player Settings.
3. In the **Publishing Settings** section, enable **Split Application Binary**.

## Compression

You can change the method Unity uses to compress resource files for the application. This can reduce the size of the application but can increase loading times if the method means data takes longer to decompress.

For more information, see Compression Method.

## Minification

You can use [ProGuard](https://www.guardsquare.com/proguard) minification to decrease the size of the application and improve performance.

To enable ProGuard minification:

1. Select **Edit** > **Project Settings**.
2. In the Project settings window, select the **Player** tab, then open Android Player Settings.
3. In the **Publishing Settings** section, under **Minify** enable either **Release**, **Debug**, or both depending on the type of build you want to minify.

**Note**: ProGuard might strip out important code that your application relies on, so check any builds that you minify.

For more control over the minification process, generate a custom `proguard.txt` file and configure it to specify what not to strip. To generate the file, select **Custom Proguard File** in the **Publishing Settings** section. This generates the `proguard.txt` file in your project’s `Assets/Plugins/Android` folder. For information on how to configure ProGuard minification, see the [ProGuard documentation](https://www.guardsquare.com/manual/configuration/usage).
