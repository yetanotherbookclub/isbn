# ISBN

ISBN search service

## Endpoints

#### `/:isbn`

Returns data for a given isbn

    GET //isbn.zd-micro.com/9780802197627

    {
      "title": "A Confederacy of Dunces",
      "author": "John Kennedy Toole",
      "image_url": "http://bks5.books.google.com/books/content?id=Hg0jKHsj6DMC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
      "description": "Toole's lunatic and sage novel introduces one of the most memorable characters in American literature, Ignatius Reilly, whom Walker Percy dubs \"slob extraordinaire, a mad Oliver Hardy, a fat Don Quixote, a perverse Thomas Aquinas rolled into one.\" Set in New Orleans, A confederacy of Dunces outswifts Swift, one of whose essays gives the book its title. As its characters burst into life, they leave the region and literature forever changed by their presence-Ignatius and his mother; Miss Trixie, the octogenarian assistant accountant at Levi Pants; inept, wan Patrolman Mancuso; Darlene, the Bourbon Street stripper with a penchant for poultry; Jones the jivecat in spaceage dark glasses.",
      "page_count": 416,
      "isbn": "9780802197627",
      "rating": 3.0,
      "detail_url": "http://books.google.com/books?id=Hg0jKHsj6DMC&printsec=frontcover&dq=isbn:9780802197627&hl=&cd=1&source=gbs_api",
      "published_at": "2007-12-01"
    }

#### `/search/:term`

