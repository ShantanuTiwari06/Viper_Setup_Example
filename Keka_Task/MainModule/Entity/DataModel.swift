//
//  DataModel.swift
//  Keka_Task
//
//  Created by Shantanu - Rooter on 11/01/24.
//

import Foundation

struct DataModel: Codable {
    var status: String?
    var results: [Result]?
}

struct Result: Codable {
    var title: String?
    var abstract: String?
    var published_date: String?
    var media: [Media]?
}

struct Media: Codable {
    var metadata: [MetaData]
    
    enum CodingKeys: String, CodingKey {
        case metadata = "media-metadata"
    }
}

struct MetaData: Codable {
    var url: String?
    var height: Double?
    var width: Double?
}

/*
{
  "status": "OK",
  "copyright": "Copyright (c) 2024 The New York Times Company.  All Rights Reserved.",
  "num_results": 20,
  "results": [
    {
      "uri": "nyt://article/c7a104ef-1528-5061-906b-e1b8601f874e",
      "url": "https://www.nytimes.com/2024/01/08/world/europe/tiny-mouse-shed-video.html",
      "id": 100000009254811,
      "asset_id": 100000009254811,
      "source": "New York Times",
      "published_date": "2024-01-08",
      "updated": "2024-01-09 23:42:14",
      "section": "World",
      "subsection": "Europe",
      "nytdsection": "world",
      "adx_keywords": "Animal Behavior;Mice;Video Recordings, Downloads and Streaming;Orderliness and Clutter;Wales",
      "column": null,
      "byline": "By Isabella Kwai",
      "type": "Article",
      "title": "‘Welsh Tidy Mouse’ Tidies Tiny Welsh House",
      "abstract": "For months, a mysterious helper was cleaning up the work bench in Rodney Holbrook’s shed every night. He caught the visitor, tail and all, on video.",
      "des_facet": [
        "Animal Behavior",
        "Mice",
        "Video Recordings, Downloads and Streaming",
        "Orderliness and Clutter"
      ],
      "org_facet": [
        
      ],
      "per_facet": [
        
      ],
      "geo_facet": [
        "Wales"
      ],
      "media": [
        
      ],
      "eta_id": 0
    },
    {
      "uri": "nyt://article/5d7e2cd5-3cee-5483-ae7e-bcbbddb33392",
      "url": "https://www.nytimes.com/2024/01/04/health/paxlovid-covid-treatment.html",
      "id": 100000009248834,
      "asset_id": 100000009248834,
      "source": "New York Times",
      "published_date": "2024-01-04",
      "updated": "2024-01-08 11:04:49",
      "section": "Health",
      "subsection": "",
      "nytdsection": "health",
      "adx_keywords": "Deaths (Fatalities);Paxlovid (Drug);Elderly;Drugs (Pharmaceuticals);Research;your-feed-healthcare;National Institutes of Health;Pfizer Inc;United States",
      "column": null,
      "byline": "By Christina Jewett",
      "type": "Article",
      "title": "Paxlovid Cuts Covid Death Risk. But Those Who Need It Are Not Taking It.",
      "abstract": "With Covid deaths rising to about 1,500 per week, researchers question why Paxlovid use has remained low among high-risk patients.",
      "des_facet": [
        "Deaths (Fatalities)",
        "Paxlovid (Drug)",
        "Elderly",
        "Drugs (Pharmaceuticals)",
        "Research",
        "your-feed-healthcare"
      ],
      "org_facet": [
        "National Institutes of Health",
        "Pfizer Inc"
      ],
      "per_facet": [
        
      ],
      "geo_facet": [
        "United States"
      ],
      "media": [
        {
          "type": "image",
          "subtype": "photo",
          "caption": "High-risk patients who took Paxlovid early in their illness saw a 73 percent reduction in their risk of dying from Covid, but only 15 percent of eligible patients take it.",
          "copyright": "Wolfgang Rattay/Reuters",
          "approved_for_syndication": 1,
          "media-metadata": [
            {
              "url": "https://static01.nyt.com/images/2024/01/03/multimedia/03-Paxlovid-01-hfgb/03-Paxlovid-01-hfgb-thumbStandard.jpg",
              "format": "Standard Thumbnail",
              "height": 75,
              "width": 75
            },
            {
              "url": "https://static01.nyt.com/images/2024/01/03/multimedia/03-Paxlovid-01-hfgb/03-Paxlovid-01-hfgb-mediumThreeByTwo210.jpg",
              "format": "mediumThreeByTwo210",
              "height": 140,
              "width": 210
            },
            {
              "url": "https://static01.nyt.com/images/2024/01/03/multimedia/03-Paxlovid-01-hfgb/03-Paxlovid-01-hfgb-mediumThreeByTwo440.jpg",
              "format": "mediumThreeByTwo440",
              "height": 293,
              "width": 440
            }
          ]
        }
      ],
      "eta_id": 0
    },
    {
      "uri": "nyt://article/b51fb5c7-375c-570c-9482-b41d22ab08f0",
      "url": "https://www.nytimes.com/2024/01/04/arts/television/reacher-women-dad-tv.html",
      "id": 100000009244605,
      "asset_id": 100000009244605,
      "source": "New York Times",
      "published_date": "2024-01-04",
      "updated": "2024-01-05 19:43:00",
      "section": "Arts",
      "subsection": "Television",
      "nytdsection": "arts",
      "adx_keywords": "Television;Ritchson, Alan (1982- );Child, Lee",
      "column": null,
      "byline": "By Elisabeth Vincentelli",
      "type": "Article",
      "title": "‘Reacher’: Women Want What He’s Got, and Not Just the Beefcake",
      "abstract": "The hit Amazon series about a bone-crushing crime fighter isn’t only Dad TV. Women dream of having the character’s freedom and abilities, too.",
      "des_facet": [
        "Television"
      ],
      "org_facet": [
        
      ],
      "per_facet": [
        "Ritchson, Alan (1982- )",
        "Child, Lee"
      ],
      "geo_facet": [
        
      ],
      "media": [
        {
          "type": "image",
          "subtype": "photo",
          "caption": "The title character of “Reacher,” played by Alan Ritchson, doesn’t start too many fights, but he does finish them. You don’t have to be a dad, or a man, to envy that.",
          "copyright": "Brooke Palmer/Amazon Prime Video",
          "approved_for_syndication": 0,
          "media-metadata": [
            {
              "url": "https://static01.nyt.com/images/2024/01/06/multimedia/04reacher-notebook-wfvj/04reacher-notebook-wfvj-thumbStandard.jpg",
              "format": "Standard Thumbnail",
              "height": 75,
              "width": 75
            },
            {
              "url": "https://static01.nyt.com/images/2024/01/06/multimedia/04reacher-notebook-wfvj/04reacher-notebook-wfvj-mediumThreeByTwo210.jpg",
              "format": "mediumThreeByTwo210",
              "height": 140,
              "width": 210
            },
            {
              "url": "https://static01.nyt.com/images/2024/01/06/multimedia/04reacher-notebook-wfvj/04reacher-notebook-wfvj-mediumThreeByTwo440.jpg",
              "format": "mediumThreeByTwo440",
              "height": 293,
              "width": 440
            }
          ]
        }
      ],
      "eta_id": 0
    },
    {
      "uri": "nyt://article/bce70928-34a4-5a51-b365-f4055274dada",
      "url": "https://www.nytimes.com/2024/01/04/travel/europe-new-trains.html",
      "id": 100000009234128,
      "asset_id": 100000009234128,
      "source": "New York Times",
      "published_date": "2024-01-04",
      "updated": "2024-01-07 21:33:48",
      "section": "Travel",
      "subsection": "",
      "nytdsection": "travel",
      "adx_keywords": "High-Speed Rail Projects;Railroads;Travel and Vacations;Infrastructure (Public Works);Europe;Channel Tunnel;Paris (France);London (England)",
      "column": null,
      "byline": "By Paige McClanahan",
      "type": "Article",
      "title": "In Europe, Trains Are Full, and More Are on the Way",
      "abstract": "Amid concerns about climate change, demand for rail service is strong, and both governments and private investors are trying to keep up. Even Eurostar may see competition on its London-Paris route.",
      "des_facet": [
        "High-Speed Rail Projects",
        "Railroads",
        "Travel and Vacations",
        "Infrastructure (Public Works)"
      ],
      "org_facet": [
        
      ],
      "per_facet": [
        
      ],
      "geo_facet": [
        "Europe",
        "Channel Tunnel",
        "Paris (France)",
        "London (England)"
      ],
      "media": [
        {
          "type": "image",
          "subtype": "photo",
          "caption": "A high-speed Eurostar train outside Paris.",
          "copyright": "Gonzalo Fuentes/Reuters",
          "approved_for_syndication": 1,
          "media-metadata": [
            {
              "url": "https://static01.nyt.com/images/2024/01/08/multimedia/04europe-trains-print/00Europe-Trains-mlgw-thumbStandard.jpg",
              "format": "Standard Thumbnail",
              "height": 75,
              "width": 75
            },
            {
              "url": "https://static01.nyt.com/images/2024/01/08/multimedia/04europe-trains-print/00Europe-Trains-mlgw-mediumThreeByTwo210.jpg",
              "format": "mediumThreeByTwo210",
              "height": 140,
              "width": 210
            },
            {
              "url": "https://static01.nyt.com/images/2024/01/08/multimedia/04europe-trains-print/00Europe-Trains-mlgw-mediumThreeByTwo440.jpg",
              "format": "mediumThreeByTwo440",
              "height": 293,
              "width": 440
            }
          ]
        }
      ],
      "eta_id": 0
    },
    {
      "uri": "nyt://article/7aeb81f3-492c-5601-8007-7246a38d5023",
      "url": "https://www.nytimes.com/2024/01/05/books/review/richard-scarry-cars-and-trucks-and-things.html",
      "id": 100000009229478,
      "asset_id": 100000009229478,
      "source": "New York Times",
      "published_date": "2024-01-05",
      "updated": "2024-01-06 10:14:14",
      "section": "Books",
      "subsection": "Book Review",
      "nytdsection": "books",
      "adx_keywords": "Books and Literature;Children and Childhood;genre-books-childrens;Scarry, Richard",
      "column": null,
      "byline": "By Peter Behrens",
      "type": "Article",
      "title": "‘Richard Scarry’s Cars and Trucks and Things That Go’ Turns 50",
      "abstract": "For my family, reading Scarry together was itself like a car trip — the rare sort where no one gets cranky and the world, as seen from the back seat, is fresh and startling.",
      "des_facet": [
        "Books and Literature",
        "Children and Childhood",
        "genre-books-childrens"
      ],
      "org_facet": [
        
      ],
      "per_facet": [
        "Scarry, Richard"
      ],
      "geo_facet": [
        
      ],
      "media": [
        {
          "type": "image",
          "subtype": "photo",
          "caption": "From “Richard Scarry’s Cars and Trucks and Things That Go.”",
          "copyright": "Richard Scarry",
          "approved_for_syndication": 1,
          "media-metadata": [
            {
              "url": "https://static01.nyt.com/images/2024/01/07/books/review/07Scarry_Kids-02/07Scarry_Kids-02-thumbStandard-v4.jpg",
              "format": "Standard Thumbnail",
              "height": 75,
              "width": 75
            },
            {
              "url": "https://static01.nyt.com/images/2024/01/07/books/review/07Scarry_Kids-02/07Scarry_Kids-02-mediumThreeByTwo210-v5.jpg",
              "format": "mediumThreeByTwo210",
              "height": 140,
              "width": 210
            },
            {
              "url": "https://static01.nyt.com/images/2024/01/07/books/review/07Scarry_Kids-02/07Scarry_Kids-02-mediumThreeByTwo440-v5.jpg",
              "format": "mediumThreeByTwo440",
              "height": 293,
              "width": 440
            }
          ]
        }
      ],
      "eta_id": 0
    },
    {
      "uri": "nyt://article/f2cf82a1-babf-5ae5-8a15-f130115aa67f",
      "url": "https://www.nytimes.com/2024/01/09/health/fda-singulair-asthma-drug-warning.html",
      "id": 100000008887065,
      "asset_id": 100000008887065,
      "source": "New York Times",
      "published_date": "2024-01-09",
      "updated": "2024-01-10 11:54:56",
      "section": "Health",
      "subsection": "",
      "nytdsection": "health",
      "adx_keywords": "Suicides and Suicide Attempts;Asthma;Drugs (Pharmaceuticals);Allergies;Obsessive-Compulsive Disorder;Children and Childhood;audio-neutral-informative;audio-negative-sad;Food and Drug Administration;Merck \u0026 Company Inc;World Health Organization;Johns Hopkins Center for Drug Safety and Effectiveness;Organon Inc;United States",
      "column": null,
      "byline": "By Christina Jewett and Benjamin Mueller",
      "type": "Article",
      "title": "The F.D.A. Warned an Asthma Drug Could Induce Despair. Many Were Never Told.",
      "abstract": "Singulair, now a generic, is still used by millions of people in the United States even after thousands of patients and dozens of studies have described harm.",
      "des_facet": [
        "Suicides and Suicide Attempts",
        "Asthma",
        "Drugs (Pharmaceuticals)",
        "Allergies",
        "Obsessive-Compulsive Disorder",
        "Children and Childhood",
        "audio-neutral-informative",
        "audio-negative-sad"
      ],
      "org_facet": [
        "Food and Drug Administration",
        "Merck \u0026 Company Inc",
        "World Health Organization",
        "Johns Hopkins Center for Drug Safety and Effectiveness",
        "Organon Inc"
      ],
      "per_facet": [
        
      ],
      "geo_facet": [
        "United States"
      ],
      "media": [
        {
          "type": "image",
          "subtype": "photo",
          "caption": "",
          "copyright": "Niki Chan Wylie for The New York Times",
          "approved_for_syndication": 1,
          "media-metadata": [
            {
              "url": "https://static01.nyt.com/images/2023/10/12/multimedia/XXSingulair-promo-vgkc/XXSingulair-promo-vgkc-thumbStandard.jpg",
              "format": "Standard Thumbnail",
              "height": 75,
              "width": 75
            },
            {
              "url": "https://static01.nyt.com/images/2023/10/12/multimedia/XXSingulair-promo-vgkc/XXSingulair-promo-vgkc-mediumThreeByTwo210.jpg",
              "format": "mediumThreeByTwo210",
              "height": 140,
              "width": 210
            },
            {
              "url": "https://static01.nyt.com/images/2023/10/12/multimedia/XXSingulair-promo-vgkc/XXSingulair-promo-vgkc-mediumThreeByTwo440.jpg",
              "format": "mediumThreeByTwo440",
              "height": 293,
              "width": 440
            }
          ]
        }
      ],
      "eta_id": 0
    },
    {
      "uri": "nyt://article/3ef3158e-f3a0-5e31-a4cd-cb8919c67fa1",
      "url": "https://www.nytimes.com/2024/01/04/well/move/fitness-myths.html",
      "id": 100000009137337,
      "asset_id": 100000009137337,
      "source": "New York Times",
      "published_date": "2024-01-04",
      "updated": "2024-01-08 23:59:36",
      "section": "Well",
      "subsection": "Move",
      "nytdsection": "well",
      "adx_keywords": "Exercise;Running;Muscles;Weight Lifting;Sports Medicine;Sports Injuries;Back (Human Body Part);Content Type: Service;Research",
      "column": null,
      "byline": "By Danielle Friedman",
      "type": "Article",
      "title": "8 Fitness Myths That Drive Experts Crazy",
      "abstract": "Running is bad for your knees. The heavier the weight the better. Ice baths. And more.",
      "des_facet": [
        "Exercise",
        "Running",
        "Muscles",
        "Weight Lifting",
        "Sports Medicine",
        "Sports Injuries",
        "Back (Human Body Part)",
        "Content Type: Service",
        "Research"
      ],
      "org_facet": [
        
      ],
      "per_facet": [
        
      ],
      "geo_facet": [
        
      ],
      "media": [
        {
          "type": "image",
          "subtype": "photo",
          "caption": "",
          "copyright": "Illustration by Tyler Comrie, Photographs by Getty Images",
          "approved_for_syndication": 1,
          "media-metadata": [
            {
              "url": "https://static01.nyt.com/images/2024/01/09/well/04WELL-FITNESS-MYTHS/04WELL-FITNESS-MYTHS-thumbStandard.jpg",
              "format": "Standard Thumbnail",
              "height": 75,
              "width": 75
            },
            {
              "url": "https://static01.nyt.com/images/2024/01/09/well/04WELL-FITNESS-MYTHS/04WELL-FITNESS-MYTHS-mediumThreeByTwo210.jpg",
              "format": "mediumThreeByTwo210",
              "height": 140,
              "width": 210
            },
            {
              "url": "https://static01.nyt.com/images/2024/01/09/well/04WELL-FITNESS-MYTHS/04WELL-FITNESS-MYTHS-mediumThreeByTwo440.jpg",
              "format": "mediumThreeByTwo440",
              "height": 293,
              "width": 440
            }
          ]
        }
      ],
      "eta_id": 0
    },
    {
      "uri": "nyt://article/f333f3d6-aae9-5f15-b262-1df09b633a01",
      "url": "https://www.nytimes.com/2024/01/06/opinion/trump-biden-election.html",
      "id": 100000009252665,
      "asset_id": 100000009252665,
      "source": "New York Times",
      "published_date": "2024-01-06",
      "updated": "2024-01-08 11:56:11",
      "section": "Opinion",
      "subsection": "",
      "nytdsection": "opinion",
      "adx_keywords": "Presidential Election of 2024;United States Politics and Government;News and News Media;Democracy (Theory and Philosophy);Trump, Donald J;Biden, Joseph R Jr",
      "column": null,
      "byline": "By Maureen Dowd",
      "type": "Article",
      "title": "Is Trump Hell?",
      "abstract": "Trump portrays himself as Christlike, even as he bedevils America.",
      "des_facet": [
        "Presidential Election of 2024",
        "United States Politics and Government",
        "News and News Media",
        "Democracy (Theory and Philosophy)"
      ],
      "org_facet": [
        
      ],
      "per_facet": [
        "Trump, Donald J",
        "Biden, Joseph R Jr"
      ],
      "geo_facet": [
        
      ],
      "media": [
        {
          "type": "image",
          "subtype": "photo",
          "caption": "",
          "copyright": "Matt Rourke/Associated Press",
          "approved_for_syndication": 1,
          "media-metadata": [
            {
              "url": "https://static01.nyt.com/images/2024/01/06/multimedia/06dowd-bpck/06dowd-bpck-thumbStandard.jpg",
              "format": "Standard Thumbnail",
              "height": 75,
              "width": 75
            },
            {
              "url": "https://static01.nyt.com/images/2024/01/06/multimedia/06dowd-bpck/06dowd-bpck-mediumThreeByTwo210.jpg",
              "format": "mediumThreeByTwo210",
              "height": 140,
              "width": 210
            },
            {
              "url": "https://static01.nyt.com/images/2024/01/06/multimedia/06dowd-bpck/06dowd-bpck-mediumThreeByTwo440.jpg",
              "format": "mediumThreeByTwo440",
              "height": 293,
              "width": 440
            }
          ]
        }
      ],
      "eta_id": 0
    },
    {
      "uri": "nyt://article/70cec9db-dd1b-5b46-a730-32d24eeda9ad",
      "url": "https://www.nytimes.com/2024/01/07/opinion/cancer-love-friendship.html",
      "id": 100000009251591,
      "asset_id": 100000009251591,
      "source": "New York Times",
      "published_date": "2024-01-07",
      "updated": "2024-01-08 12:13:34",
      "section": "Opinion",
      "subsection": "",
      "nytdsection": "opinion",
      "adx_keywords": "Cancer;Breast Cancer;Quotations and Proverbs;Love (Emotion);Empathy;Loneliness;Grief (Emotion);Friendship",
      "column": null,
      "byline": "By David French",
      "type": "Article",
      "title": "A Terrible Phone Call and What Came Next",
      "abstract": "A cancer diagnosis, a Swedish proverb and the blessing of human connection.",
      "des_facet": [
        "Cancer",
        "Breast Cancer",
        "Quotations and Proverbs",
        "Love (Emotion)",
        "Empathy",
        "Loneliness",
        "Grief (Emotion)",
        "Friendship"
      ],
      "org_facet": [
        
      ],
      "per_facet": [
        
      ],
      "geo_facet": [
        
      ],
      "media": [
        {
          "type": "image",
          "subtype": "photo",
          "caption": "",
          "copyright": "Kateryna_Mostova/Getty Images",
          "approved_for_syndication": 1,
          "media-metadata": [
            {
              "url": "https://static01.nyt.com/images/2024/01/09/opinion/07french/07french-thumbStandard.jpg",
              "format": "Standard Thumbnail",
              "height": 75,
              "width": 75
            },
            {
              "url": "https://static01.nyt.com/images/2024/01/09/opinion/07french/07french-mediumThreeByTwo210.jpg",
              "format": "mediumThreeByTwo210",
              "height": 140,
              "width": 210
            },
            {
              "url": "https://static01.nyt.com/images/2024/01/09/opinion/07french/07french-mediumThreeByTwo440.jpg",
              "format": "mediumThreeByTwo440",
              "height": 293,
              "width": 440
            }
          ]
        }
      ],
      "eta_id": 0
    },
    {
      "uri": "nyt://article/acd23bd1-7ee6-582f-881d-5b5187d29088",
      "url": "https://www.nytimes.com/2023/12/31/world/americas/cat-prison-chile.html",
      "id": 100000009242488,
      "asset_id": 100000009242488,
      "source": "New York Times",
      "published_date": "2023-12-31",
      "updated": "2024-01-03 15:55:45",
      "section": "World",
      "subsection": "Americas",
      "nytdsection": "world",
      "adx_keywords": "Prisons and Prisoners;Cats;Humane Society International;Chile;Santiago (Chile)",
      "column": null,
      "byline": "By Jack Nicas",
      "type": "Article",
      "title": "Cats Filled the Prison. Then the Inmates Fell in Love.",
      "abstract": "In Chile’s oldest and most overcrowded prison, the inmates have found solace in the hundreds of stray cats.",
      "des_facet": [
        "Prisons and Prisoners",
        "Cats"
      ],
      "org_facet": [
        "Humane Society International"
      ],
      "per_facet": [
        
      ],
      "geo_facet": [
        "Chile",
        "Santiago (Chile)"
      ],
      "media": [
        {
          "type": "image",
          "subtype": "photo",
          "caption": "A cat on a prisoner’s back in Chile’s Santiago Sur prison.",
          "copyright": "Cristobal Olivares for The New York Times",
          "approved_for_syndication": 1,
          "media-metadata": [
            {
              "url": "https://static01.nyt.com/images/2023/12/31/multimedia/31chile-prison-cats7-wfcg/31chile-prison-cats7-wfcg-thumbStandard.jpg",
              "format": "Standard Thumbnail",
              "height": 75,
              "width": 75
            },
            {
              "url": "https://static01.nyt.com/images/2023/12/31/multimedia/31chile-prison-cats7-wfcg/31chile-prison-cats7-wfcg-mediumThreeByTwo210.jpg",
              "format": "mediumThreeByTwo210",
              "height": 140,
              "width": 210
            },
            {
              "url": "https://static01.nyt.com/images/2023/12/31/multimedia/31chile-prison-cats7-wfcg/31chile-prison-cats7-wfcg-mediumThreeByTwo440.jpg",
              "format": "mediumThreeByTwo440",
              "height": 293,
              "width": 440
            }
          ]
        }
      ],
      "eta_id": 0
    },
    {
      "uri": "nyt://article/c829465f-3bd0-5d7b-8189-d56118cb37ed",
      "url": "https://www.nytimes.com/2024/01/05/business/alaska-airlines-flight-portland-landing.html",
      "id": 100000009253324,
      "asset_id": 100000009253324,
      "source": "New York Times",
      "published_date": "2024-01-05",
      "updated": "2024-01-06 23:29:08",
      "section": "Business",
      "subsection": "",
      "nytdsection": "business",
      "adx_keywords": "Aviation Accidents, Safety and Disasters;Boeing 737 Max Groundings and Safety Concerns (2019);Alaska Airlines;Boeing Company;Portland International Airport;LA/Ontario International Airport (Ontario, Calif)",
      "column": null,
      "byline": "By John Yoon, Victoria Kim, Orlando Mayorquin, Niraj Chokshi and Mark Walker",
      "type": "Article",
      "title": "F.A.A. Orders Airlines to Ground Some Boeing 737 Max 9 Jets After Midair ‘Incident’",
      "abstract": "An Alaska Airlines plane made an emergency landing at the Portland, Ore., international airport on Friday after losing a chunk of its body, terrifying passengers.",
      "des_facet": [
        "Aviation Accidents, Safety and Disasters",
        "Boeing 737 Max Groundings and Safety Concerns (2019)"
      ],
      "org_facet": [
        "Alaska Airlines",
        "Boeing Company",
        "Portland International Airport",
        "LA/Ontario International Airport (Ontario, Calif)"
      ],
      "per_facet": [
        
      ],
      "geo_facet": [
        
      ],
      "media": [
        
      ],
      "eta_id": 0
    },
    {
      "uri": "nyt://article/344a97d5-bf88-59c3-88a5-0affdb75b53e",
      "url": "https://www.nytimes.com/2024/01/08/us/politics/donald-trump-evangelicals-iowa.html",
      "id": 100000009230145,
      "asset_id": 100000009230145,
      "source": "New York Times",
      "published_date": "2024-01-08",
      "updated": "2024-01-10 22:39:09",
      "section": "U.S.",
      "subsection": "Politics",
      "nytdsection": "u.s.",
      "adx_keywords": "Presidential Election of 2024;Presidential Election of 2020;Conservatism (US Politics);Evangelical Movement;Christians and Christianity;United States Politics and Government;Politics and Government;audio-neutral-informative;Trump, Donald J;Iowa;Coralville (Iowa)",
      "column": null,
      "byline": "By Ruth Graham and Charles Homans",
      "type": "Article",
      "title": "Trump Is Connecting With a Different Type of Evangelical Voter",
      "abstract": "They are not just the churchgoing, conservative activists who once dominated the G.O.P.",
      "des_facet": [
        "Presidential Election of 2024",
        "Presidential Election of 2020",
        "Conservatism (US Politics)",
        "Evangelical Movement",
        "Christians and Christianity",
        "United States Politics and Government",
        "Politics and Government",
        "audio-neutral-informative"
      ],
      "org_facet": [
        
      ],
      "per_facet": [
        "Trump, Donald J"
      ],
      "geo_facet": [
        "Iowa",
        "Coralville (Iowa)"
      ],
      "media": [
        {
          "type": "image",
          "subtype": "photo",
          "caption": "Attendees prayed during a Commit to Caucus event held by former President Donald J. Trump’s campaign in Cedar Rapids, Iowa, in December. Evangelical voters have long supported Republican candidates, but who identifies as an evangelical Christian has changed over the years.",
          "copyright": "Jordan Gale for The New York Times",
          "approved_for_syndication": 1,
          "media-metadata": [
            {
              "url": "https://static01.nyt.com/images/2024/01/07/multimedia/07pol-evangelicals-01-gtvq/07pol-evangelicals-01-gtvq-thumbStandard.jpg",
              "format": "Standard Thumbnail",
              "height": 75,
              "width": 75
            },
            {
              "url": "https://static01.nyt.com/images/2024/01/07/multimedia/07pol-evangelicals-01-gtvq/07pol-evangelicals-01-gtvq-mediumThreeByTwo210.jpg",
              "format": "mediumThreeByTwo210",
              "height": 140,
              "width": 210
            },
            {
              "url": "https://static01.nyt.com/images/2024/01/07/multimedia/07pol-evangelicals-01-gtvq/07pol-evangelicals-01-gtvq-mediumThreeByTwo440.jpg",
              "format": "mediumThreeByTwo440",
              "height": 293,
              "width": 440
            }
          ]
        }
      ],
      "eta_id": 0
    },
    {
      "uri": "nyt://article/1f71ae11-8ad6-54c7-8840-f87ff5adbf85",
      "url": "https://www.nytimes.com/2024/01/08/opinion/claudine-gay-resignation-racism.html",
      "id": 100000009253182,
      "asset_id": 100000009253182,
      "source": "New York Times",
      "published_date": "2024-01-08",
      "updated": "2024-01-09 12:27:20",
      "section": "Opinion",
      "subsection": "",
      "nytdsection": "opinion",
      "adx_keywords": "Race and Ethnicity;Black People;Colleges and Universities;Plagiarism;Diversity Initiatives;internal-sub-only-nl;Gay, Claudine;Harvard University",
      "column": null,
      "byline": "By John McWhorter",
      "type": "Article",
      "title": "Claudine Gay Was Not Driven Out Because She Is Black",
      "abstract": "Opposing D.E.I. is not the same as racism.",
      "des_facet": [
        "Race and Ethnicity",
        "Black People",
        "Colleges and Universities",
        "Plagiarism",
        "Diversity Initiatives",
        "internal-sub-only-nl"
      ],
      "org_facet": [
        "Harvard University"
      ],
      "per_facet": [
        "Gay, Claudine"
      ],
      "geo_facet": [
        
      ],
      "media": [
        {
          "type": "image",
          "subtype": "photo",
          "caption": "",
          "copyright": "Illustration by Sam Whitney/The New York Times; photograph by Adam Glanzman for The New York Times",
          "approved_for_syndication": 1,
          "media-metadata": [
            {
              "url": "https://static01.nyt.com/images/2024/01/08/opinion/08mcwhorter-newsletter-image/08mcwhorter-newsletter-image-thumbStandard.jpg",
              "format": "Standard Thumbnail",
              "height": 75,
              "width": 75
            },
            {
              "url": "https://static01.nyt.com/images/2024/01/08/opinion/08mcwhorter-newsletter-image/08mcwhorter-newsletter-image-mediumThreeByTwo210.jpg",
              "format": "mediumThreeByTwo210",
              "height": 140,
              "width": 210
            },
            {
              "url": "https://static01.nyt.com/images/2024/01/08/opinion/08mcwhorter-newsletter-image/08mcwhorter-newsletter-image-mediumThreeByTwo440.jpg",
              "format": "mediumThreeByTwo440",
              "height": 293,
              "width": 440
            }
          ]
        }
      ],
      "eta_id": 0
    },
    {
      "uri": "nyt://article/b0d4a91a-309f-5ebc-bae7-bfdda527e891",
      "url": "https://www.nytimes.com/2024/01/04/opinion/populism-trump-liberalism.html",
      "id": 100000009248582,
      "asset_id": 100000009248582,
      "source": "New York Times",
      "published_date": "2024-01-04",
      "updated": "2024-01-05 10:49:54",
      "section": "Opinion",
      "subsection": "",
      "nytdsection": "opinion",
      "adx_keywords": "Presidential Election of 2024;International Trade and World Market;Capitalism (Theory and Philosophy);United States Economy;Biden, Joseph R Jr;Trump, Donald J",
      "column": null,
      "byline": "By David Brooks",
      "type": "Article",
      "title": "What Biden Needs to Tell Us",
      "abstract": "A presidential vision for a positive-sum world of innovation and peace.",
      "des_facet": [
        "Presidential Election of 2024",
        "International Trade and World Market",
        "Capitalism (Theory and Philosophy)",
        "United States Economy"
      ],
      "org_facet": [
        
      ],
      "per_facet": [
        "Biden, Joseph R Jr",
        "Trump, Donald J"
      ],
      "geo_facet": [
        
      ],
      "media": [
        {
          "type": "image",
          "subtype": "photo",
          "caption": "",
          "copyright": "Tom Brenner for The New York Times",
          "approved_for_syndication": 1,
          "media-metadata": [
            {
              "url": "https://static01.nyt.com/images/2024/01/04/opinion/04brooks1/04brooks1-thumbStandard.jpg",
              "format": "Standard Thumbnail",
              "height": 75,
              "width": 75
            },
            {
              "url": "https://static01.nyt.com/images/2024/01/04/opinion/04brooks1/04brooks1-mediumThreeByTwo210.jpg",
              "format": "mediumThreeByTwo210",
              "height": 140,
              "width": 210
            },
            {
              "url": "https://static01.nyt.com/images/2024/01/04/opinion/04brooks1/04brooks1-mediumThreeByTwo440.jpg",
              "format": "mediumThreeByTwo440",
              "height": 293,
              "width": 440
            }
          ]
        }
      ],
      "eta_id": 0
    },
    {
      "uri": "nyt://article/d6573911-12bb-5506-9208-ece76ca99312",
      "url": "https://www.nytimes.com/2024/01/03/opinion/claudine-gay-harvard-president.html",
      "id": 100000009248907,
      "asset_id": 100000009248907,
      "source": "New York Times",
      "published_date": "2024-01-03",
      "updated": "2024-01-04 17:22:29",
      "section": "Opinion",
      "subsection": "",
      "nytdsection": "opinion",
      "adx_keywords": "Colleges and Universities;Academic Freedom;Black People;Discrimination;Research;Rumors and Misinformation;Anti-Semitism;Israel-Gaza War (2023- );Gay, Claudine;Harvard University",
      "column": null,
      "byline": "By Claudine Gay",
      "type": "Article",
      "title": "Claudine Gay: What Just Happened at Harvard Is Bigger Than Me",
      "abstract": "The demagogues won’t stop with Harvard.",
      "des_facet": [
        "Colleges and Universities",
        "Academic Freedom",
        "Black People",
        "Discrimination",
        "Research",
        "Rumors and Misinformation",
        "Anti-Semitism",
        "Israel-Gaza War (2023- )"
      ],
      "org_facet": [
        "Harvard University"
      ],
      "per_facet": [
        "Gay, Claudine"
      ],
      "geo_facet": [
        
      ],
      "media": [
        {
          "type": "image",
          "subtype": "photo",
          "caption": "",
          "copyright": "Adam Glanzman for The New York Times",
          "approved_for_syndication": 1,
          "media-metadata": [
            {
              "url": "https://static01.nyt.com/images/2024/01/04/multimedia/03gay-jqbh/03gay-jqbh-thumbStandard.jpg",
              "format": "Standard Thumbnail",
              "height": 75,
              "width": 75
            },
            {
              "url": "https://static01.nyt.com/images/2024/01/04/multimedia/03gay-jqbh/03gay-jqbh-mediumThreeByTwo210.jpg",
              "format": "mediumThreeByTwo210",
              "height": 140,
              "width": 210
            },
            {
              "url": "https://static01.nyt.com/images/2024/01/04/multimedia/03gay-jqbh/03gay-jqbh-mediumThreeByTwo440.jpg",
              "format": "mediumThreeByTwo440",
              "height": 293,
              "width": 440
            }
          ]
        }
      ],
      "eta_id": 0
    },
    {
      "uri": "nyt://article/87179bf0-9152-587a-b0f7-5b4e517db6e2",
      "url": "https://www.nytimes.com/2023/02/08/well/move/core-strength-exercises-workouts.html",
      "id": 100000008694350,
      "asset_id": 100000008694350,
      "source": "New York Times",
      "published_date": "2023-02-08",
      "updated": "2023-02-08 08:56:05",
      "section": "Well",
      "subsection": "Move",
      "nytdsection": "well",
      "adx_keywords": "Exercise;Muscles",
      "column": null,
      "byline": "By Jenny Marder",
      "type": "Article",
      "title": "For a Stable, Strong Core, Forget About Crunches",
      "abstract": "If the goal of your workout is to walk away with a chiseled six-pack, you’re missing the point.",
      "des_facet": [
        "Exercise",
        "Muscles"
      ],
      "org_facet": [
        
      ],
      "per_facet": [
        
      ],
      "geo_facet": [
        
      ],
      "media": [
        
      ],
      "eta_id": 0
    },
    {
      "uri": "nyt://article/06a3f449-62fc-5a3b-8af9-21b959c17032",
      "url": "https://www.nytimes.com/2024/01/08/well/eat/salmon-health-benefits.html",
      "id": 100000009202177,
      "asset_id": 100000009202177,
      "source": "New York Times",
      "published_date": "2024-01-08",
      "updated": "2024-01-09 12:45:12",
      "section": "Well",
      "subsection": "Eat",
      "nytdsection": "well",
      "adx_keywords": "Diet and Nutrition;Salmon;Omega-3 Fatty Acids;Hazardous and Toxic Substances;PCB (Polychlorinated Biphenyls);Mercury (Metal);Content Type: Service",
      "column": null,
      "byline": "By Markham Heid",
      "type": "Article",
      "title": "Just How Healthy Is Salmon?",
      "abstract": "Experts explain why it’s such a nutritional powerhouse and if all varieties are created equal.",
      "des_facet": [
        "Diet and Nutrition",
        "Salmon",
        "Omega-3 Fatty Acids",
        "Hazardous and Toxic Substances",
        "PCB (Polychlorinated Biphenyls)",
        "Mercury (Metal)",
        "Content Type: Service"
      ],
      "org_facet": [
        
      ],
      "per_facet": [
        
      ],
      "geo_facet": [
        
      ],
      "media": [
        {
          "type": "image",
          "subtype": "photo",
          "caption": "",
          "copyright": "Scott Semler for The New York Times. Prop stylist Maggie DiMarco.",
          "approved_for_syndication": 1,
          "media-metadata": [
            {
              "url": "https://static01.nyt.com/images/2024/01/08/multimedia/08WELL-SALMON-4-lfgv/08WELL-SALMON-4-lfgv-thumbStandard.jpg",
              "format": "Standard Thumbnail",
              "height": 75,
              "width": 75
            },
            {
              "url": "https://static01.nyt.com/images/2024/01/08/multimedia/08WELL-SALMON-4-lfgv/08WELL-SALMON-4-lfgv-mediumThreeByTwo210.jpg",
              "format": "mediumThreeByTwo210",
              "height": 140,
              "width": 210
            },
            {
              "url": "https://static01.nyt.com/images/2024/01/08/multimedia/08WELL-SALMON-4-lfgv/08WELL-SALMON-4-lfgv-mediumThreeByTwo440.jpg",
              "format": "mediumThreeByTwo440",
              "height": 293,
              "width": 440
            }
          ]
        }
      ],
      "eta_id": 0
    },
    {
      "uri": "nyt://interactive/c91b2a01-f337-5b94-a61b-c91f62996698",
      "url": "https://www.nytimes.com/interactive/2024/01/04/travel/things-to-do-zurich.html",
      "id": 100000009209403,
      "asset_id": 100000009209403,
      "source": "New York Times",
      "published_date": "2024-01-04",
      "updated": "2024-01-04 05:00:00",
      "section": "Travel",
      "subsection": "",
      "nytdsection": "travel",
      "adx_keywords": "Restaurants;Bars and Nightclubs;Art;Travel and Vacations;Shopping and Retail;Museums;Historic Buildings and Sites;Content Type: Service;Le Corbusier;Kunsthaus Zurich;Audemars Piguet Group;Hauser \u0026 Wirth;Tonhalle Orchestra;Switzerland;Zurich (Switzerland)",
      "column": null,
      "byline": "By Noele Illien",
      "type": "Interactive",
      "title": "36 Hours in Zurich",
      "abstract": "Ride a fondue tram, explore art galleries in a converted brewery and toboggan down a mountain in Switzerland’s largest city.",
      "des_facet": [
        "Restaurants",
        "Bars and Nightclubs",
        "Art",
        "Travel and Vacations",
        "Shopping and Retail",
        "Museums",
        "Historic Buildings and Sites",
        "Content Type: Service"
      ],
      "org_facet": [
        "Kunsthaus Zurich",
        "Audemars Piguet Group",
        "Hauser \u0026 Wirth",
        "Tonhalle Orchestra"
      ],
      "per_facet": [
        "Le Corbusier"
      ],
      "geo_facet": [
        "Switzerland",
        "Zurich (Switzerland)"
      ],
      "media": [
        {
          "type": "image",
          "subtype": "",
          "caption": "",
          "copyright": "Clara Tuma for The New York Times",
          "approved_for_syndication": 1,
          "media-metadata": [
            {
              "url": "https://static01.nyt.com/images/2024/01/04/multimedia/36hours-zurich-view-1-jvfh/36hours-zurich-view-1-jvfh-thumbStandard.jpg",
              "format": "Standard Thumbnail",
              "height": 75,
              "width": 75
            },
            {
              "url": "https://static01.nyt.com/images/2024/01/04/multimedia/36hours-zurich-view-1-jvfh/36hours-zurich-view-1-jvfh-mediumThreeByTwo210.jpg",
              "format": "mediumThreeByTwo210",
              "height": 140,
              "width": 210
            },
            {
              "url": "https://static01.nyt.com/images/2024/01/04/multimedia/36hours-zurich-view-1-jvfh/36hours-zurich-view-1-jvfh-mediumThreeByTwo440.jpg",
              "format": "mediumThreeByTwo440",
              "height": 293,
              "width": 440
            }
          ]
        }
      ],
      "eta_id": 0
    },
    {
      "uri": "nyt://interactive/d5d460ca-b437-599b-a886-ec5fc49a6fb0",
      "url": "https://www.nytimes.com/interactive/2024/travel/places-to-travel-destinations-2024.html",
      "id": 100000009222041,
      "asset_id": 100000009222041,
      "source": "New York Times",
      "published_date": "2024-01-08",
      "updated": "2024-01-10 12:04:08",
      "section": "Travel",
      "subsection": "",
      "nytdsection": "travel",
      "adx_keywords": "Travel and Vacations;Two Thousand Twenty Four;Eclipses;Morocco Earthquake (Sept 8, 2023);vis-design;Monarch Butterfly Biosphere Reserve (Michoacan, Mexico);Brasilia (Brazil);Paris (France);Japan;New Zealand;Maui (Hawaii);Grand Canyon (Ariz);Singapore;Chile;Ladakh (India);Geneva (Switzerland);Dominica;Manchester (England);Idaho;Baltimore (Md);Sri Lanka;Italy;Wales;Valencia (Spain);Kansas City (Mo);Madagascar;Yucatan Peninsula (Mexico);Indonesia;Almaty (Kazakhstan);Quito (Ecuador);Quebec Province (Canada);Montgomery (Ala);Tasmania (Australia);Waterford (Ireland);Kenya;El Salvador;Cambodia;Iceland;Montevideo (Uruguay);Mustang (Nepal);Vienna (Austria);Brisbane (Australia);Pasadena (Calif);Hurghada (Egypt);Boundary Waters Canoe Area (Minn);Thessaloniki (Greece);Normandy (France);Grenada;Costa Rica;Albania;Whitehorse (Yukon Territory);Peru;Dresden (Germany);Everglades (Fla);Morocco;Bolivia",
      "column": null,
      "byline": "By Danielle Dowling, Ceylan Yeginsu, Craig Mod, Stephanie Pearson, Christine Chung, Gina Rae La Cerva, Nicholas Gill, Poras Chaudhary, Adam H. Graham, Nora Walsh, Ratha Tep, Daniel Scheffler, Lucinda Hahn, Liza Weisstuch, Ingrid K. Williams, Susanne Masters, Vivian Yee, Vivian Song, Alexander Lobrano, Elaine Glusac, Joel Carillet, Annelise Sorensen, Danielle Pergament, Paulo Motoryn, Seth Sherwood, Laurence Blair, Michele Bigley, Danial Adkison, Elisabeth Goodridge, Isabella Kwai, David Feliba, Abbie Kozolchyk, Jorge Valencia and Patricia Mazzei",
      "type": "Interactive",
      "title": "52 Places to Go in 2024",
      "abstract": "No matter why you travel, our list offers inspiration.",
      "des_facet": [
        "Travel and Vacations",
        "Two Thousand Twenty Four",
        "Eclipses",
        "Morocco Earthquake (Sept 8, 2023)",
        "vis-design"
      ],
      "org_facet": [
        "Monarch Butterfly Biosphere Reserve (Michoacan, Mexico)"
      ],
      "per_facet": [
        
      ],
      "geo_facet": [
        "Brasilia (Brazil)",
        "Paris (France)",
        "Japan",
        "New Zealand",
        "Maui (Hawaii)",
        "Grand Canyon (Ariz)",
        "Singapore",
        "Chile",
        "Ladakh (India)",
        "Geneva (Switzerland)",
        "Dominica",
        "Manchester (England)",
        "Idaho",
        "Baltimore (Md)",
        "Sri Lanka",
        "Italy",
        "Wales",
        "Valencia (Spain)",
        "Kansas City (Mo)",
        "Madagascar",
        "Yucatan Peninsula (Mexico)",
        "Indonesia",
        "Almaty (Kazakhstan)",
        "Quito (Ecuador)",
        "Quebec Province (Canada)",
        "Montgomery (Ala)",
        "Tasmania (Australia)",
        "Waterford (Ireland)",
        "Kenya",
        "El Salvador",
        "Cambodia",
        "Iceland",
        "Montevideo (Uruguay)",
        "Mustang (Nepal)",
        "Vienna (Austria)",
        "Brisbane (Australia)",
        "Pasadena (Calif)",
        "Hurghada (Egypt)",
        "Boundary Waters Canoe Area (Minn)",
        "Thessaloniki (Greece)",
        "Normandy (France)",
        "Grenada",
        "Costa Rica",
        "Albania",
        "Whitehorse (Yukon Territory)",
        "Peru",
        "Dresden (Germany)",
        "Everglades (Fla)",
        "Morocco",
        "Bolivia"
      ],
      "media": [
        {
          "type": "image",
          "subtype": "",
          "caption": "",
          "copyright": "",
          "approved_for_syndication": 0,
          "media-metadata": [
            {
              "url": "https://static01.nyt.com/images/2024/01/09/travel/09-52PLACES-2024-PROMO/09-52PLACES-2024-PROMO-thumbStandard.jpg",
              "format": "Standard Thumbnail",
              "height": 75,
              "width": 75
            },
            {
              "url": "https://static01.nyt.com/images/2024/01/09/travel/09-52PLACES-2024-PROMO/09-52PLACES-2024-PROMO-mediumThreeByTwo210.jpg",
              "format": "mediumThreeByTwo210",
              "height": 140,
              "width": 210
            },
            {
              "url": "https://static01.nyt.com/images/2024/01/09/travel/09-52PLACES-2024-PROMO/09-52PLACES-2024-PROMO-mediumThreeByTwo440.jpg",
              "format": "mediumThreeByTwo440",
              "height": 293,
              "width": 440
            }
          ]
        }
      ],
      "eta_id": 0
    },
    {
      "uri": "nyt://article/74e2856d-9537-521a-baeb-401266ae0e4f",
      "url": "https://www.nytimes.com/2024/01/04/opinion/taylor-swift-queer.html",
      "id": 100000009235304,
      "asset_id": 100000009235304,
      "source": "New York Times",
      "published_date": "2024-01-04",
      "updated": "2024-01-06 14:48:26",
      "section": "Opinion",
      "subsection": "",
      "nytdsection": "opinion",
      "adx_keywords": "Pop and Rock Music;Homosexuality and Bisexuality;Celebrities;Country Music;Discrimination;LGBTQ Pride Month (US);Content Type: Personal Profile;Fans (Persons);Swift, Taylor",
      "column": null,
      "byline": "By Anna Marks",
      "type": "Article",
      "title": "Look What We Made Taylor Swift Do",
      "abstract": "Whether she is conscious of it or not, Ms. Swift signals to queer people — in our language — that she has some affinity for queer identity.",
      "des_facet": [
        "Pop and Rock Music",
        "Homosexuality and Bisexuality",
        "Celebrities",
        "Country Music",
        "Discrimination",
        "LGBTQ Pride Month (US)",
        "Content Type: Personal Profile",
        "Fans (Persons)"
      ],
      "org_facet": [
        
      ],
      "per_facet": [
        "Swift, Taylor"
      ],
      "geo_facet": [
        
      ],
      "media": [
        {
          "type": "image",
          "subtype": "photo",
          "caption": "",
          "copyright": "Angie Wang",
          "approved_for_syndication": 0,
          "media-metadata": [
            {
              "url": "https://static01.nyt.com/images/2024/01/04/opinion/04marks/04marks-thumbStandard.jpg",
              "format": "Standard Thumbnail",
              "height": 75,
              "width": 75
            },
            {
              "url": "https://static01.nyt.com/images/2024/01/04/opinion/04marks/04marks-mediumThreeByTwo210.jpg",
              "format": "mediumThreeByTwo210",
              "height": 140,
              "width": 210
            },
            {
              "url": "https://static01.nyt.com/images/2024/01/04/opinion/04marks/04marks-mediumThreeByTwo440.jpg",
              "format": "mediumThreeByTwo440",
              "height": 293,
              "width": 440
            }
          ]
        }
      ],
      "eta_id": 0
    }
  ]
}
*/
