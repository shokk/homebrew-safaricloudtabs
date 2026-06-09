# safaricloudtabs

A small zsh script to inspect all of your Safari iCloud tab groups from the command line. It started as a personal itch — when you've got dozens of tab groups synced across devices, there's no easy way to see everything at once. This script reads directly from Safari's local `SafariTabs.db` SQLite database and gives you flexible output options.

## macOS Permissions

Your terminal app must have **Full Disk Access** enabled, or the script will fail with an "access denied" error when reading Safari's database.

To enable it: **System Settings → Privacy & Security → Full Disk Access** → toggle on your terminal app (Terminal, iTerm2, etc.).

## Requirements

- macOS with Safari iCloud Tabs enabled
- `sqlite3` (included with macOS)
- `jq`

Install `jq` with Homebrew if you don't have it:

```sh
brew install jq
```

## Installation

### Manual

```sh
curl -o /usr/local/bin/safaricloudtabs \
  https://raw.githubusercontent.com/shokk/safari-cloud-tabs/main/safaricloudtabs
chmod +x /usr/local/bin/safaricloudtabs
```

### Homebrew (coming soon)

```sh
brew tap shokk/safaricloudtabs
brew install safaricloudtabs
```

## Usage

```
Usage: safaricloudtabs [option]

Show Safari iCloud tab group data from SafariTabs.db.

Options:
  -h          Show this help text and exit
  -d          List duplicate tab URLs
  -n          List the number of tabs in each tab group
  -g REGEX    Grep the tab listing with the provided regex
  -l          List all tabs as pipe-delimited output
  -t          List all tabs as a Markdown table
  -c          List all tabs as CSV
```

## Examples

List all tabs in every tab group:

```sh
safaricloudtabs -l
```

Count tabs per group:

```sh
safaricloudtabs -n
```

Find duplicate URLs across all groups:

```sh
safaricloudtabs -d
```

Search for tabs matching a pattern:

```sh
safaricloudtabs -g 'openai|github'
```

Export everything as CSV:

```sh
safaricloudtabs -c > tabs.csv
```

Export as a Markdown table:

```sh
safaricloudtabs -t > tabs.md
```

## How it works

Safari stores iCloud tab data in a SQLite database at:

```
~/Library/Containers/com.apple.Safari/Data/Library/Safari/SafariTabs.db
```

The script queries the `bookmarks` table, joining each tab back to its parent tab group, then formats the results using `jq`.

## License

MIT
