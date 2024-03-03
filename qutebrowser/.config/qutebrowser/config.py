# flake8: noqa: F821
import os

config.load_autoconfig()

start_page = os.environ.get("BROWSER_START_PAGE", "~/")

c.url.start_pages = [start_page]
c.url.default_page = start_page

c.url.searchengines["yt"] = "https://www.youtube.com/results?search_query={}"
c.url.searchengines["aw"] = "https://wiki.archlinux.org/index.php?search={}"
c.url.searchengines["wk"] = "https://en.wikipedia.org/w/index.php?title=Special:Search&search={}"
c.url.searchengines["DEFAULT"] = "https://www.google.com/search?q={}"

c.content.fullscreen.window = True
c.downloads.location.directory = "~/downloads"

c.content.blocking.whitelist = ["www.googleadservices.com"]

# Tab navigation
config.bind('<Shift-Left>', 'tab-prev')
config.bind('<Shift-Right>', 'tab-next')
config.bind('J', 'tab-prev')
config.bind('K', 'tab-next')

config.bind(',m', 'hint links spawn mpv {hint-url}')

c.editor.command = ['alacritty', '-e', 'nvim', '{file}']

c.qt.args.append("enable-experimental-web-platform-features")
