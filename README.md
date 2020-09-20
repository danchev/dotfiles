# Personalizing Codespaces for your account
## Codespaces uses your dotfiles repository on GitHub to personalize every new codespace that you create.

### Anyone can create a dotfiles repository to personalize Codespaces for their user account.

Codespaces is available for user accounts using GitHub Free or GitHub Pro. For more information, see "GitHub's products."

Note: Codespaces is currently in limited public beta and subject to change. During the beta period, GitHub does not make any guarantees about the availability of Codespaces. For more information about joining the beta, see "About Codespaces."

Dotfiles are files and folders on Unix-like systems starting with . that control the configuration of applications and shells on your system. You can store and manage your dotfiles in a repository on GitHub. For advice and tutorials about what to include in your dotfiles repository, see GitHub does dotfiles.

If your user account on GitHub owns a public repository named dotfiles, GitHub automatically uses this repository to personalize your codespace environment. Private dotfiles repositories are not currently supported.

Your `dotfiles` repository might include your shell aliases and preferences, any tools you want to install, or any other codespace personalization you want to make.

Codespace personalization using your `dotfiles` repository applies to any codespace you create. Project maintainers can also define a default configuration that applies to every codespace for a repository, created by anyone. Your dotfiles personalization is applied before a repository's default codespace configuration. For more information, see "[Configuring Codespaces for your project.](https://docs.github.com/en/github/developing-online-with-codespaces/configuring-codespaces-for-your-project)"

When you create a new codespace, GitHub clones your `dotfiles` repository to the codespace environment, and looks for one of the following files to set up the environment.

- _install.sh_
- _install_
- _bootstrap.sh_
- _bootstrap_
- _setup.sh_
- _setup_

If none of these files are found, then any files or folders in `dotfiles` starting with `.` are symlinked to the codespace's `~` or `$HOME` directory.

Any changes to your `dotfiles` repository will apply only to each new codespace, and do not affect any existing codespace.

For more information, see [Personalizing](https://docs.microsoft.com/en-us/visualstudio/online/reference/personalizing) in the Visual Studio Code documentation.
