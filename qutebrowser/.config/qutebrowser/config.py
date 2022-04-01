config.load_autoconfig()

c.url.start_pages = ["~/"]

c.url.searchengines["yt"] = "https://www.youtube.com/results?search_query={}"
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
