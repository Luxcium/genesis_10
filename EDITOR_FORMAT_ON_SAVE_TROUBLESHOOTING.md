# Configure `editor.formatOnSave` and Troubleshooting Guide

This guide provides comprehensive instructions for configuring and troubleshooting the `editor.formatOnSave` feature in Visual Studio Code.

## Setting `editor.formatOnSave`

The `editor.formatOnSave` option in Visual Studio Code automatically formats your code when you save files, ensuring consistent code style and reducing manual formatting effort.

### Method 1: Using VS Code Settings UI

1. Open your Visual Studio Code settings by navigating to `File` > `Preferences` > `Settings` or by pressing `Ctrl + ,` (Windows/Linux) or `Cmd + ,` (macOS).
2. In the search bar, type `formatOnSave`.
3. Check the box for `Editor: Format On Save`.

### Method 2: Using settings.json

Alternatively, you can add the following line to your `settings.json` file:

```json
{
  "editor.formatOnSave": true
}
```

To access your `settings.json` file:
1. Open the Command Palette with `Ctrl + Shift + P` (Windows/Linux) or `Cmd + Shift + P` (macOS)
2. Type "Preferences: Open Settings (JSON)" and select it
3. Add or modify the `editor.formatOnSave` setting

### Project-Specific Configuration

For this project, the setting is configured in `.vscode/settings.json` and will apply to all team members working on the project. The current configuration includes:

```json
{
  "editor.defaultFormatter": "esbenp.prettier-vscode",
  "editor.formatOnSave": true,
  "editor.formatOnPaste": true,
  "editor.formatOnType": true
}
```

## Troubleshooting Steps

If `formatOnSave` is not working as expected, follow these troubleshooting steps:

### 1. Check for Required Extensions

Ensure that you have the appropriate formatter extension installed for the language you are using:

