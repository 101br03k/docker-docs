# Feedcord

#### [Documentation / Source](https://github.com/Qolors/FeedCord)

### Docker-Compose ([Recommended, click for why](https://docs.docker.com/compose/intro/features-uses/)):

```
version: "3.9"
services:
  myfeedcord:
    image: qolors/feedcord:latest # for amd64 architecture
    # image: qolors/feedcord:latest-arm64  # For arm64 architecture (Uncomment this line and comment the above if using arm64)
    container_name: FeedCord
    restart: unless-stopped
    volumes:
      - ./appsettings.json:/app/config/appsettings.json
      #    network_mode: bridge
```

config.json

```
{
	"Instances": [
		{
			"Id": "Tech News Channel",
			"Username": "Tech News",
			"RssUrls": [
        "https://www.sidn.nl/rss/job-posting",
        "https://docs.vmware.com/en/VMware-vSphere/rn_rss.xml",
        "https://www.apple.com/newsroom/rss-feed.rss",
        "https://feeds.feedburner.com/tweakers/reviews",
        "https://www.bleepingcomputer.com/feed/",
        "https://advisories.ncsc.nl/rss/advisories",
        "https://krebsonsecurity.com/feed/",
        "https://azure.status.microsoft/nl-nl/status/feed/",
        "https://www.cisa.gov/cybersecurity-advisories/cybersecurity-advisories.xml",
        "https://www.vmware.com/security/advisories.xml",
        "https://thejudge13.com/feed/",
        "https://www.sidn.nl/rss/weblog",
        "https://www.sidn.nl/rss/news",
        "https://developer.apple.com/news/rss/news.rss",
        "https://news.ntppool.org/post/index.xml",
        "https://blog.mobyproject.org/feed",
        "https://www.docker.com/feed/",
        "https://feeds.defensie.nl/nieuws.rss",
        "https://www.arenaev.com/rss-articles.php3",
        "https://www.datalekt.nl/feeds/rss.php",
        "https://www.bbq-cloud.com/index.xml"
			],
			"YoutubeUrls": [ "" ],
			"DiscordWebhookUrl": "https://discord.com/api/webhooks/...",
			"RssCheckIntervalMinutes": 3,
			"EnableAutoRemove": true,
			"Color": 8411391,
			"DescriptionLimit": 200
		}
	]
}
```

If posible please use [environment variables](https://docs.docker.com/compose/environment-variables/set-environment-variables/)
