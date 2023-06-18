import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:nytimes_news_project/core/init/network/network_manager.dart';
import 'package:nytimes_news_project/view/news/model/news_model.dart';

void main() {
  late Dio dio;
  late DioAdapter dioAdapter;
  late NetworkManager networkManager;

  setUp(() {
    dio = Dio();
    dioAdapter = DioAdapter(dio: dio);
    networkManager = NetworkManager();
    dio.httpClientAdapter = dioAdapter;
  });

  test('Test getWithHeaders method', () async {
    const userKey = 'ljsiTzXxKm6sSauCHjOt37q8860ddpyL';
    const path = '/mostpopular/v2/viewed/7.json?api-key=$userKey';

    final mockResponse = {
      'data': {
        'results': [
          {
            "uri": "nyt://article/f03f2d9b-df43-54f0-87e2-c8ed5577d54c",
            "url":
                "https://www.nytimes.com/2023/06/10/us/politics/trump-supporter-violent-rhetoric.html",
            "id": 100000008946816,
            "asset_id": 100000008946816,
            "source": "New York Times",
            "published_date": "2023-06-10",
            "updated": "2023-06-14 09:40:13",
            "section": "U.S.",
            "subsection": "Politics",
            "nytdsection": "u.s.",
            "adx_keywords":
                "Federal Criminal Case Against Trump (Documents Case);Classified Information and State Secrets;United States Politics and Government;Right-Wing Extremism and Alt-Right;Threats and Threatening Messages;Trump, Donald J",
            "column": null,
            "byline":
                "By Michael S. Schmidt, Alan Feuer, Maggie Haberman and Adam Goldman",
            "type": "Article",
            "title":
                "Trump Supporters’ Violent Rhetoric in His Defense Disturbs Experts",
            "abstract":
                "The former president’s allies have portrayed the indictment as an act of war and called for retribution, which political violence experts say increases the risk of action.",
            "des_facet": [
              "Federal Criminal Case Against Trump (Documents Case)",
              "Classified Information and State Secrets",
              "United States Politics and Government",
              "Right-Wing Extremism and Alt-Right",
              "Threats and Threatening Messages"
            ],
            "org_facet": [],
            "per_facet": ["Trump, Donald J"],
            "geo_facet": [],
            "media": [
              {
                "type": "image",
                "subtype": "photo",
                "caption":
                    "“If you want to get to President Trump, you are going to have go through me, and you are going to have to go through 75 million Americans just like me,” said Kari Lake, the Republican former candidate for governor of Arizona. “And I’m going to tell you, most of us are card-carrying members of the N.R.A.”",
                "copyright": "Jon Cherry for The New York Times",
                "approved_for_syndication": 1,
                "media-metadata": [
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/10/multimedia/10dc-violence-sub-kvmp/10dc-violence-sub-kvmp-thumbStandard.jpg",
                    "format": "Standard Thumbnail",
                    "height": 75,
                    "width": 75
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/10/multimedia/10dc-violence-sub-kvmp/10dc-violence-sub-kvmp-mediumThreeByTwo210.jpg",
                    "format": "mediumThreeByTwo210",
                    "height": 140,
                    "width": 210
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/10/multimedia/10dc-violence-sub-kvmp/10dc-violence-sub-kvmp-mediumThreeByTwo440.jpg",
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
            "uri": "nyt://article/2d6546c9-99a8-5e0b-bcbb-cbcabb0e75fd",
            "url":
                "https://www.nytimes.com/2023/06/15/us/politics/trump-indictment-justice-department.html",
            "id": 100000008952287,
            "asset_id": 100000008952287,
            "source": "New York Times",
            "published_date": "2023-06-15",
            "updated": "2023-06-16 09:38:50",
            "section": "U.S.",
            "subsection": "Politics",
            "nytdsection": "u.s.",
            "adx_keywords":
                "Presidents and Presidency (US);Special Prosecutors (Independent Counsel);Conservatism (US Politics);Federal Criminal Case Against Trump (Documents Case);Classified Information and State Secrets;Presidential Election of 2024;United States Politics and Government;Trump, Donald J;Biden, Joseph R Jr;Clark, Jeffrey B (1967- );Vought, Russell T;Justice Department;Federal Bureau of Investigation;Republican Party",
            "column": null,
            "byline": "By Jonathan Swan, Charlie Savage and Maggie Haberman",
            "type": "Article",
            "title":
                "The Radical Strategy Behind Trump’s Promise to ‘Go After’ Biden",
            "abstract":
                "Conservatives with close ties to Donald J. Trump are laying out a “paradigm-shifting” legal rationale to erase the Justice Department’s independence from the president.",
            "des_facet": [
              "Presidents and Presidency (US)",
              "Special Prosecutors (Independent Counsel)",
              "Conservatism (US Politics)",
              "Federal Criminal Case Against Trump (Documents Case)",
              "Classified Information and State Secrets",
              "Presidential Election of 2024",
              "United States Politics and Government"
            ],
            "org_facet": [
              "Justice Department",
              "Federal Bureau of Investigation",
              "Republican Party"
            ],
            "per_facet": [
              "Trump, Donald J",
              "Biden, Joseph R Jr",
              "Clark, Jeffrey B (1967- )",
              "Vought, Russell T"
            ],
            "geo_facet": [],
            "media": [
              {
                "type": "image",
                "subtype": "photo",
                "caption":
                    "“I will totally obliterate the Deep State,” Donald Trump said on Tuesday evening at an event at his club in Bedminster, N.J., hours after his arraignment on federal charges.",
                "copyright": "Doug Mills/The New York Times",
                "approved_for_syndication": 1,
                "media-metadata": [
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/15/multimedia/15pol-gop-justice-01-mkcj/15pol-gop-justice-01-mkcj-thumbStandard.jpg",
                    "format": "Standard Thumbnail",
                    "height": 75,
                    "width": 75
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/15/multimedia/15pol-gop-justice-01-mkcj/15pol-gop-justice-01-mkcj-mediumThreeByTwo210.jpg",
                    "format": "mediumThreeByTwo210",
                    "height": 140,
                    "width": 210
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/15/multimedia/15pol-gop-justice-01-mkcj/15pol-gop-justice-01-mkcj-mediumThreeByTwo440.jpg",
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
            "uri": "nyt://article/1588f48c-59ee-50f8-954a-1c5b5dceb26c",
            "url":
                "https://www.nytimes.com/2023/06/14/business/westfield-mall-sf.html",
            "id": 100000008950760,
            "asset_id": 100000008950760,
            "source": "New York Times",
            "published_date": "2023-06-14",
            "updated": "2023-06-15 20:39:54",
            "section": "Business",
            "subsection": "",
            "nytdsection": "business",
            "adx_keywords":
                "Shopping Centers and Malls;Real Estate (Commercial);Shopping and Retail;Renting and Leasing (Real Estate);CUSHMAN & WAKEFIELD INC;Westfield Corp;San Francisco (Calif)",
            "column": null,
            "byline": "By Jordyn Holman and Thomas Fuller",
            "type": "Article",
            "title":
                "Westfield Gives Up San Francisco Mall, Signaling More Pain Ahead",
            "abstract":
                "Retailers have been fleeing the city’s downtown, and some analysts say there may be more to come. It’s an issue facing various downtowns around the United States.",
            "des_facet": [
              "Shopping Centers and Malls",
              "Real Estate (Commercial)",
              "Shopping and Retail",
              "Renting and Leasing (Real Estate)"
            ],
            "org_facet": ["CUSHMAN & WAKEFIELD INC", "Westfield Corp"],
            "per_facet": [],
            "geo_facet": ["San Francisco (Calif)"],
            "media": [
              {
                "type": "image",
                "subtype": "photo",
                "caption":
                    "Westfield, which has owned the downtown San Francisco Centre mall since 2002, said this week that it was handing it back to its lender. The mall is expected to be 45 percent empty when Nordstrom departs this summer.",
                "copyright": "Jason Henry for The New York Times",
                "approved_for_syndication": 1,
                "media-metadata": [
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/15/multimedia/15downtown-retail-print1/14downtown-retail-01-cfbm-thumbStandard.jpg",
                    "format": "Standard Thumbnail",
                    "height": 75,
                    "width": 75
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/15/multimedia/15downtown-retail-print1/14downtown-retail-01-cfbm-mediumThreeByTwo210.jpg",
                    "format": "mediumThreeByTwo210",
                    "height": 140,
                    "width": 210
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/15/multimedia/15downtown-retail-print1/14downtown-retail-01-cfbm-mediumThreeByTwo440.jpg",
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
            "uri": "nyt://article/bf43260d-33b8-5f15-abdb-f2b2ade03080",
            "url":
                "https://www.nytimes.com/2023/06/14/us/southern-baptist-women-pastors-ouster.html",
            "id": 100000008951423,
            "asset_id": 100000008951423,
            "source": "New York Times",
            "published_date": "2023-06-14",
            "updated": "2023-06-15 10:05:40",
            "section": "U.S.",
            "subsection": "",
            "nytdsection": "u.s.",
            "adx_keywords":
                "Women and Girls;Discrimination;Ministers (Protestant);Baptist Churches;Evangelical Movement;Barnes Popham, Linda;Warren, Rick;Southern Baptist Convention;Fern Creek Baptist Church (Louisville, Ky);Saddleback Church;New Orleans (La);Louisville (Ky)",
            "column": null,
            "byline": "By Ruth Graham and Elizabeth Dias",
            "type": "Article",
            "title":
                "Southern Baptists Vote to Further Expand Restrictions on Women as Leaders",
            "abstract":
                "Delegates at the denomination’s convention approved a stricter ban on female pastors and rejected the appeals of two churches led by women to remain in the denomination.",
            "des_facet": [
              "Women and Girls",
              "Discrimination",
              "Ministers (Protestant)",
              "Baptist Churches",
              "Evangelical Movement"
            ],
            "org_facet": [
              "Southern Baptist Convention",
              "Fern Creek Baptist Church (Louisville, Ky)",
              "Saddleback Church"
            ],
            "per_facet": ["Barnes Popham, Linda", "Warren, Rick"],
            "geo_facet": ["New Orleans (La)", "Louisville (Ky)"],
            "media": [
              {
                "type": "image",
                "subtype": "photo",
                "caption":
                    "Linda Barnes Popham, the pastor of Fern Creek Baptist Church, held up a Bible as she appealed the Southern Baptist Convention’s decision to expel her church from the denomination.",
                "copyright": "Christiana Botic for The New York Times",
                "approved_for_syndication": 1,
                "media-metadata": [
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/14/multimedia/14NAT-SBC-VOTE-02-qvcj/14NAT-SBC-VOTE-02-qvcj-thumbStandard.jpg",
                    "format": "Standard Thumbnail",
                    "height": 75,
                    "width": 75
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/14/multimedia/14NAT-SBC-VOTE-02-qvcj/14NAT-SBC-VOTE-02-qvcj-mediumThreeByTwo210.jpg",
                    "format": "mediumThreeByTwo210",
                    "height": 140,
                    "width": 210
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/14/multimedia/14NAT-SBC-VOTE-02-qvcj/14NAT-SBC-VOTE-02-qvcj-mediumThreeByTwo440.jpg",
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
            "uri": "nyt://article/d84585dc-c609-547a-8f93-915aa3dd1a33",
            "url":
                "https://www.nytimes.com/2023/06/13/opinion/trump-indictment-documents.html",
            "id": 100000008948900,
            "asset_id": 100000008948900,
            "source": "New York Times",
            "published_date": "2023-06-13",
            "updated": "2023-06-14 14:21:07",
            "section": "Opinion",
            "subsection": "",
            "nytdsection": "opinion",
            "adx_keywords":
                "Federal Criminal Case Against Trump (Documents Case);Classified Information and State Secrets;Conservatism (US Politics);United States Politics and Government;Trump, Donald J;Republican Party;Justice Department",
            "column": null,
            "byline": "By Bret Stephens",
            "type": "Article",
            "title": "Lock Him Up",
            "abstract":
                "If the prosecution can prove its case, Trump belongs in prison.",
            "des_facet": [
              "Federal Criminal Case Against Trump (Documents Case)",
              "Classified Information and State Secrets",
              "Conservatism (US Politics)",
              "United States Politics and Government"
            ],
            "org_facet": ["Republican Party", "Justice Department"],
            "per_facet": ["Trump, Donald J"],
            "geo_facet": [],
            "media": [
              {
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Mark Peterson for The New York Times",
                "approved_for_syndication": 1,
                "media-metadata": [
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/15/multimedia/13stephens1-lmvp/13stephens1-lmvp-thumbStandard.jpg",
                    "format": "Standard Thumbnail",
                    "height": 75,
                    "width": 75
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/15/multimedia/13stephens1-lmvp/13stephens1-lmvp-mediumThreeByTwo210.jpg",
                    "format": "mediumThreeByTwo210",
                    "height": 140,
                    "width": 210
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/15/multimedia/13stephens1-lmvp/13stephens1-lmvp-mediumThreeByTwo440.jpg",
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
            "uri": "nyt://article/19efc005-9a35-51c8-8e25-379639836000",
            "url":
                "https://www.nytimes.com/2023/06/15/arts/design/stolen-picasso-boston.html",
            "id": 100000008949023,
            "asset_id": 100000008949023,
            "source": "New York Times",
            "published_date": "2023-06-15",
            "updated": "2023-06-17 23:21:46",
            "section": "Arts",
            "subsection": "Art & Design",
            "nytdsection": "arts",
            "adx_keywords":
                "Art;Robberies and Thefts;Content Type: Personal Profile;internal-sub-only;audio-neutral-informative;Picasso, Pablo;Whitcomb Rummel Sr.;Rummel, Merrill;Logan International Airport (Boston, Mass);Museum of Fine Arts (Boston);Boston (Mass)",
            "column": null,
            "byline": "By Dan Barry",
            "type": "Article",
            "title": "Hey Dad, Can You Help Me Return the Picasso I Stole?",
            "abstract":
                "A painting that went missing in 1969 turned up at a museum’s doorstep before the F.B.I. could hunt it down. No one knew how or why — until now.",
            "des_facet": [
              "Art",
              "Robberies and Thefts",
              "Content Type: Personal Profile",
              "internal-sub-only",
              "audio-neutral-informative"
            ],
            "org_facet": [
              "Logan International Airport (Boston, Mass)",
              "Museum of Fine Arts (Boston)"
            ],
            "per_facet": [
              "Picasso, Pablo",
              "Whitcomb Rummel Sr.",
              "Rummel, Merrill"
            ],
            "geo_facet": ["Boston (Mass)"],
            "media": [
              {
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "via Whitcomb Rummel Jr.",
                "approved_for_syndication": 0,
                "media-metadata": [
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/13/arts/00dads-picasso-promo/00dads-picasso-promo-thumbStandard-v3.jpg",
                    "format": "Standard Thumbnail",
                    "height": 75,
                    "width": 75
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/13/arts/00dads-picasso-promo/00dads-picasso-promo-mediumThreeByTwo210-v2.jpg",
                    "format": "mediumThreeByTwo210",
                    "height": 140,
                    "width": 210
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/13/arts/00dads-picasso-promo/00dads-picasso-promo-mediumThreeByTwo440-v2.jpg",
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
            "uri": "nyt://interactive/971d74e8-d975-57b2-96f7-b48a98ebc4cd",
            "url":
                "https://www.nytimes.com/interactive/2023/06/09/health/noise-exposure-health-impacts.html",
            "id": 100000008930012,
            "asset_id": 100000008930012,
            "source": "New York Times",
            "published_date": "2023-06-09",
            "updated": "2023-06-16 16:31:34",
            "section": "Health",
            "subsection": "",
            "nytdsection": "health",
            "adx_keywords":
                "Noise;Pollution;Stroke;Transportation;Heart;Hypertension;vis-design;internal-sub-only;vis-video;World Health Organization",
            "column": null,
            "byline":
                "By Emily Baumgaertner, Jason Kao, Eleanor Lutz, Josephine Sedgwick, Rumsey Taylor, Noah Throop and Josh Williams",
            "type": "Interactive",
            "title": "Noise Could Take Years Off Your Life. Here’s How.",
            "abstract":
                "We used a professional sound meter to measure the din of daily life and talked to scientists about the health risks it can pose.",
            "des_facet": [
              "Noise",
              "Pollution",
              "Stroke",
              "Transportation",
              "Heart",
              "Hypertension",
              "vis-design",
              "internal-sub-only",
              "vis-video"
            ],
            "org_facet": ["World Health Organization"],
            "per_facet": [],
            "geo_facet": [],
            "media": [
              {
                "type": "image",
                "subtype": "",
                "caption": "",
                "copyright": "Noah Throop/The New York Times",
                "approved_for_syndication": 1,
                "media-metadata": [
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/06/health/noise-exposure-health-impacts-index/noise-exposure-health-impacts-index-thumbStandard-v6.jpg",
                    "format": "Standard Thumbnail",
                    "height": 75,
                    "width": 75
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/06/health/noise-exposure-health-impacts-index/noise-exposure-health-impacts-index-mediumThreeByTwo210-v6.jpg",
                    "format": "mediumThreeByTwo210",
                    "height": 140,
                    "width": 210
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/06/health/noise-exposure-health-impacts-index/noise-exposure-health-impacts-index-mediumThreeByTwo440-v6.jpg",
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
            "uri": "nyt://article/3fb8c956-68b5-570f-a92b-bd3f7389d372",
            "url":
                "https://www.nytimes.com/2023/06/16/world/europe/woman-dead-attack-neuschwanstein-castle.html",
            "id": 100000008956047,
            "asset_id": 100000008956047,
            "source": "New York Times",
            "published_date": "2023-06-16",
            "updated": "2023-06-17 00:31:12",
            "section": "World",
            "subsection": "Europe",
            "nytdsection": "world",
            "adx_keywords":
                "Murders, Attempted Murders and Homicides;Sex Crimes;Neuschwanstein Castle;Bavaria (Germany)",
            "column": null,
            "byline": "By Christopher F. Schuetze",
            "type": "Article",
            "title":
                "American Woman Dies at Neuschwanstein Castle After Push Down Cliff",
            "abstract":
                "The woman, 21, was visiting the popular German site with a friend when they met a man who persuaded them to take a little-used trail and then assaulted them both, the police said.",
            "des_facet": [
              "Murders, Attempted Murders and Homicides",
              "Sex Crimes"
            ],
            "org_facet": ["Neuschwanstein Castle"],
            "per_facet": [],
            "geo_facet": ["Bavaria (Germany)"],
            "media": [
              {
                "type": "image",
                "subtype": "photo",
                "caption":
                    "Neuschwanstein Castle, in Germany. The other woman pushed down the cliff was hospitalized and in stable condition, the police said.",
                "copyright": "Reuters",
                "approved_for_syndication": 1,
                "media-metadata": [
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/16/multimedia/16germany-attack-01-bzvp/16germany-attack-01-bzvp-thumbStandard.jpg",
                    "format": "Standard Thumbnail",
                    "height": 75,
                    "width": 75
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/16/multimedia/16germany-attack-01-bzvp/16germany-attack-01-bzvp-mediumThreeByTwo210.jpg",
                    "format": "mediumThreeByTwo210",
                    "height": 140,
                    "width": 210
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/16/multimedia/16germany-attack-01-bzvp/16germany-attack-01-bzvp-mediumThreeByTwo440.jpg",
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
            "uri": "nyt://article/abfbe582-bf59-5276-adb2-d48e47c41536",
            "url":
                "https://www.nytimes.com/2023/06/12/us/trump-voters-florida-jury.html",
            "id": 100000008947414,
            "asset_id": 100000008947414,
            "source": "New York Times",
            "published_date": "2023-06-12",
            "updated": "2023-06-13 11:11:04",
            "section": "U.S.",
            "subsection": "",
            "nytdsection": "u.s.",
            "adx_keywords":
                "Federal Criminal Case Against Trump (Documents Case);Classified Information and State Secrets;Jury System;Voting and Voters;Polls and Public Opinion;Trump, Donald J;Mar-a-Lago (Palm Beach, Fla);Miami (Fla);Miami-Dade County (Fla);Palm Beach (Fla);Palm Beach County (Fla);West Palm Beach (Fla);Florida",
            "column": null,
            "byline": "By Nick Madigan, Verónica Zaragovia and Richard Fausset",
            "type": "Article",
            "title":
                "Floridians Would Make Up Trump’s Jury Pool. Here’s What Some Are Saying.",
            "abstract":
                "The complicated feelings among some residents about former President Donald J. Trump and the case against him reflect the complicated politics of the state.",
            "des_facet": [
              "Federal Criminal Case Against Trump (Documents Case)",
              "Classified Information and State Secrets",
              "Jury System",
              "Voting and Voters",
              "Polls and Public Opinion"
            ],
            "org_facet": ["Mar-a-Lago (Palm Beach, Fla)"],
            "per_facet": ["Trump, Donald J"],
            "geo_facet": [
              "Miami (Fla)",
              "Miami-Dade County (Fla)",
              "Palm Beach (Fla)",
              "Palm Beach County (Fla)",
              "West Palm Beach (Fla)",
              "Florida"
            ],
            "media": [
              {
                "type": "image",
                "subtype": "photo",
                "caption":
                    "The federal courthouse in Miami, where former President Donald J. Trump is scheduled to appear on Tuesday.",
                "copyright": "Saul Martinez for The New York Times",
                "approved_for_syndication": 1,
                "media-metadata": [
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/12/multimedia/12nat-miami-voters-lgtj/12nat-miami-voters-lgtj-thumbStandard.jpg",
                    "format": "Standard Thumbnail",
                    "height": 75,
                    "width": 75
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/12/multimedia/12nat-miami-voters-lgtj/12nat-miami-voters-lgtj-mediumThreeByTwo210.jpg",
                    "format": "mediumThreeByTwo210",
                    "height": 140,
                    "width": 210
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/12/multimedia/12nat-miami-voters-lgtj/12nat-miami-voters-lgtj-mediumThreeByTwo440.jpg",
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
            "uri": "nyt://article/70664898-2ed5-567a-8cbb-bd3f718f31bd",
            "url":
                "https://www.nytimes.com/2023/06/17/world/europe/russia-ukraine-war-tactics.html",
            "id": 100000008956020,
            "asset_id": 100000008956020,
            "source": "New York Times",
            "published_date": "2023-06-17",
            "updated": "2023-06-17 23:15:39",
            "section": "World",
            "subsection": "Europe",
            "nytdsection": "world",
            "adx_keywords":
                "Defense and Military Forces;Russian Invasion of Ukraine (2022);Mercenaries and Private Military Contractors;Wagner Group;Russia;Ukraine",
            "column": null,
            "byline":
                "By Thomas Gibbons-Neff, Julian E. Barnes and Natalia Yermak",
            "type": "Article",
            "title":
                "Russia, Learning From Costly Mistakes, Shifts Battlefield Tactics",
            "abstract":
                "Moscow’s forces remain uneven. But while bracing for a counteroffensive, they have improved discipline, coordination and air support, foreshadowing a changing war.",
            "des_facet": [
              "Defense and Military Forces",
              "Russian Invasion of Ukraine (2022)",
              "Mercenaries and Private Military Contractors"
            ],
            "org_facet": ["Wagner Group"],
            "per_facet": [],
            "geo_facet": ["Russia", "Ukraine"],
            "media": [
              {
                "type": "image",
                "subtype": "photo",
                "caption":
                    "Russian conscripts training in October near Rostov-on-Don, Russia.",
                "copyright": "Arkady Budnitsky/EPA, via Shutterstock",
                "approved_for_syndication": 1,
                "media-metadata": [
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/17/multimedia/17russia-tactics-01-thpq/17russia-tactics-01-thpq-thumbStandard.jpg",
                    "format": "Standard Thumbnail",
                    "height": 75,
                    "width": 75
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/17/multimedia/17russia-tactics-01-thpq/17russia-tactics-01-thpq-mediumThreeByTwo210.jpg",
                    "format": "mediumThreeByTwo210",
                    "height": 140,
                    "width": 210
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/17/multimedia/17russia-tactics-01-thpq/17russia-tactics-01-thpq-mediumThreeByTwo440.jpg",
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
            "uri": "nyt://interactive/ea4126bd-f451-53a8-b618-0f0dfd8b1b1b",
            "url":
                "https://www.nytimes.com/interactive/2023/06/16/briefing/news-quiz-trump-unabomber-nuggets-sajak.html",
            "id": 100000008955610,
            "asset_id": 100000008955610,
            "source": "New York Times",
            "published_date": "2023-06-16",
            "updated": "2023-06-16 11:51:13",
            "section": "Briefing",
            "subsection": "",
            "nytdsection": "briefing",
            "adx_keywords": "Content Type: Quiz",
            "column": null,
            "byline": "",
            "type": "Interactive",
            "title": "The New York Times News Quiz, June 16, 2023",
            "abstract":
                "Did you follow the news this week? Take our quiz to see how well you stack up with other Times readers.",
            "des_facet": ["Content Type: Quiz"],
            "org_facet": [],
            "per_facet": [],
            "geo_facet": [],
            "media": [
              {
                "type": "image",
                "subtype": "",
                "caption": "",
                "copyright": "Doug Mills/The New York Times",
                "approved_for_syndication": 1,
                "media-metadata": [
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/16/multimedia/16newsquiz-Trump-ktlv/16newsquiz-Trump-ktlv-thumbStandard.jpg",
                    "format": "Standard Thumbnail",
                    "height": 75,
                    "width": 75
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/16/multimedia/16newsquiz-Trump-ktlv/16newsquiz-Trump-ktlv-mediumThreeByTwo210.jpg",
                    "format": "mediumThreeByTwo210",
                    "height": 140,
                    "width": 210
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/16/multimedia/16newsquiz-Trump-ktlv/16newsquiz-Trump-ktlv-mediumThreeByTwo440.jpg",
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
            "uri": "nyt://article/4a4cc580-c64c-529d-a5ce-c80e92beeb43",
            "url":
                "https://www.nytimes.com/2023/06/11/us/politics/walt-nauta-trump-documents.html",
            "id": 100000008946749,
            "asset_id": 100000008946749,
            "source": "New York Times",
            "published_date": "2023-06-11",
            "updated": "2023-06-12 13:21:48",
            "section": "U.S.",
            "subsection": "Politics",
            "nytdsection": "u.s.",
            "adx_keywords":
                "Federal Criminal Case Against Trump (Documents Case);Classified Information and State Secrets;United States Politics and Government;Nauta, Walt;Trump, Donald J;Justice Department;Mar-a-Lago (Palm Beach, Fla);United States Navy",
            "column": null,
            "byline": "By Alan Feuer, Maggie Haberman and Jonathan Swan",
            "type": "Article",
            "title":
                "How Walt Nauta, a Personal Aide, Came to Be Charged as Trump’s Co-Conspirator",
            "abstract":
                "A Navy veteran and a regular presence at Donald Trump’s side, he is said to have played a central role in helping to thwart government efforts to retrieve classified documents.",
            "des_facet": [
              "Federal Criminal Case Against Trump (Documents Case)",
              "Classified Information and State Secrets",
              "United States Politics and Government"
            ],
            "org_facet": [
              "Justice Department",
              "Mar-a-Lago (Palm Beach, Fla)",
              "United States Navy"
            ],
            "per_facet": ["Nauta, Walt", "Trump, Donald J"],
            "geo_facet": [],
            "media": [
              {
                "type": "image",
                "subtype": "photo",
                "caption":
                    "Walt Nauta first met President Donald J. Trump while working in the White House’s Navy-run mess. He became Mr. Trump’s valet, and later a personal aide. ",
                "copyright": "Doug Mills/The New York Times",
                "approved_for_syndication": 1,
                "media-metadata": [
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/11/multimedia/11dc-nauta-2-hlwg/11dc-nauta-2-hlwg-thumbStandard.jpg",
                    "format": "Standard Thumbnail",
                    "height": 75,
                    "width": 75
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/11/multimedia/11dc-nauta-2-hlwg/11dc-nauta-2-hlwg-mediumThreeByTwo210.jpg",
                    "format": "mediumThreeByTwo210",
                    "height": 140,
                    "width": 210
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/11/multimedia/11dc-nauta-2-hlwg/11dc-nauta-2-hlwg-mediumThreeByTwo440.jpg",
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
            "uri": "nyt://article/e565f0a1-d12a-55ea-8d10-39834d0d6819",
            "url":
                "https://www.nytimes.com/2023/06/16/books/carol-higgins-clark-dead.html",
            "id": 100000008955157,
            "asset_id": 100000008955157,
            "source": "New York Times",
            "published_date": "2023-06-16",
            "updated": "2023-06-18 14:29:30",
            "section": "Books",
            "subsection": "",
            "nytdsection": "books",
            "adx_keywords":
                "Deaths (Obituaries);Books and Literature;Writing and Writers;genre-books-mystery;Clark, Carol Higgins;Clark, Mary Higgins",
            "column": null,
            "byline": "By Neil Genzlinger",
            "type": "Article",
            "title": "Carol Higgins Clark, Mystery Writer, Is Dead at 66",
            "abstract":
                "She had a modest career as an actress but was best known for following in the footsteps of her mother, the best-selling author Mary Higgins Clark.",
            "des_facet": [
              "Deaths (Obituaries)",
              "Books and Literature",
              "Writing and Writers",
              "genre-books-mystery"
            ],
            "org_facet": [],
            "per_facet": ["Clark, Carol Higgins", "Clark, Mary Higgins"],
            "geo_facet": [],
            "media": [
              {
                "type": "image",
                "subtype": "photo",
                "caption":
                    "The mystery writer Carol Higgins Clark in her Manhattan apartment in 2004. She wrote more than a dozen novels and also collaborated with her mother, Mary Higgins Clark.",
                "copyright": "Nancy Siesel/The New York Times",
                "approved_for_syndication": 1,
                "media-metadata": [
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/17/multimedia/16Clark-01-blvc-print1/16Clark-01-blvc-thumbStandard.jpg",
                    "format": "Standard Thumbnail",
                    "height": 75,
                    "width": 75
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/17/multimedia/16Clark-01-blvc-print1/16Clark-01-blvc-mediumThreeByTwo210.jpg",
                    "format": "mediumThreeByTwo210",
                    "height": 140,
                    "width": 210
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/17/multimedia/16Clark-01-blvc-print1/16Clark-01-blvc-mediumThreeByTwo440.jpg",
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
            "uri": "nyt://article/814e256d-25a1-5be6-b342-17ce0989c75c",
            "url":
                "https://www.nytimes.com/2023/06/13/books/cormac-mccarthy-dead.html",
            "id": 100000006678855,
            "asset_id": 100000006678855,
            "source": "New York Times",
            "published_date": "2023-06-13",
            "updated": "2023-06-14 14:53:20",
            "section": "Books",
            "subsection": "",
            "nytdsection": "books",
            "adx_keywords":
                "Deaths (Obituaries);Books and Literature;Writing and Writers;McCarthy, Cormac",
            "column": null,
            "byline": "By Dwight Garner",
            "type": "Article",
            "title":
                "Cormac McCarthy, Novelist of a Darker America, Is Dead at 89",
            "abstract":
                "“All the Pretty Horses,” “The Road” and “No Country for Old Men” were among his acclaimed books that explore a bleak world of violence and outsiders.",
            "des_facet": [
              "Deaths (Obituaries)",
              "Books and Literature",
              "Writing and Writers"
            ],
            "org_facet": [],
            "per_facet": ["McCarthy, Cormac"],
            "geo_facet": [],
            "media": [
              {
                "type": "image",
                "subtype": "photo",
                "caption":
                    "Cormac McCarthy in 2011. In books like “All the Pretty Horses,” “The Road” and “No Country for Old Men” he took a dark view of the human condition.",
                "copyright": "Dawn Jones/Professor Productions",
                "approved_for_syndication": 1,
                "media-metadata": [
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/14/obituaries/00mccarthy_cormac-1-print1/00mccarthy_cormac-1-thumbStandard.jpg",
                    "format": "Standard Thumbnail",
                    "height": 75,
                    "width": 75
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/14/obituaries/00mccarthy_cormac-1-print1/00mccarthy_cormac-1-mediumThreeByTwo210.jpg",
                    "format": "mediumThreeByTwo210",
                    "height": 140,
                    "width": 210
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/14/obituaries/00mccarthy_cormac-1-print1/00mccarthy_cormac-1-mediumThreeByTwo440.jpg",
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
            "uri": "nyt://article/f3a30d59-0385-548e-8671-a379066def67",
            "url":
                "https://www.nytimes.com/2023/06/14/opinion/trump-prison-convicted.html",
            "id": 100000008951934,
            "asset_id": 100000008951934,
            "source": "New York Times",
            "published_date": "2023-06-14",
            "updated": "2023-06-15 14:04:55",
            "section": "Opinion",
            "subsection": "",
            "nytdsection": "opinion",
            "adx_keywords":
                "Federal Criminal Case Against Trump (Documents Case);Presidential Election of 2024;Classified Information and State Secrets;United States Politics and Government;Trump, Donald J",
            "column": null,
            "byline": "By Nicholas Kristof",
            "type": "Article",
            "title":
                "I Think Trump Is Going Down, and Yet I Keep Having the Same Nightmare",
            "abstract":
                "A president governing from behind bars? It’s utterly unimaginable. Probably.",
            "des_facet": [
              "Federal Criminal Case Against Trump (Documents Case)",
              "Presidential Election of 2024",
              "Classified Information and State Secrets",
              "United States Politics and Government"
            ],
            "org_facet": [],
            "per_facet": ["Trump, Donald J"],
            "geo_facet": [],
            "media": [
              {
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Mark Peterson for The New York Times",
                "approved_for_syndication": 1,
                "media-metadata": [
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/15/multimedia/14kristof-bklc/14kristof-bklc-thumbStandard.jpg",
                    "format": "Standard Thumbnail",
                    "height": 75,
                    "width": 75
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/15/multimedia/14kristof-bklc/14kristof-bklc-mediumThreeByTwo210.jpg",
                    "format": "mediumThreeByTwo210",
                    "height": 140,
                    "width": 210
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/15/multimedia/14kristof-bklc/14kristof-bklc-mediumThreeByTwo440.jpg",
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
            "uri": "nyt://article/f29c16a4-7c55-5da3-90ea-ae14f4848991",
            "url":
                "https://www.nytimes.com/2023/06/12/opinion/donald-trump-2024.html",
            "id": 100000008926712,
            "asset_id": 100000008926712,
            "source": "New York Times",
            "published_date": "2023-06-12",
            "updated": "2023-06-17 11:01:09",
            "section": "Opinion",
            "subsection": "",
            "nytdsection": "opinion",
            "adx_keywords":
                "Presidential Election of 2024;United States Politics and Government;Presidential Election of 2016;Primaries and Caucuses;Storming of the US Capitol (Jan, 2021);Conservatism (US Politics);Trump, Donald J;Republican Party",
            "column": null,
            "byline": "By New York Times Opinion",
            "type": "Article",
            "title":
                "‘He Has Nothing Else’: Our Writers on Trump and the 2024 Election",
            "abstract":
                "Times columnists and contributors evaluate the former president’s chances in the G.O.P. primary contest.",
            "des_facet": [
              "Presidential Election of 2024",
              "United States Politics and Government",
              "Presidential Election of 2016",
              "Primaries and Caucuses",
              "Storming of the US Capitol (Jan, 2021)",
              "Conservatism (US Politics)"
            ],
            "org_facet": ["Republican Party"],
            "per_facet": ["Trump, Donald J"],
            "geo_facet": [],
            "media": [
              {
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright":
                    "Illustration by Shoshana Schultz/The New York Times; photograph by Anna Moneymaker/Getty",
                "approved_for_syndication": 1,
                "media-metadata": [
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/12/opinion/12scorecard-trump/12scorecard-trump-thumbStandard.jpg",
                    "format": "Standard Thumbnail",
                    "height": 75,
                    "width": 75
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/12/opinion/12scorecard-trump/12scorecard-trump-mediumThreeByTwo210.jpg",
                    "format": "mediumThreeByTwo210",
                    "height": 140,
                    "width": 210
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/12/opinion/12scorecard-trump/12scorecard-trump-mediumThreeByTwo440.jpg",
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
            "uri": "nyt://article/a858885f-4525-5d1c-8ca6-410ec44dedb6",
            "url":
                "https://www.nytimes.com/2023/06/13/opinion/trump-indictment-presidency.html",
            "id": 100000008950612,
            "asset_id": 100000008950612,
            "source": "New York Times",
            "published_date": "2023-06-13",
            "updated": "2023-06-14 09:26:07",
            "section": "Opinion",
            "subsection": "",
            "nytdsection": "opinion",
            "adx_keywords":
                "Federal Criminal Case Against Trump (Documents Case);Classified Information and State Secrets;Presidential Election of 2024;United States Politics and Government;Trump, Donald J;Republican Party",
            "column": null,
            "byline": "By Thomas L. Friedman",
            "type": "Article",
            "title":
                "Trump Thrives in a Broken System. He’ll Get Us There Soon.",
            "abstract":
                "It’s a place where rules are for suckers, norms are for fools, truths are pliable and people of high character are banished.",
            "des_facet": [
              "Federal Criminal Case Against Trump (Documents Case)",
              "Classified Information and State Secrets",
              "Presidential Election of 2024",
              "United States Politics and Government"
            ],
            "org_facet": ["Republican Party"],
            "per_facet": ["Trump, Donald J"],
            "geo_facet": [],
            "media": [
              {
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Damon Winter/The New York Times",
                "approved_for_syndication": 1,
                "media-metadata": [
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/14/multimedia/14friedmanNew-mvtb/14friedmanNew-mvtb-thumbStandard.jpg",
                    "format": "Standard Thumbnail",
                    "height": 75,
                    "width": 75
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/14/multimedia/14friedmanNew-mvtb/14friedmanNew-mvtb-mediumThreeByTwo210.jpg",
                    "format": "mediumThreeByTwo210",
                    "height": 140,
                    "width": 210
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/14/multimedia/14friedmanNew-mvtb/14friedmanNew-mvtb-mediumThreeByTwo440.jpg",
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
            "uri": "nyt://article/890c6065-5e20-53fb-a85c-49ea10614842",
            "url":
                "https://www.nytimes.com/2023/06/11/world/europe/nicola-sturgeon-scotland-arrest.html",
            "id": 100000008865832,
            "asset_id": 100000008865832,
            "source": "New York Times",
            "published_date": "2023-06-11",
            "updated": "2023-06-12 12:43:02",
            "section": "World",
            "subsection": "Europe",
            "nytdsection": "world",
            "adx_keywords":
                "Politics and Government;Campaign Finance;Sturgeon, Nicola;Yousaf, Humza (1985- );Murrell, Peter (1964- );Scottish National Party;Great Britain;Scotland",
            "column": null,
            "byline": "By Stephen Castle",
            "type": "Article",
            "title":
                "Nicola Sturgeon, Scotland’s Former Leader, Is Arrested in Financial Inquiry",
            "abstract":
                "The arrest of Ms. Sturgeon, who resigned as leader of the Scottish National Party in February, follows that of her husband, previously the party’s chief executive, and of its former treasurer.",
            "des_facet": ["Politics and Government", "Campaign Finance"],
            "org_facet": ["Scottish National Party"],
            "per_facet": [
              "Sturgeon, Nicola",
              "Yousaf, Humza (1985- )",
              "Murrell, Peter (1964- )"
            ],
            "geo_facet": ["Great Britain", "Scotland"],
            "media": [
              {
                "type": "image",
                "subtype": "photo",
                "caption":
                    "Nicola Sturgeon in April outside her home in Glasgow.",
                "copyright":
                    "Andrew Milligan/Press Association, via Associated Press",
                "approved_for_syndication": 1,
                "media-metadata": [
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/11/multimedia/11uk-sturgeon-01-mthg/11uk-sturgeon-01-mthg-thumbStandard.jpg",
                    "format": "Standard Thumbnail",
                    "height": 75,
                    "width": 75
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/11/multimedia/11uk-sturgeon-01-mthg/11uk-sturgeon-01-mthg-mediumThreeByTwo210-v2.jpg",
                    "format": "mediumThreeByTwo210",
                    "height": 140,
                    "width": 210
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/11/multimedia/11uk-sturgeon-01-mthg/11uk-sturgeon-01-mthg-mediumThreeByTwo440-v2.jpg",
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
            "uri": "nyt://article/cbdf86bd-c8c8-530b-8811-b530944b6f09",
            "url":
                "https://www.nytimes.com/2023/06/17/opinion/taylor-swift-mental-health.html",
            "id": 100000008936899,
            "asset_id": 100000008936899,
            "source": "New York Times",
            "published_date": "2023-06-17",
            "updated": "2023-06-18 10:07:32",
            "section": "Opinion",
            "subsection": "",
            "nytdsection": "opinion",
            "adx_keywords":
                "Pop and Rock Music;Teenagers and Adolescence;Loneliness;Psychiatry and Psychiatrists;Therapy and Rehabilitation;Content Type: Personal Profile;Women and Girls;Fans (Persons);Mental Health and Disorders;Swift, Taylor",
            "column": null,
            "byline": "By Suzanne Garfinkle-Crowell",
            "type": "Article",
            "title": "Taylor Swift Has Rocked My Psychiatric Practice",
            "abstract":
                "What she has taught my patients about how to shake it off — and why nobody can calm down.",
            "des_facet": [
              "Pop and Rock Music",
              "Teenagers and Adolescence",
              "Loneliness",
              "Psychiatry and Psychiatrists",
              "Therapy and Rehabilitation",
              "Content Type: Personal Profile",
              "Women and Girls",
              "Fans (Persons)",
              "Mental Health and Disorders"
            ],
            "org_facet": [],
            "per_facet": ["Swift, Taylor"],
            "geo_facet": [],
            "media": [
              {
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Zack Wittman for The New York Times",
                "approved_for_syndication": 1,
                "media-metadata": [
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/20/multimedia/17garfinkle-zlmg/17garfinkle-zlmg-thumbStandard-v3.jpg",
                    "format": "Standard Thumbnail",
                    "height": 75,
                    "width": 75
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/20/multimedia/17garfinkle-zlmg/17garfinkle-zlmg-mediumThreeByTwo210.jpg",
                    "format": "mediumThreeByTwo210",
                    "height": 140,
                    "width": 210
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/20/multimedia/17garfinkle-zlmg/17garfinkle-zlmg-mediumThreeByTwo440.jpg",
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
            "uri": "nyt://article/6e5e1eaa-c0e4-5f1e-9c98-16eedda005de",
            "url":
                "https://www.nytimes.com/2023/06/11/us/politics/trump-indictment-m-evan-corcoran.html",
            "id": 100000008947428,
            "asset_id": 100000008947428,
            "source": "New York Times",
            "published_date": "2023-06-11",
            "updated": "2023-06-14 14:54:21",
            "section": "U.S.",
            "subsection": "Politics",
            "nytdsection": "u.s.",
            "adx_keywords":
                "Federal Criminal Case Against Trump (Documents Case);Classified Information and State Secrets;New York State Criminal Case Against Trump (71543-23);United States Politics and Government;Cohen, Michael D (1966- );Corcoran, M Evan;Trump, Donald J;Smith, Jack (Attorney);Howell, Beryl A;Justice Department;Mar-a-Lago (Palm Beach, Fla)",
            "column": null,
            "byline": "By Maggie Haberman, Alan Feuer and Ben Protess",
            "type": "Article",
            "title":
                "Trump Indictment Shows Critical Evidence Came From One of His Own Lawyers",
            "abstract":
                "M. Evan Corcoran, who was hired to represent the former president after the Justice Department issued a subpoena for classified documents at Mar-a-Lago, could be a key witness in the trial.",
            "des_facet": [
              "Federal Criminal Case Against Trump (Documents Case)",
              "Classified Information and State Secrets",
              "New York State Criminal Case Against Trump (71543-23)",
              "United States Politics and Government"
            ],
            "org_facet": ["Justice Department", "Mar-a-Lago (Palm Beach, Fla)"],
            "per_facet": [
              "Cohen, Michael D (1966- )",
              "Corcoran, M Evan",
              "Trump, Donald J",
              "Smith, Jack (Attorney)",
              "Howell, Beryl A"
            ],
            "geo_facet": [],
            "media": [
              {
                "type": "image",
                "subtype": "photo",
                "caption":
                    "Along with the notes of M. Evan Corcoran, left, prosecutors drew upon text messages from a number of Donald Trump’s employees and a recording made of him by an aide.",
                "copyright": "Kenny Holston for The New York Times",
                "approved_for_syndication": 1,
                "media-metadata": [
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/11/multimedia/11dc-corcoran-gjlz/11dc-corcoran-gjlz-thumbStandard-v2.jpg",
                    "format": "Standard Thumbnail",
                    "height": 75,
                    "width": 75
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/11/multimedia/11dc-corcoran-gjlz/11dc-corcoran-gjlz-mediumThreeByTwo210-v3.jpg",
                    "format": "mediumThreeByTwo210",
                    "height": 140,
                    "width": 210
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/11/multimedia/11dc-corcoran-gjlz/11dc-corcoran-gjlz-mediumThreeByTwo440-v3.jpg",
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
    };
    dioAdapter.onGet(
      '$serviceUrl$path',
      (request) => request.reply(200, mockResponse),
    );

    final response = await networkManager.getWithHeaders(path: path);
    final newsList = NewsModel.fromJson(response.data);

    expect(response.statusCode, equals(200));
    expect(newsList.results?.length, equals(20));
    expect(
        newsList.results?[0].title,
        equals(
            'Trump Supporters’ Violent Rhetoric in His Defense Disturbs Experts'));
    expect(
        newsList.results?[1].title,
        equals(
            'The Radical Strategy Behind Trump’s Promise to ‘Go After’ Biden'));
  });
}
