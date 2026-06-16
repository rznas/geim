<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/android-native-plugins-create.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Create a native plug-in for Android

To compile a C++ **plug-in** for Android, use the Android NDK and familiarize yourself with the steps required to build a shared library or a static library.

If you use C++ to implement the plug-in, you must declare with C linkage to avoid [name mangling issues](http://en.wikipedia.org/wiki/Name_mangling). By default, only C source files that have a .c file extension in the plug-ins have C linkage (not C++).

```
extern "C" {
  float Foopluginmethod ();
}
```

**Note**: If your static library isn’t compiled with `-fno-exceptions` and `-fno-rtti` flags, compatibility issues might cause application build failure.

## Additional resources

- Import a native plug-in for Android
