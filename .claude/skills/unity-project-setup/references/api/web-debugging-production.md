<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/web-debugging-production.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Debug production Web builds

Use external symbols, JavaScript error handlers, and stack trace mapping to debug deployed Web builds.

Unity Web builds don’t support full source-level debugging. However, you can preserve some debugging information and use browser error reporting to investigate runtime failures in deployed builds.

## Use external symbols

Enable external symbols in your Web build (menu: **Player Settings** > **Publishing Settings** > **Debug Settings** > **External**) to include function names in production stack traces. When you build with external symbols, Unity generates symbol files separately from the main build output.

When an uncaught JavaScript exception occurs, Unity can use the external symbol data to map WebAssembly stack frames back to IL2CPP-generated C/C++ function names. These names are often readable enough to identify the original C# class and method.

For example, a C# method such as `PlayerController.Jump()` might appear in a stack trace as `PlayerController_Jump_m<hash>`.

Use external symbols to identify the function where a failure occurred, rather than the exact source line.

### Map stack traces more precisely to C# names

If you need more precise mapping, Unity also generates a `MethodMap.tsv` file during the build process. This file can help map IL2CPP-generated method names back to the original C# method names, which is especially useful for overloaded methods.

Unity doesn’t automatically copy `MethodMap.tsv` to the build output directory. You can find it in:

`Library/Bee/artifacts/WebGL/il2cppOutput/cpp/Symbols`

### Limitations

External symbols don’t include:

- Exact C# source file names
- Exact C# line numbers
- The ability to step through C# code line by line in a production Web build

### Build size and runtime impact

Unity stores external symbol files separately from the main build because they’re only needed for error investigation. This means external symbol files don’t affect the initial application download for users.

The symbol files are typically around 1–2 MB and you can store them with your deployed build artifacts.

Because Unity stores external symbol files separately from the main build output, this approach has minimal impact on the initial download size and runtime performance of a production build.

## Report browser errors

To collect error reports from a deployed Web build, add JavaScript error handlers in the page that hosts your Unity content and send the results to your **analytics** or crash reporting service.

Useful browser hooks include:

- `window.onerror`
- `window.addEventListener('error', ...)`
- `console.error`

These hooks can capture:

- Uncaught JavaScript exceptions
- Some WebAssembly runtime errors
- Some engine errors that appear through browser error reporting

You can combine these reports with external symbols to make production stack traces easier to read.

## Additional resources

- Debug and troubleshoot Web builds
- Debug Web builds in development
- Troubleshoot common Web build errors