Search for a book given a term

    GET //isbn.zd-micro.com/search/dunces

    [
      {
        "title": "A Confederacy of Dunces",
        "author": "John Kennedy Toole",
        "image_url": "http://bks5.books.google.com/books/content?id=Hg0jKHsj6DMC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
        "detail_url": "http://books.google.com/books?id=Hg0jKHsj6DMC&printsec=frontcover&dq=dunces&hl=&cd=1&source=gbs_api",
        "description": "Toole's lunatic and sage novel introduces one of the most memorable characters in American literature, Ignatius Reilly, whom Walker Percy dubs \"slob extraordinaire, a mad Oliver Hardy, a fat Don Quixote, a perverse Thomas Aquinas rolled into one.\" Set in New Orleans, A confederacy of Dunces outswifts Swift, one of whose essays gives the book its title. As its characters burst into life, they leave the region and literature forever changed by their presence-Ignatius and his mother; Miss Trixie, the octogenarian assistant accountant at Levi Pants; inept, wan Patrolman Mancuso; Darlene, the Bourbon Street stripper with a penchant for poultry; Jones the jivecat in spaceage dark glasses.",
        "isbn": "9780802197627",
        "page_count": 416,
        "rating": 3.0,
        "published_at": "2007-12-01"
      },
      {
        "title": "A Confederacy of Dunces",
        "author": "John Kennedy Toole",
        "image_url": "http://bks3.books.google.com/books/content?id=WM6OztAsYWQC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
        "detail_url": "http://books.google.com/books?id=WM6OztAsYWQC&printsec=frontcover&dq=dunces&hl=&cd=2&source=gbs_api",
        "description": "Ignatius J. Reilly of New Orleans, --selfish, domineering, deluded, tragic and larger than life-- is a noble crusader against a world of dunces. He is a modern-day Quixote beset by giants of the modern age. In magnificent revolt against the twentieth century, Ignatius propels his monstrous bulk among the flesh posts of the fallen city, documenting life on his Big Chief tablets as he goes, until his maroon-haired mother decrees that Ignatius must work.",
        "isbn": "9780807130087",
        "page_count": 632,
        "rating": 3.5,
        "published_at": "2004"
      },
      {
        "title": "A Confederacy of Dunces",
        "author": "John Kennedy Toole",
        "image_url": "http://bks8.books.google.com/books/content?id=xXxWIS_KF5gC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
        "detail_url": "http://books.google.com/books?id=xXxWIS_KF5gC&printsec=frontcover&dq=dunces&hl=&cd=3&source=gbs_api",
        "description": "Released by Louisiana State University Press in April 1980, A Confederacy of Dunces is nothing short of a publishing phenomenon. Turned down by countless publishers and submitted by the author's mother years after his suicide, the book won the 1981 Pulitzer Prize for Fiction. Today, there are over 1,500,000 copies in print worldwide in eighteen languages. Set in New Orleans, A Confederacy of Dunces outswifts Swift, one of whose essays gives the book its title. As its characters burst into life, they leave the region and literature forever changed by their presences - Ignatius and his mother; Miss Trixie, the octogenarian assistant accountant at Levy Pants; inept, wan Patrolman Mancuso; Darlene, the Bourbon Street stripper with a penchant for poultry; Jones, the jivecat in space-age dark glasses. Satire and farce animate A Confederacy of Dunces; tragic awareness ennobles it. Louisiana State University Press celebrates A Confederacy of Dunces' twentieth year with this anniversary edition, which includes a new introduction by Andrei Codrescu that examines the relationship of this modern-day classic to the city whose pulse it so brilliantly captures.",
        "isbn": "9780807126066",
        "page_count": 338,
        "rating": 2.5,
        "published_at": "2000"
      },
      {
        "title": "Dunces Anonymous",
        "author": "Kate Jaimet",
        "image_url": "http://bks5.books.google.com/books/content?id=_E_3YWXUnZUC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
        "detail_url": "http://books.google.com/books?id=_E_3YWXUnZUC&printsec=frontcover&dq=dunces&hl=&cd=4&source=gbs_api",
        "description": "Josh Johnson's mother wants him to run for class president. Josh just wants to run and hide. If only there were a club to help downtrodden eleven-year-olds escape their parents' ambitions! But since no such club exists, Josh has to invent one -- he calls it Dunces Anonymous, and before he knows it, the membership is up to three. Magnolia and Wang help Josh lose the school presidential election, but that's just the beginning of the club's activities. Magnolia, pressured by her mom into trying out for the role of Juliet in the school's play, finds herself fending off the advances of an overly amorous Romeo. Wang's father has forced him to join the school chess club, but Wang desperately wants to take fencing lessons instead. As the three friends try to free Magnolia from the school play, liberate Wang from the chess club and get rid of horrible Stacey Hogarth, who has vowed to become the new president of Dunces Anonymous, they realize that they all have talents -- if only their parents could see them.",
        "isbn": "9781554694600",
        "page_count": 168,
        "rating": 4.0,
        "published_at": "2009-10-01"
      },
      {
        "title": "Ken and Thelma",
        "author": "Fletcher, Joel",
        "image_url": "http://bks9.books.google.com/books/content?id=y9OWstUb1swC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
        "detail_url": "http://books.google.com/books?id=y9OWstUb1swC&printsec=frontcover&dq=dunces&hl=&cd=5&source=gbs_api",
        "description": "\"Ken has a real gift for mimicry and a refined sense of the absurd . . . the English faculty . . .both fear and court Ken because of his biting comic talent.\" --from Joel L. Fletcher's journal John Kennedy Toole's first published novel, A Confederacy of Dunces, which Walker Percy called a\"gargantuan tumultuous human tragi-comedy,\" became a publishing phenomenon, with almost two million copies in print worldwide in eighteen languages. The book's outrageous protagonist, Ignatius Reilly, is an icon of contemporary American fiction.Now Ken and Thelma sheds new light on the tragic life story of the author, known as 'Ken' to his friends. Drawing on his own journals and personal letters, Joel L. Fletcher recreates his friendship with Ken in the early 1960s and his long association with Ken's indomitable mother, Thelma Ducoing Toole, after the book's publication. Ken and Thelma features personal photographs, many never before published.",
        "isbn": "9781455606986",
        "page_count": 216,
        "rating": 3.5,
        "published_at": "2005-03-31"
      },
      {
        "title": "Hacks and Dunces",
        "author": "Pat Rogers",
        "image_url": "http://bks5.books.google.com/books/content?id=zdwOAAAAQAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api",
        "detail_url": "http://books.google.com/books?id=zdwOAAAAQAAJ&dq=dunces&hl=&cd=6&source=gbs_api",
        "description": "Profile of agricultural households in Timor Timur Province; statistical analysis.",
        "isbn": "9780416742404",
        "page_count": 239,
        "rating": null,
        "published_at": "1980"
    }]
