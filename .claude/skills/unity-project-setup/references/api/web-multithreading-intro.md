<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/web-multithreading-intro.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Introduction to Web multithreading

Learn about the single-thread limitation for C# on the Web platform, the multithreading solutions Unity provides, and their prerequisites.

The Web platform restricts standard C# code to a single thread. However, Unity provides multithreading for native C/C++ engine code and for C# code via the Burst compiler. For tasks that don’t require parallelism, asynchronous programming provides an effective alternative.

## Limitations of standard C# multithreading

Managed (C#) threads aren’t supported due to the lack of a multithreaded garbage collection feature in WebAssembly.

Due to this limitation, anything in the C# [`System.Threading`](https://learn.microsoft.com/en-us/dotnet/api/system.threading?view=net-9.0) namespace isn’t supported. For example, use of the `System.Threading.Timer` class doesn’t trigger in Web builds. Also, any timeouts you specify in `System.Threading.CancellationTokenSource` don’t actually time out, because the cancellation mechanism is based on `System.Threading.Timer`.

The following code highlights these behavioral differences:

```csharp
using System.Threading;
using UnityEngine;

public class NoMultithreadedTimers : MonoBehaviour
{
    private Timer t;
    private static void TimerCallbackElapsed(object obj)
    {
        // This will never fire in Web builds because
        // multithreaded timers aren't available.
        Debug.Log("Timer Callback Fired!");
    }
    private void Awake()
    {
        t = new Timer(new TimerCallback(TimerCallbackElapsed), this, 1, -1);
    }
}

public class NoCancellationTokenSourceTimeouts : MonoBehaviour
{
    private CancellationTokenSource cs;
    private void Awake()
    {
        // millisecondsDelay=0 to time out immediately.
        cs = new CancellationTokenSource(0);
    }
    private void Update()
    {
        // Returns false in Web builds because timeouts
        // aren't tracked for cancellation tokens.
        Debug.Log(cs.IsCancellationRequested.ToString());
    }
}
```

### Technical reasons for the limitation

The following factors limit multithreading support for standard C# code.

#### Constraints on native stack scanning

The Web platform uses WebAssembly, which is a bytecode format for secure and efficient execution of Unity code in web browsers. Web browsers are designed to run the code in a secure and isolated environment which blocks direct access to the native WebAssembly stack. This affects multithreaded garbage collection as the Web garbage collector runs only once at the end of every frame unlike incrementally over multiple frames on other platforms.

#### No pre-emptive thread signaling support

Background Workers on the web execute code in parallel independently from each other. On native platforms, the main thread can synchronously send signals to the other threads to pause for garbage collection. This synchronous signaling isn’t supported on the web, which prevents WebAssembly compiled C# code from running in multiple threads.

## Available multithreading solutions

Despite the limitations of standard C#, Unity has two solutions for parallel execution:

- Native C/C++ multithreading: Runs Unity’s internal engine systems (like physics and rendering) on separate threads.
- Burst-compiled C# multithreading: Runs your C# code in parallel using the job system and Burst compiler. For details, refer to Multithreading with Burst in Unity Web.

### Prerequisites for multithreading

To enable either of these solutions, you must configure your Unity project and web server as follows:

- In Player Settings (menu: **Edit** > **Project Settings** > **Player**), under **Publishing Settings**, enable **Enable Native C/C++ Multithreading**. Note that while the name refers to the native C/C++ feature, this setting enables both native and Burst multithreading.
- Configure secure server headers. The Web platform supports multithreading when your document is within a secure context. The server must set the following HTTP response headers. Without these, browsers disable the `SharedArrayBuffer`, which is required for threads:
  - [Cross-Origin-Opener-Policy: same-origin](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Cross-Origin-Opener-Policy)
  - [Cross-Origin-Embedder-Policy: require-corp](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Cross-Origin-Embedder-Policy)
  - [Cross-Origin-Resource-Policy: cross-origin](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Cross-Origin-Resource-Policy)

## Asynchronous programming as an alternative

For complex, long-running tasks that don’t require true parallelism, you can use asynchronous programming to avoid blocking the main thread.

The recommended way to perform asynchronous tasks is to use `Awaitable`, which can replace `System.Threading.Tasks.Task` in most cases. For details, refer to Introduction to asynchronous programming with Awaitable.

You can also use coroutines for asynchronous workflows. But note that `Awaitable` returns values directly and automatically throws errors, while coroutines require additional logic for both of these tasks.

## Additional resources

- Server configuration code samples
- Create and run a job
- Web performance considerations