- **JavaScript/TypeScript/JSON/CSS/HTML**: Install the [Prettier - Code formatter](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode) extension
- **Python**: Install [Black Formatter](https://marketplace.visualstudio.com/items?itemName=ms-python.black-formatter) or [autopep8](https://marketplace.visualstudio.com/items?itemName=ms-python.autopep8)
- **Go**: Install the [Go extension](https://marketplace.visualstudio.com/items?itemName=golang.Go)
- **Rust**: Install [rust-analyzer](https://marketplace.visualstudio.com/items?itemName=rust-lang.rust-analyzer)

To check installed extensions:
1. Go to the Extensions view (`Ctrl + Shift + X` or `Cmd + Shift + X`)
2. Search for and install the required formatter extension
3. Reload VS Code if prompted

### 2. Verify Default Formatter Configuration

Check that a default formatter is set for your file types:

1. Open a file of the type you want to format
2. Right-click in the editor and select "Format Document With..."
3. Choose "Configure Default Formatter..."
4. Select your preferred formatter (e.g., Prettier for JavaScript/TypeScript)

Alternatively, set it in settings.json:

```json
{
  "editor.defaultFormatter": "esbenp.prettier-vscode",
  "[javascript]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[typescript]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  }
}
```

### 3. Check for Conflicting Settings

Look for conflicting settings that might override `formatOnSave`:

1. Check user settings vs. workspace settings priority
2. Look for language-specific overrides:

```json
{
  "[javascript]": {
    "editor.formatOnSave": false  // This would override the global setting
  }
}
```

3. Check for extensions that might disable formatting:
   - Some linting extensions might conflict with formatters
   - Check extension settings for formatting-related options

### 4. Verify File Type Support

Ensure that the file type you are working with is supported by your formatter:

- Check the formatter extension's documentation for supported file types
- Verify that the file has the correct extension (e.g., `.js`, `.ts`, `.py`)
- Check if the file is properly recognized by VS Code (language mode shown in status bar)

### 5. Check for Syntax Errors

Formatters may refuse to format files with syntax errors:

1. Check the Problems panel (`Ctrl + Shift + M` or `Cmd + Shift + M`) for syntax errors
2. Fix any syntax errors before attempting to format
3. Some formatters will show error messages in the Output panel

### 6. Examine Output Panel for Errors

Open the Output pane to see detailed error messages:

1. Go to `View` > `Output` or press `Ctrl + Shift + U` (Windows/Linux) or `Cmd + Shift + U` (macOS)
2. Select your formatter from the dropdown (e.g., "Prettier")
3. Look for error messages that explain why formatting failed

Common error messages and solutions:
- **"No formatter configured"**: Set a default formatter for the file type
- **"Parsing error"**: Fix syntax errors in your code
- **"Configuration error"**: Check your formatter's configuration files (e.g., `.prettierrc`, `package.json`)

### 7. Restart VS Code

Sometimes, simply restarting Visual Studio Code can resolve issues with settings not being applied:

1. Close all VS Code windows
2. Reopen VS Code and your project
3. Test the format on save functionality

### 8. Check Workspace vs. User Settings

If you are working in a specific workspace, check if there are workspace-specific settings that might be overriding your user settings:

1. Open workspace settings: `File` > `Preferences` > `Settings` and select "Workspace" tab
2. Check for conflicting `editor.formatOnSave` settings
3. Workspace settings take precedence over user settings

### 9. Configuration File Issues

If using Prettier or other formatters with configuration files, ensure they are properly configured:

- **Prettier**: Check for `.prettierrc`, `.prettierrc.json`, or `prettier` field in `package.json`
- **ESLint**: Check for `.eslintrc` files
- **EditorConfig**: Check for `.editorconfig` files

Example `.prettierrc` configuration:
```json
{
  "semi": true,
  "trailingComma": "es5",
  "singleQuote": true,
  "printWidth": 80,
  "tabWidth": 2
}
```

### 10. Extension Conflicts

Check for conflicts between multiple formatting extensions:

1. Disable all formatting extensions except the one you want to use
2. Test if format on save works
3. Re-enable extensions one by one to identify conflicts

### 11. File Permission Issues

Ensure VS Code has permission to write to the file:

- Check if the file is read-only
- Verify you have write permissions to the directory
- If using version control, ensure the file is not locked

## Testing Format on Save

To test if format on save is working:

1. Open a file that can be formatted
2. Make some formatting changes (e.g., remove indentation, add extra spaces)
3. Save the file (`Ctrl + S` or `Cmd + S`)
4. The file should automatically format according to your configured rules

## Project-Specific Notes

For this Genesis 10 project:

- **Default Formatter**: Prettier (`esbenp.prettier-vscode`)
- **Supported Files**: JavaScript, TypeScript, JSON, CSS, HTML, Markdown
- **Configuration**: Uses EditorConfig (`.editorconfig`) for basic formatting rules
- **Additional Actions**: Code actions on save are configured for fixing ESLint issues and sorting JSON

The project configuration also includes:
```json
{
  "editor.codeActionsOnSave": {
    "source.fixAll": "explicit",
    "source.sort.json": "always"
  }
}
```

This means that in addition to formatting, the editor will:
- Fix all auto-fixable linting issues
- Sort JSON keys alphabetically

## Additional Resources

- [VS Code Formatting Documentation](https://code.visualstudio.com/docs/editor/codebasics#_formatting)
- [Prettier Documentation](https://prettier.io/docs/en/index.html)
- [EditorConfig Documentation](https://editorconfig.org/)
- [VS Code Settings Reference](https://code.visualstudio.com/docs/getstarted/settings)

## Getting Help

If you continue to experience issues:

1. Check the [VS Code GitHub Issues](https://github.com/microsoft/vscode/issues) for similar problems
2. Check your formatter extension's GitHub repository for known issues
3. Enable verbose logging in your formatter extension settings
4. Create a minimal reproduction case to isolate the problem

---

By following these steps, you should be able to configure and troubleshoot the `editor.formatOnSave` feature effectively. The automatic formatting will help maintain consistent code style across your project and reduce manual formatting effort.