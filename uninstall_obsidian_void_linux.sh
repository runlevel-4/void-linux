# remove obsidian
echo "Uninstalling Obsidian..."
echo "Removing files...\n"
rm -rf obsidian-1.15.0*
rm -rf /usr/lib/obsidian-1.15.0
rm -rf /usr/bin/obsidian

echo "Uninstalling wget...\n"
xbps-remove -y wget 

echo "Cleaning up xbps package manager...\n"
xbps-remove -oy
xbps-remove -Oy
