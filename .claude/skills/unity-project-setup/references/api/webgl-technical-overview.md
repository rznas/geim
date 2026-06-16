<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/webgl-technical-overview.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Technical limitations

Web technology imposes restrictions on Unity web applications designed to run in web browsers. Make sure you’re aware of the following technical limitations before you build your application for the Web platform.

## Platform support

Most popular desktop browser versions support Unity Web content, but do note that different browsers offer different levels of support.

The following features in Web builds are either not available or limited due to constraints of the platform itself:

### Lack of Web build debug support in Visual Studio

Debugging Web builds isn’t supported in Visual Studio. For more information, refer to Debug and troubleshoot Web builds.

### Lack of Unity cache and caching script support

Web builds don’t support the Unity Cache and Caching Scripting API due to restricted access to the filesystem in browsers. Network requests to asset data and AssetBundles are instead cached in the browser cache. Refer to Cache behavior in Web.

### Lack of Input System keyboard layout mapping

The Web platform doesn’t support physical-to-active keyboard mapping, a feature of Unity’s Input System. This limitation means that certain InputControl properties that rely on translating physical key codes to a virtual keyboard layout don’t function as expected with non-English keyboards.

### Lack of managed threading support

Managed (C#) threads aren’t supported on the Web platform due to the lack of a multithreaded garbage collection feature in WebAssembly.

However, Unity provides multithreading support for native C/C++ engine code and for C# jobs compiled with the Burst compiler.

For more details about multithreading, refer to Multithreading in Unity Web.

### Networking limitations

There are a few **networking** features that Web platform doesn’t support:

- Browsers don’t allow direct access to IP sockets for networking due to security concerns. For more information, refer to Web networking.
- .NET networking classes within the `System.Net` namespace aren’t supported.
- Web platform doesn’t support native socket access because of security limitations within browsers. Therefore, Web also doesn’t support features like ICMP ping or UnityEngine.Ping.

### Graphics limitations

There are some limitations in Web platform with the **WebGL** graphics API, which is based on the functionality of the OpenGL ES graphics library. For more information, refer to Web graphics.

### Audio limitations

Web builds use a custom back end for audio based on the **Web Audio** API, but it only supports the basic audio functionality. For more information, refer to Audio in Web.

### Physics limitations

Physics simulations in Web aren’t guaranteed to produce the exact same results as in the Unity Editor or on other platforms. This is because WebAssembly always runs floating-point computations with full precision, while other Unity platforms run physics simulations with a setting enabled (FTZ/DAZ) that flushes extremely small, near-zero numbers (denormals) to zero. The WebAssembly standard doesn’t provide access to the hardware floating point control flags needed to do this.

Because each step in a physics simulation builds on the result of the previous one, small deviations can accumulate over time and lead to noticeable variations in behaviors like **collision** detection.

### Dynamic generation of code

Web is an AOT platform, so it doesn’t allow dynamic generation of code using `System.Reflection.Emit`. This is the same on all other **IL2CPP** platforms, iOS, and most consoles.

## Build and run limitations

Unity uses a web server with only basic functionality to host web builds created with **Build and Run** (menu: **Edit** > **Build Profiles** > **Build and Run**).

The server doesn’t support data caching, which affects:

- The `.data` file, which includes all **scenes** and assets of a build that don’t use AssetBundles or Addressables.
- Addressables and AssetBundle files.

## Additional resources

- [Secure context](https://developer.mozilla.org/en-US/docs/Web/Security/Secure_Contexts)
- Garbage collection
