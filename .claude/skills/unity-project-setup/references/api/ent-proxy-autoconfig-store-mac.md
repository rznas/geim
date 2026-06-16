<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/ent-proxy-autoconfig-store-mac.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Store credentials for automatic proxy configuration (macOS)

If your organization’s web proxy requires user authentication and is configured to accept basic authentication (username and password), you must store your credentials before using Unity applications.

If you use Unity on macOS, use the following procedure. For Windows, refer to Store credentials for automatic proxy configuration (Windows). For other platforms and environments, refer to Alternatives for other platforms and environments.

## Before you begin

- Make sure you enable automatic proxy configuration.
- Refer to Known limitations.

## Procedure

The following procedure is based on the Apple Support article, [Enter proxy server settings on Mac](https://support.apple.com/guide/mac-help/mchlp25912/mac).

1. Open the **Apple** menu () and select **System Settings** (or **System Preferences** on older versions of macOS).
2. Select the **Network** category.
3. Select a network service from the list, then click **Details** (or **Advanced** on older versions of macOS).
4. Select **Proxies**.
5. Enable one of the following options. If you select multiple options, Unity uses the first web proxy returned by the operating system for a given URL.
  - Auto proxy discovery
  - Automatic proxy configuration
  - Web proxy (HTTP)
  - Secure web proxy (HTTPS)
6. If you selected a manual method, fill in the required information. If your proxy server requires a password, enable **Proxy server requires password** and then enter your user name and password.
7. Select **OK**.
8. If you selected an automatic method in Step 5, and the web proxy requires a password, you might have to manually add the web proxy credentials in the Keychain Access application. In this case, temporarily configure your network settings by enabling **Web proxy (HTTP)** and **Secure web proxy (HTTPS)** (Steps 5 and 6). These options create the Keychain entries for you. After you apply these changes, you can disable the **Web proxy (HTTP)** and **Secure web proxy (HTTPS)** options, leaving one of the automatic options enabled.

| Note: Although these proxy server settings are now stored, you might receive prompts for credentials. Common scenarios are:  Built-in applications, such as Safari, that access the proxy server for the first time. Prompts to allow Unity applications to access your Keychain, which is where the operating system stores your credentials. If you receive these prompts after enabling an automatic proxy option in Step 5, refer to Step 8. |
| --- |

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
- Store credentials for automatic proxy configuration (Windows)
- Solving network issues (Unity Package Manager)
