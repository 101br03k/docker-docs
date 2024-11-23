# **Feedcord**

#### [Documentation / Source](https://github.com/Qolors/FeedCord)

### Docker-Compose ([Recommended, click for why](https://docs.docker.com/compose/intro/features-uses/)):

```
services:
  feedcord:
    image: qolors/feedcord:latest
    container_name: feedcord
    restart: unless-stopped
    volumes:
      - ./appsettings.json:/app/config/appsettings.json
```

config.json

```
{
    "Instances": [
        {
            "Id": "RSS",
            "Username": "RSS - Feedcord",
            "RssUrls": [
        "https://www.sidn.nl/rss/job-posting",
        "https://docs.vmware.com/en/VMware-vSphere/rn_rss.xml",
        "https://www.apple.com/newsroom/rss-feed.rss",
        "https://feeds.feedburner.com/tweakers/reviews",
        "https://www.bleepingcomputer.com/feed/",
        "https://www.sidn.nl/rss/weblog",
        "https://www.sidn.nl/rss/news",
        "https://developer.apple.com/news/rss/news.rss",
        "https://news.ntppool.org/post/index.xml",
        "https://blog.mobyproject.org/feed",
        "https://www.docker.com/feed/",
        "https://feeds.defensie.nl/nieuws.rss",
        "https://www.bbq-cloud.com/index.xml",
        "https://blog.system76.com/rss.xml",
        "https://defence-blog.com/feed/"
            ],
            "YoutubeUrls": [ "" ],
            "DiscordWebhookUrl": "https://discord.com/api/webhooks/1175139505263616040/lJh6Ss8rqc6nFidsxFv8FjPIgRqIuOnzEcW-61o-pIjyIWgVMcAUU9sID51JLgijF5jw",
            "RssCheckIntervalMinutes": 3,
            "EnableAutoRemove": true,
            "Color": 8411391,
            "DescriptionLimit": 200
        },
        {
            "Id": "Security",
            "Username": "Security - Feedcord",
            "RssUrls": [
        "https://advisories.ncsc.nl/rss/advisories",
        "https://www.cisa.gov/cybersecurity-advisories/cybersecurity-advisories.xml",
        "https://www.vmware.com/security/advisories.xml",
        "https://www.datalekt.nl/feeds/rss.php",
        "https://www.security.nl/rss/headlines.xml",
        "https://www.security.nl/rss/headlines.xml",
        "https://krebsonsecurity.com/feed/",
        "https://www.dragos.com/feed/",
        "https://www.autoriteitpersoonsgegevens.nl/feed/article/rss.xml",
        "https://www.edpb.europa.eu/feed/news_en"
            ],
            "YoutubeUrls": [ "" ],
            "DiscordWebhookUrl": "https://discord.com/api/webhooks/1273519105055522816/4kRekLbrskJneQ8JrGcSHItYylNBaOPABDJxlfzozrqLqVi-PtQ6pUd_BMVZvBhSHqiC",
            "RssCheckIntervalMinutes": 3,
            "EnableAutoRemove": true,
            "Color": 8411391,
            "DescriptionLimit": 200
        },
        {
            "Id": "Releases",
            "Username": "Releases - Feedcord",
            "RssUrls": [
        "https://community.ui.com/rss/releases/UniFi-Protect-Application/aada5f38-35d4-4525-9235-b14bd320e4d0",
        "https://community.ui.com/rss/releases/Releases/fb7fef15-3db0-4f7f-a69f-339cf8bb3e823",
        "https://community.ui.com/rss/releases/UniFi-Gateways/fc326a79-1cd8-4663-97e1-e68687e67fbd",
        "https://community.ui.com/rss/releases/UniFi-OS-Express/2800eda0-d2bb-41b0-a139-737b79ff23f5",
        "https://community.ui.com/rss/releases/UniFi-Access-Point/9fc3b2fa-9e73-449a-924f-470e79884470",
        "https://community.ui.com/rss/releases/UniFi-OS-Cloud-Keys/c4ccd194-4cbf-4738-b07d-0aa6f04d178e",
        "https://community.ui.com/rss/releases/Releases/e6712595-81bb-4829-8e42-9e2630fabcfe",
        "https://community.ui.com/rss/releases/UniFi-Protect-Viewport/5ed28e7d-f2dd-4849-904f-f813cd609e40",
        "https://community.ui.com/rss/releases/UniFi-Protect-Chime/7326eb18-3436-486e-b728-5d1ba29d84d4",
        "https://community.ui.com/rss/releases/UniFi-OS-Dream-Machines/b0f0a740-021e-4027-a778-ceba983be74b",
        "https://community.ui.com/rss/releases/UniFi-Protect-Android/dccea623-f38c-4d44-84a2-c97bddc0c6cf",
        "https://community.ui.com/rss/releases/UniFi-Design-Center/179f8b6a-b845-49cd-8251-25a5be2689ee",
        "https://community.ui.com/rss/releases/UniFi-Identity-Enterprise-Agent/eb7e43bf-9bf1-4f96-8212-5ce0caa4c234",
        "https://community.ui.com/rss/releases/UniFi-Identity-Endpoint-Android/14db8557-2ccf-4ba1-8022-0de800e71f43",
        "https://community.ui.com/rss/releases/UniFi-Identity-Endpoint-Windows/82441cdc-ed29-4bb7-b13f-e8e43d37d2b4"
            ],
            "YoutubeUrls": [ "" ],
            "DiscordWebhookUrl": "https://discord.com/api/webhooks/1279092047189512305/eHRCnD4h7cs0AQTEH-2mW2BlGKqq7hwakGFh6L68x3vwklwWLcSQFUr_lVCwztO3g-or",
            "RssCheckIntervalMinutes": 3,
            "EnableAutoRemove": true,
            "Color": 8411391,
            "DescriptionLimit": 200
        },
        {
            "Id": "Cars",
            "Username": "Cars - Feedcord",
            "RssUrls": [
        "https://thejudge13.com/feed/",
        "https://www.arenaev.com/rss-articles.php3"
            ],
            "YoutubeUrls": [ "" ],
            "DiscordWebhookUrl": "https://discord.com/api/webhooks/1221737142007369730/WudNOCrgsSgvJ5mcxmkMqspzAax5SWdeRuCuP26uQIoNPrf4oQX4C1z4e0R_hu02OnIT",
            "RssCheckIntervalMinutes": 3,
            "EnableAutoRemove": true,
            "Color": 8411391,
            "DescriptionLimit": 200
        },
        {
            "Id": "Status",
            "Username": "Status - Feedcord",
            "RssUrls": [
        "https://azure.status.microsoft/nl-nl/status/feed/",
        "https://status.twingate.com/history.rss"
            ],
            "YoutubeUrls": [ "" ],
            "DiscordWebhookUrl": "https://discord.com/api/webhooks/1264236365378224238/8UC0hrVcwHjPosRn9vEKlCd6WhBCiaLiSlKFaul7jugE3qlPD471mrcm7JEURbFhiDmb",
            "RssCheckIntervalMinutes": 3,
            "EnableAutoRemove": true,
            "Color": 8411391,
            "DescriptionLimit": 150
        },
        {
            "Id": "Fun",
            "Username": "Fun - Feedcord",
            "RssUrls": [
        "https://xkcd.com/rss.xml"
            ],
            "YoutubeUrls": [ "" ],
            "DiscordWebhookUrl": "https://discord.com/api/webhooks/1273518691488763956/lhosGgvzBzZZLhGw_qCFL68iZKn6mQy-6EdYPEr7cw4IOjgdCrgfdstwluY9U---Cl8d",
            "RssCheckIntervalMinutes": 3,
            "EnableAutoRemove": true,
            "Color": 8411391,
            "DescriptionLimit": 150
        }
    ]
}
```

If posible please use [environment variables](https://docs.docker.com/compose/environment-variables/set-environment-variables/)