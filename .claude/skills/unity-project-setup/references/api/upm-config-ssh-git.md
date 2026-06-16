<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/upm-config-ssh-git.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Use passphrase-protected SSH keys with SSH Git URLs

When you use Git to access a private repository over SSH, Git uses an SSH client to establish a secure connection with the server. While establishing the connection, Git uses your configured SSH key during the SSH handshaking phase. During this phase, the SSH client needs to be able to read your key. However, if you encrypted your key with a passphrase, the SSH client can’t use the key directly. In this case, you’re prompted to type in the passphrase in the terminal. After you enter the correct passphrase, the SSH connection completes and the Git command runs using that connection.

When the Unity Package Manager fetches packages using Git URLs, there’s no interface for you to enter credentials requested by the SSH client. As a result, if you protected your SSH key file with a passphrase, the SSH client fails to establish the connection and Git reports an error. To solve this, an authentication agent for SSH must be running and loaded with the SSH key, so that the SSH client can use it without requiring its passphrase.

The method varies, depending on your operating system and the SSH client that you use:

| **Topic** | **Description** |
| --- | --- |
| **Load SSH keys automatically on Windows (OpenSSH)** | Reference for loading SSH keys if you use Windows 10 or later and its built-in OpenSSH client. |
| **Load SSH keys automatically on Windows (PuTTY)** | Reference for loading SSH keys if you use Windows and PuTTY and its authentication agent (Pageant). |
| **Load SSH keys automatically on macOS** | Reference for loading SSH keys if you use macOS. |

## Additional resources

- Use private repositories with HTTPS Git URLs
- Troubleshooting Git issues
