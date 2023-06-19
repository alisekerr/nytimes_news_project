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
    const userKey = 'z1VyPHhnnCr0u8YAokW6GszI0JRuHfqG';
    const path = '/mostpopular/v2/viewed/7.json?api-key=$userKey';

    final mockResponse = {
      'data': {
        'results': [
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
            "uri": "nyt://article/ea8440f1-3e64-5b99-a396-d2e38464f990",
            "url":
                "https://www.nytimes.com/2023/06/13/nyregion/keechant-sewell-nypd-resignation.html",
            "id": 100000008950779,
            "asset_id": 100000008950779,
            "source": "New York Times",
            "published_date": "2023-06-13",
            "updated": "2023-06-14 09:39:54",
            "section": "New York",
            "subsection": "",
            "nytdsection": "new york",
            "adx_keywords":
                "Police;Appointments and Executive Changes;Local Government;Adams, Eric L;Maddrey, Jeffrey;Pearson, Timothy;Sewell, Keechant;Banks, Philip III;Police Department (NYC);New York City",
            "column": null,
            "byline":
                "By Chelsia Rose Marcius, Maria Cramer and William K. Rashbaum",
            "type": "Article",
            "title":
                "Inside the Turmoil That Led N.Y.P.D.’s Commissioner to Walk Away",
            "abstract":
                "Keechant Sewell walked into Mayor Eric Adams’s office unannounced on Monday and told him she would be leaving. No one but her closest aides saw it coming.",
            "des_facet": [
              "Police",
              "Appointments and Executive Changes",
              "Local Government"
            ],
            "org_facet": ["Police Department (NYC)"],
            "per_facet": [
              "Adams, Eric L",
              "Maddrey, Jeffrey",
              "Pearson, Timothy",
              "Sewell, Keechant",
              "Banks, Philip III"
            ],
            "geo_facet": ["New York City"],
            "media": [
              {
                "type": "image",
                "subtype": "photo",
                "caption":
                    "Keechant Sewell, the New York City police commissioner, said this week that she would resign. ",
                "copyright": "Anna Watts for The New York Times",
                "approved_for_syndication": 1,
                "media-metadata": [
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/13/multimedia/13ny-sewell1-vptw/13ny-sewell1-vptw-thumbStandard.jpg",
                    "format": "Standard Thumbnail",
                    "height": 75,
                    "width": 75
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/13/multimedia/13ny-sewell1-vptw/13ny-sewell1-vptw-mediumThreeByTwo210.jpg",
                    "format": "mediumThreeByTwo210",
                    "height": 140,
                    "width": 210
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/13/multimedia/13ny-sewell1-vptw/13ny-sewell1-vptw-mediumThreeByTwo440.jpg",
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
            "uri": "nyt://article/dfaac049-434c-50b5-8d33-f588f89d7746",
            "url":
                "https://www.nytimes.com/2023/06/14/us/politics/aileen-cannon-judge-trump-documents.html",
            "id": 100000008952247,
            "asset_id": 100000008952247,
            "source": "New York Times",
            "published_date": "2023-06-14",
            "updated": "2023-06-15 09:23:49",
            "section": "U.S.",
            "subsection": "Politics",
            "nytdsection": "u.s.",
            "adx_keywords":
                "Federal Criminal Case Against Trump (Documents Case);Classified Information and State Secrets;United States Politics and Government;Special Prosecutors (Independent Counsel);Legal Profession;Federal Courts (US);Content Type: Personal Profile;Cannon, Aileen M;Trump, Donald J;Smith, Jack (Attorney);Justice Department",
            "column": null,
            "byline": "By Michael S. Schmidt and Charlie Savage",
            "type": "Article",
            "title":
                "Judge in Trump Documents Case Has Scant Criminal Trial Experience",
            "abstract":
                "Judge Aileen M. Cannon, under scrutiny for past rulings favoring the former president, has presided over only a few criminal cases that went to trial.",
            "des_facet": [
              "Federal Criminal Case Against Trump (Documents Case)",
              "Classified Information and State Secrets",
              "United States Politics and Government",
              "Special Prosecutors (Independent Counsel)",
              "Legal Profession",
              "Federal Courts (US)",
              "Content Type: Personal Profile"
            ],
            "org_facet": ["Justice Department"],
            "per_facet": [
              "Cannon, Aileen M",
              "Trump, Donald J",
              "Smith, Jack (Attorney)"
            ],
            "geo_facet": [],
            "media": [
              {
                "type": "image",
                "subtype": "photo",
                "caption":
                    "Judge Aileen M. Cannon, 42, has been on the bench since November 2020, when President Donald J. Trump gave her a lifetime appointment shortly after he lost re-election.",
                "copyright": "Senate Judiciary Committee, via Associated Press",
                "approved_for_syndication": 1,
                "media-metadata": [
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/14/multimedia/14dc-cannon-01-cbpj/14dc-cannon-01-cbpj-thumbStandard.jpg",
                    "format": "Standard Thumbnail",
                    "height": 75,
                    "width": 75
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/14/multimedia/14dc-cannon-01-cbpj/14dc-cannon-01-cbpj-mediumThreeByTwo210.jpg",
                    "format": "mediumThreeByTwo210",
                    "height": 140,
                    "width": 210
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/14/multimedia/14dc-cannon-01-cbpj/14dc-cannon-01-cbpj-mediumThreeByTwo440.jpg",
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
            "uri": "nyt://article/56477cb3-c20c-5389-b971-4459a8c9b2db",
            "url":
                "https://www.nytimes.com/2023/06/15/us/politics/trump-documents-boxes.html",
            "id": 100000008954575,
            "asset_id": 100000008954575,
            "source": "New York Times",
            "published_date": "2023-06-15",
            "updated": "2023-06-16 12:18:48",
            "section": "U.S.",
            "subsection": "Politics",
            "nytdsection": "u.s.",
            "adx_keywords":
                "Federal Criminal Case Against Trump (Documents Case);Classified Information and State Secrets;United States Politics and Government;Trump, Donald J;Mar-a-Lago (Palm Beach, Fla);National Archives and Records Administration;Justice Department",
            "column": null,
            "byline": "By Maggie Haberman, Alan Feuer and Michael S. Schmidt",
            "type": "Article",
            "title":
                "At the Heart of the Documents Case: Trump’s Attachment to His Boxes",
            "abstract":
                "The former president has long stowed papers and odds and ends in cartons that he liked to keep close. His aides have called it the “beautiful mind” material.",
            "des_facet": [
              "Federal Criminal Case Against Trump (Documents Case)",
              "Classified Information and State Secrets",
              "United States Politics and Government"
            ],
            "org_facet": [
              "Mar-a-Lago (Palm Beach, Fla)",
              "National Archives and Records Administration",
              "Justice Department"
            ],
            "per_facet": ["Trump, Donald J"],
            "geo_facet": [],
            "media": [
              {
                "type": "image",
                "subtype": "photo",
                "caption":
                    "Former President Donald J. Trump’s attachment to the contents of the boxes has left him in serious legal peril.",
                "copyright": "Doug Mills/The New York Times",
                "approved_for_syndication": 1,
                "media-metadata": [
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/15/multimedia/15dc-boxes-01-gvkh/15dc-boxes-01-gvkh-thumbStandard.jpg",
                    "format": "Standard Thumbnail",
                    "height": 75,
                    "width": 75
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/15/multimedia/15dc-boxes-01-gvkh/15dc-boxes-01-gvkh-mediumThreeByTwo210.jpg",
                    "format": "mediumThreeByTwo210",
                    "height": 140,
                    "width": 210
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/15/multimedia/15dc-boxes-01-gvkh/15dc-boxes-01-gvkh-mediumThreeByTwo440.jpg",
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
            "uri": "nyt://article/498881a5-c8a7-5341-a932-d44ea8f51f0c",
            "url":
                "https://www.nytimes.com/2023/06/17/opinion/to-jail-or-not-to-jail.html",
            "id": 100000008957144,
            "asset_id": 100000008957144,
            "source": "New York Times",
            "published_date": "2023-06-17",
            "updated": "2023-06-17 11:13:30",
            "section": "Opinion",
            "subsection": "",
            "nytdsection": "opinion",
            "adx_keywords":
                "Federal Criminal Case Against Trump (Documents Case);Presidential Election of 2024;Classified Information and State Secrets;Trump, Donald J;Republican Party",
            "column": null,
            "byline": "By Maureen Dowd",
            "type": "Article",
            "title": "To Jail or Not to Jail",
            "abstract": "Rough sledding for Citizen Trump.",
            "des_facet": [
              "Federal Criminal Case Against Trump (Documents Case)",
              "Presidential Election of 2024",
              "Classified Information and State Secrets"
            ],
            "org_facet": ["Republican Party"],
            "per_facet": ["Trump, Donald J"],
            "geo_facet": [],
            "media": [
              {
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Justice Department",
                "approved_for_syndication": 1,
                "media-metadata": [
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/17/multimedia/17dowd-image-cgqj/17dowd-image-cgqj-thumbStandard-v3.jpg",
                    "format": "Standard Thumbnail",
                    "height": 75,
                    "width": 75
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/17/multimedia/17dowd-image-cgqj/17dowd-image-cgqj-mediumThreeByTwo210-v3.jpg",
                    "format": "mediumThreeByTwo210",
                    "height": 140,
                    "width": 210
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/17/multimedia/17dowd-image-cgqj/17dowd-image-cgqj-mediumThreeByTwo440-v3.jpg",
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
            "uri": "nyt://article/62502983-6d80-55f3-97f0-65ead1f02fe1",
            "url":
                "https://www.nytimes.com/2023/06/12/us/politics/trump-legal-documents.html",
            "id": 100000008948679,
            "asset_id": 100000008948679,
            "source": "New York Times",
            "published_date": "2023-06-12",
            "updated": "2023-06-14 14:53:11",
            "section": "U.S.",
            "subsection": "Politics",
            "nytdsection": "u.s.",
            "adx_keywords":
                "Federal Criminal Case Against Trump (Documents Case);Classified Information and State Secrets;United States Politics and Government;Trump, Donald J;Justice Department",
            "column": null,
            "byline": "By Alan Feuer, Maggie Haberman and Ben Protess",
            "type": "Article",
            "title":
                "Trump Has Options for Fighting Charges, but They Might Face Challenges",
            "abstract":
                "The former president has already tested a variety of arguments to challenge his indictment in the classified documents case. They could be hard to sustain in court.",
            "des_facet": [
              "Federal Criminal Case Against Trump (Documents Case)",
              "Classified Information and State Secrets",
              "United States Politics and Government"
            ],
            "org_facet": ["Justice Department"],
            "per_facet": ["Trump, Donald J"],
            "geo_facet": [],
            "media": [
              {
                "type": "image",
                "subtype": "photo",
                "caption":
                    "Former President Donald J. Trump arrived in Miami on Monday before his court appearance on Tuesday.",
                "copyright": "Win Mcnamee/Getty Images",
                "approved_for_syndication": 1,
                "media-metadata": [
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/12/multimedia/12dc-legal-qhcb/12dc-legal-qhcb-thumbStandard.jpg",
                    "format": "Standard Thumbnail",
                    "height": 75,
                    "width": 75
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/12/multimedia/12dc-legal-qhcb/12dc-legal-qhcb-mediumThreeByTwo210.jpg",
                    "format": "mediumThreeByTwo210",
                    "height": 140,
                    "width": 210
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/12/multimedia/12dc-legal-qhcb/12dc-legal-qhcb-mediumThreeByTwo440.jpg",
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
            "uri": "nyt://article/ff35105a-d275-5589-afc5-28cc343082cd",
            "url":
                "https://www.nytimes.com/2023/06/13/sports/olympics/tori-bowie-death-childbirth-pregnant.html",
            "id": 100000008949707,
            "asset_id": 100000008949707,
            "source": "New York Times",
            "published_date": "2023-06-13",
            "updated": "2023-06-16 18:34:53",
            "section": "Sports",
            "subsection": "Olympics",
            "nytdsection": "sports",
            "adx_keywords":
                "Track and Field;Olympic Games (2016);Preeclampsia;Bowie, Tori (1990- )",
            "column": null,
            "byline": "By Talya Minsberg",
            "type": "Article",
            "title": "Track Star Tori Bowie Died in Childbirth",
            "abstract":
                "An autopsy report listed respiratory distress and eclampsia as possible complications. Bowie was 32.",
            "des_facet": [
              "Track and Field",
              "Olympic Games (2016)",
              "Preeclampsia"
            ],
            "org_facet": [],
            "per_facet": ["Bowie, Tori (1990- )"],
            "geo_facet": [],
            "media": [
              {
                "type": "image",
                "subtype": "photo",
                "caption":
                    "Tori Bowie, a three-time Olympic medalist, died at age 32.",
                "copyright": "Alastair Grant/Associated Press",
                "approved_for_syndication": 1,
                "media-metadata": [
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/14/multimedia/14bowie-folo-cwkb/14bowie-folo-cwkb-thumbStandard.jpg",
                    "format": "Standard Thumbnail",
                    "height": 75,
                    "width": 75
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/14/multimedia/14bowie-folo-cwkb/14bowie-folo-cwkb-mediumThreeByTwo210-v2.jpg",
                    "format": "mediumThreeByTwo210",
                    "height": 140,
                    "width": 210
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/14/multimedia/14bowie-folo-cwkb/14bowie-folo-cwkb-mediumThreeByTwo440-v2.jpg",
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
            "uri": "nyt://article/979c09ca-642e-57a2-a7e0-010550944db7",
            "url":
                "https://www.nytimes.com/2023/06/16/us/daniel-ellsberg-dead.html",
            "id": 100000006665360,
            "asset_id": 100000006665360,
            "source": "New York Times",
            "published_date": "2023-06-16",
            "updated": "2023-06-16 23:29:10",
            "section": "U.S.",
            "subsection": "",
            "nytdsection": "u.s.",
            "adx_keywords":
                "Deaths (Obituaries);Pentagon Papers;Vietnam War;Classified Information and State Secrets;United States Defense and Military Forces;Ellsberg, Daniel;Nixon, Richard Milhous;Russo, Anthony J (1936-2008);New York Times",
            "column": null,
            "byline": "By Robert D. McFadden",
            "type": "Article",
            "title":
                "Daniel Ellsberg, Who Leaked the Pentagon Papers, Is Dead at 92",
            "abstract":
                "Deeply disturbed by the accounting of American deceit in Vietnam, he approached The New York Times. The disclosures that followed rocked the nation.",
            "des_facet": [
              "Deaths (Obituaries)",
              "Pentagon Papers",
              "Vietnam War",
              "Classified Information and State Secrets",
              "United States Defense and Military Forces"
            ],
            "org_facet": ["New York Times"],
            "per_facet": [
              "Ellsberg, Daniel",
              "Nixon, Richard Milhous",
              "Russo, Anthony J (1936-2008)"
            ],
            "geo_facet": [],
            "media": [
              {
                "type": "image",
                "subtype": "photo",
                "caption":
                    "Mr. Ellsberg and his wife, Patricia, in 1971, when he surrendered to federal authorities in Boston.",
                "copyright": "Donald F. Holway/The New York Times",
                "approved_for_syndication": 1,
                "media-metadata": [
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/03/15/obituaries/00ellsberg-03/00ellsberg-03-thumbStandard-v2.jpg",
                    "format": "Standard Thumbnail",
                    "height": 75,
                    "width": 75
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/03/15/obituaries/00ellsberg-03/merlin_202140630_00f77f6e-ada3-4cc0-bc79-d8d2279597a6-mediumThreeByTwo210.jpg",
                    "format": "mediumThreeByTwo210",
                    "height": 140,
                    "width": 210
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/03/15/obituaries/00ellsberg-03/merlin_202140630_00f77f6e-ada3-4cc0-bc79-d8d2279597a6-mediumThreeByTwo440.jpg",
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
            "uri": "nyt://interactive/c1a2a8d5-6841-59e6-987b-5d7392bff774",
            "url":
                "https://www.nytimes.com/interactive/2023/06/15/realestate/los-angeles-mount-washington-homes.html",
            "id": 100000008953078,
            "asset_id": 100000008953078,
            "source": "New York Times",
            "published_date": "2023-06-15",
            "updated": "2023-06-15 22:49:23",
            "section": "Real Estate",
            "subsection": "",
            "nytdsection": "real estate",
            "adx_keywords":
                "Real Estate and Housing (Residential);Content Type: Personal Profile;Los Angeles (Calif)",
            "column": null,
            "byline": "By Livia Albeck-Ripka",
            "type": "Interactive",
            "title":
                "Two Lifelong Floridians Bolted for Los Angeles, but What Could They Afford? ",
            "abstract":
                "A couple of empty nesters, tired of the humidity and politics in the Sunshine State, headed west to be closer to their children. Which L.A. neighborhood would be right for their retirement years?",
            "des_facet": [
              "Real Estate and Housing (Residential)",
              "Content Type: Personal Profile"
            ],
            "org_facet": [],
            "per_facet": [],
            "geo_facet": ["Los Angeles (Calif)"],
            "media": [
              {
                "type": "image",
                "subtype": "",
                "caption":
                    "Alice Vickers and John Davis in Los Angeles, where they recently bought a house after living most of their lives in Florida. Scouring the city was a daunting process, Ms. Vickers said: “We had no idea of any parts of it and where we would want to live.”",
                "copyright": "Elizabeth Lippman for The New York Times",
                "approved_for_syndication": 1,
                "media-metadata": [
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/18/multimedia/15Hunt-Vickers-02-jkqg/15Hunt-Vickers-02-jkqg-thumbStandard-v2.jpg",
                    "format": "Standard Thumbnail",
                    "height": 75,
                    "width": 75
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/18/multimedia/15Hunt-Vickers-02-jkqg/15Hunt-Vickers-02-jkqg-mediumThreeByTwo210-v2.jpg",
                    "format": "mediumThreeByTwo210",
                    "height": 140,
                    "width": 210
                  },
                  {
                    "url":
                        "https://static01.nyt.com/images/2023/06/18/multimedia/15Hunt-Vickers-02-jkqg/15Hunt-Vickers-02-jkqg-mediumThreeByTwo440-v2.jpg",
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
            '‘He Has Nothing Else’: Our Writers on Trump and the 2024 Election'));
    expect(
        newsList.results?[1].title,
        equals(
            'Southern Baptists Vote to Further Expand Restrictions on Women as Leaders'));
  });
}
