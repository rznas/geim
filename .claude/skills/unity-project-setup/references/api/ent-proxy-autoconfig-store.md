<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/ent-proxy-autoconfig-store.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Store credentials for automatic proxy configuration (Windows)

If your organization’s web proxy requires user authentication and is configured to accept basic authentication (username and password), you must store your credentials before using Unity applications.

If you use Unity on Windows, use the following procedure. For macOS, refer to Store credentials for automatic proxy configuration (macOS). For other platforms and environments, refer to Alternatives for other platforms and environments.

## Before you begin

- Make sure you enable automatic proxy configuration.
- Refer to Known limitations.

## Procedure

Follow these steps to store your proxy credentials in Windows, replacing the proxy address of `webproxy.mycompany.com` and the user name of `proxyuser`.

1. To open Credential Manager, type `credential manager` in the search box on the taskbar to find **Credential Manager Control panel**.
2. Open **Credential Manager**.
3. Select **Windows Credentials**.
4. Select **Add a generic credential**.    Add a generic credential in Windows Credential Manager
5. For **Internet or network address**, type the web proxy’s host name or IP address.
6. Type your **Username** and **Password**.
7. Select **OK**.

Unity applications will use these stored credentials when authenticating with the specified web proxy.

## Alternatives for other platforms and environments

Unity’s automatic proxy configuration feature doesn’t fully support some platforms and environments. Some examples are:

- Linux, which isn’t supported by Unity’s automatic proxy configuration feature.
- A continuous integration (CI) or continuous delivery (CD) environment, where a pipeline (rather than a user) interacts with the web proxy.

In such cases, consider the following alternatives:

- For CI\CD pipelines that run in a Windows environment, use `cmdkey` to add credentials to Windows Credential Manager from the command line interface (CLI). Refer to [cmdkey on Microsoft Learn](https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/cmdkey) for examples.
- For environments that don’t support storage of credentials, you can define the proxy configuration in environment variables. This definition can also include username and password, if necessary. For more information, refer to Use environment variables to identify your web proxy.
- If neither basic authentication nor Unity’s automatic proxy configuration is an option, you’ll need to define exceptions in your web proxy so it doesn’t require authentication for resources requested by Unity applications.

## Next steps

- Review the solutions in Using Unity through web proxies to check if your environment requires any additional actions.

## Additional resources

- Deploy Unity across your enterprise
- Store credentials for automatic proxy configuration (macOS)
- Solving network issues (Unity Package Manager)
