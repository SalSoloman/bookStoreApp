DROP TABLE IF EXISTS books;

CREATE TABLE books (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  description TEXT,
  image VARCHAR(255),
  published DATE
);

DROP TABLE IF EXISTS authors;

CREATE TABLE authors (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS genres;

CREATE TABLE genres (
  id SERIAL PRIMARY KEY,
  name VARCHAR NOT NULL
);

DROP TABLE IF EXISTS book_authors;

CREATE TABLE book_authors (
  book_id INTEGER NOT NULL,
  author_id INTEGER NOT NULL
);

DROP TABLE IF EXISTS book_genres;

CREATE TABLE book_genres (
  book_id INTEGER NOT NULL,
  genre_id INTEGER NOT NULL
);

--- Data Injection


INSERT INTO books (title, description, image, published)
VALUES ('Gone With the Wind', 'Since its original publication in 1936, Gone With the Wind—winner of the Pulitzer Prize and one of the bestselling novels of all time—has been heralded by readers everywhere as The Great American Novel.
Widely considered The Great American Novel, and often remembered for its epic film version, Gone With the Wind explores the depth of human passions with an intensity as bold as its setting in the red hills of Georgia. A superb piece of storytelling, it vividly depicts the drama of the Civil War and Reconstruction.
This is the tale of Scarlett O’Hara, the spoiled, manipulative daughter of a wealthy plantation owner, who arrives at young womanhood just in time to see the Civil War forever change her way of life. A sweeping story of tangled passion and courage, in the pages of Gone With the Wind, Margaret Mitchell brings to life the unforgettable characters that have captured readers for over seventy years.', 'https://images-na.ssl-images-amazon.com/images/I/81fNEaUebAL.jpg', '01-17-1940'),
('Wealth of Nations','It is symbolic that Adam Smith’s masterpiece of economic analysis, The Wealth of Nations, was first published in 1776, the same year as the Declaration of Independence.
In his book, Smith fervently extolled the simple yet enlightened notion that individuals are fully capable of setting and regulating prices for their own goods and services. He argued passionately in favor of free trade, yet stood up for the little guy. The Wealth of Nations provided the first--and still the most eloquent--integrated description of the workings of a market economy.
The result of Smith’s efforts is a witty, highly readable work of genius filled with prescient theories that form the basis of a thriving capitalist system. This unabridged edition offers the modern reader a fresh look at a timeless and seminal work that revolutionized the way governments and individuals view the creation and dispersion of wealth--and that continues to influence our economy right up to the present day.', 'https://images-na.ssl-images-amazon.com/images/I/71B17GCpiFL.jpg', '01-01-1776'),
('The Alchemist', 'A special 25th anniversary edition of the extraordinary international bestseller, including a new Foreword by Paulo Coelho.
Combining magic, mysticism, wisdom and wonder into an inspiring tale of self-discovery, The Alchemist has become a modern classic, selling millions of copies around the world and transforming the lives of countless readers across generations.
Paulo Coelhos masterpiece tells the mystical story of Santiago, an Andalusian shepherd boy who yearns to travel in search of a worldly treasure. His quest will lead him to riches far different and far more satisfying than he ever imagined. Santiagos journey teaches us about the essential wisdom of listening to our hearts, of recognizing opportunity and learning to read the omens strewn along lifes path and most importantly to follow our dreams.', 'https://images-na.ssl-images-amazon.com/images/I/516c6gUQLaL.jpg', '03-04-1988'),
('The Great Gatsby', 'The Great Gatsby, F. Scott Fitzgeralds third book, stands as the supreme achievement of his career. This exemplary novel of the Jazz Age has been acclaimed by generations of readers. The story of the fabulously wealthy Jay Gatsby and his love for the beautiful Daisy Buchanan, of lavish parties on Long Island at a time when The New York Times noted gin was the national drink and sex the national obsession, it is an exquisitely crafted tale of America in the 1920s.', 'https://images-na.ssl-images-amazon.com/images/I/81mEbZQOrXL._SL1500_.jpg', '04-10-1925'),
('The Hobbit', 'Now a major motion picture
A great modern classic and the prelude to THE LORD OF THE RINGS
Bilbo Baggins is a hobbit who enjoys a comfortable, unambitious life, rarely traveling any farther than his pantry or cellar. But his contentment is disturbed when the wizard Gandalf and a company of dwarves arrive on his doorstep one day to whisk him away on an adventure. They have launched a plot to raid the treasure hoard guarded by Smaug the Magnificent, a large and very dangerous dragon. Bilbo reluctantly joins their quest, unaware that on his journey to the Lonely Mountain he will encounter both a magic ring and a frightening creature known as Gollum.
“A glorious account of a magnificent adventure, filled with suspense and seasoned with a quiet humor that is irresistible . . . All those, young or old, who love a fine adventurous tale, beautifully told, will take The Hobbit to their hearts.” – New York Times Book Review', 'https://images-na.ssl-images-amazon.com/images/I/41aQPTCmeVL.jpg', '09-18-2012'),
('The Lord of the Rings', 'One Ring to rule them all, One Ring to find them, One Ring to bring them all and in the darkness bind them
In ancient times the Rings of Power were crafted by the Elven-smiths, and Sauron, the Dark Lord, forged the One Ring, filling it with his own power so that he could rule all others. But the One Ring was taken from him, and though he sought it throughout Middle-earth, it remained lost to him. After many ages it fell by chance into the hands of the hobbit Bilbo Baggins.
From Saurons fastness in the Dark Tower of Mordor, his power spread far and wide. Sauron gathered all the Great Rings to him, but always he searched for the One Ring that would complete his dominion.
When Bilbo reached his eleventy-first birthday he disappeared, bequeathing to his young cousin Frodo the Ruling Ring and a perilous quest: to journey across Middle-earth, deep into the shadow of the Dark Lord, and destroy the Ring by casting it into the Cracks of Doom.
The Lord of the Rings tells of the great quest undertaken by Frodo and the Fellowship of the Ring: Gandalf the Wizard; the hobbits Merry, Pippin, and Sam; Gimli the Dwarf; Legolas the Elf; Boromir of Gondor; and a tall, mysterious stranger called Strider.
This new edition includes the fiftieth-anniversary fully corrected text setting and, for the first time, an extensive new index.
J.R.R. Tolkien (1892-1973), beloved throughout the world as the creator of The Hobbit, The Lord of the Rings, and The Silmarillion, was a professor of Anglo-Saxon at Oxford, a fellow of Pembroke College, and a fellow of Merton College until his retirement in 1959. His chief interest was the linguistic aspects of the early English written tradition, but while he studied classic works of the past, he was creating a set of his own.', 'https://images-na.ssl-images-amazon.com/images/I/51eq24cRtRL.jpg', '10-12-2005'),
('The Ethical Slut', 'The essential guide for singles and couples who want to explore polyamory in ways that are ethically and emotionally sustainable.
For anyone who has ever dreamed of love, sex, and companionship beyond the limits of traditional monogamy, this groundbreaking guide navigates the infinite possibilities that open relationships can offer. Experienced ethical sluts Dossie Easton and Janet W. Hardy dispel myths and cover all the skills necessary to maintain a successful and responsible polyamorous lifestyle--from self-reflection and honest communication to practicing safe sex and raising a family. Individuals and their partners will learn how to discuss and honor boundaries, resolve conflicts, and to define relationships on their own terms.
I couldnt stop reading it, and I for one identify as an ethical slut. This is a book for anyone interested in creating more pleasure in their lives . . . a complete guide to improving any style of relating, from going steady to having an extended family of sexual friends. Betty Dodson, PhD, author of Sex for One', 'https://images-na.ssl-images-amazon.com/images/I/51rg57YwZEL.jpg', '03-10-2009'),
('1984', 'It was a bright cold day in April  the clocks were striking thirteen this epic novel, George Orwell reminds us of BIG BROTHER the negative utopia that will befall upon the modern world. This is a classic for all to pay closer attention to be aware of the rulers the tactics they employ', 'https://images-na.ssl-images-amazon.com/images/I/31V6u4bj2lL.jpg', '02-03-2014'),
('Anna Karenina', 'Considered by some to be the greatest novel ever written, Anna Karenina is Tolstoys classic tale of love and adultery set against the backdrop of high society in Moscow and Saint Petersburg. A rich and complex masterpiece, the novel charts the disastrous course of a love affair between Anna, a beautiful married woman, and Count Vronsky, a wealthy army officer. Tolstoy seamlessly weaves together the lives of dozens of characters, and in doing so captures a breathtaking tapestry of late-nineteenth-century Russian society. As Matthew Arnold wrote in his celebrated essay on Tolstoy, We are not to take Anna Karenina as a work of art; we are to take it as a piece of life.', 'https://images-na.ssl-images-amazon.com/images/I/71sA-hkxIcL.jpg', '10-10-2000'),
('A Tale of Two Cities', 'It was the time of the French Revolution — a time of great change and great danger. It was a time when injustice was met by a lust for vengeance, and rarely was a distinction made between the innocent and the guilty. Against this tumultuous historical backdrop, Dickens great story of unsurpassed adventure and courage unfolds.
Unjustly imprisoned for 18 years in the Bastille, Dr. Alexandre Manette is reunited with his daughter, Lucie, and safely transported from France to England. It would seem that they could take up the threads of their lives in peace. As fate would have it though, the pair are summoned to the Old Bailey to testify against a young Frenchman — Charles Darnay — falsely accused of treason. Strangely enough, Darnay bears an uncanny resemblance to another man in the courtroom, the dissolute lawyers clerk Sydney Carton. It is a coincidence that saves Darnay from certain doom more than once. Brilliantly plotted, the novel is rich in drama, romance, and heroics that culminate in a daring prison escape in the shadow of the guillotine.', 'https://images-na.ssl-images-amazon.com/images/I/51qEQXEo-CL._SX312_BO1,204,203,200_.jpg', '12-31-1998'),
('No Mud No Lotus', 'The secret to happiness is to acknowledge and transform suffering, not to run away from it. In No Mud, No Lotus, Thich Nhat Hanh offers practices and inspiration transforming suffering and finding true joy.
Thich Nhat Hanh acknowledges that because suffering can feel so bad, we try to run away from it or cover it up by consuming. We find something to eat or turn on the television. But unless were able to face our suffering, we can’t be present and available to life, and happiness will continue to elude us.
Nhat Hanh shares how the practices of stopping, mindful breathing, and deep concentration can generate the energy of mindfulness within our daily lives. With that energy, we can embrace pain and calm it down, instantly bringing a measure of freedom and a clearer mind.
No Mud, No Lotus introduces ways to be in touch with suffering without being overwhelmed by it. When we know how to suffer, Nhat Hanh says, we suffer much, much less. With his signature clarity and sense of joy, Thich Nhat Hanh helps us recognize the wonders inside us and around us that we tend to take for granted and teaches us the art of happiness.', 'https://images-na.ssl-images-amazon.com/images/I/51-PbytsygL.jpg', '11-01-1997'),
('The Odyssey', 'The great epic of Western literature, translated by the acclaimed classicist Robert Fagles
Robert Fagles, winner of the PEN/Ralph Manheim Medal for Translation and a 1996 Academy Award in Literature from the American Academy of Arts and Letters, presents us with Homers best-loved and most accessible poem in a stunning modern-verse translation. Sing to me of the man, Muse, the man of twists and turns driven time and again off course, once he had plundered the hallowed heights of Troy.So begins Robert Fagles magnificent translation of the Odyssey, which Jasper Griffin in the New York Times Book Review hails as a distinguished achievement.
If the Iliad is the worlds greatest war epic, the Odyssey is literatures grandest evocation of an everymans journey through life. Odysseus reliance on his wit and wiliness for survival in his encounters with divine and natural forces during his ten-year voyage home to Ithaca after the Trojan War is at once a timeless human story and an individual test of moral endurance. In the myths and legends  retold here', 'https://images-na.ssl-images-amazon.com/images/I/81QAAnCNM7L.jpg', '05-24-2000'),
('Tartuffe', 'Renowned for his satirical works, Molière (Jean-Baptiste Poquelin, 1622–1673) delighted in lampooning the social pretensions and conceits of 17th-century French society. In this 1664 verse comedy with serious overtones, Tartuffe, a penniless scoundrel and religious poseur, is invited by a gullible benefactor to live in his home.
Imposing a rigidly puritanical regimen on the formerly happy household, Tartuffe wreaks havoc among family members. He breaks off the daughters engagement, attempts to seduce the wife of his host, acquires his patrons property, and eventually resorts to blackmail and extortion. But ultimately, his schemes and malicious deeds lead to his own downfall.
Attacked by the Church and twice suppressed, Tartuffe opened to packed houses in 1669. Teeming with lively humor and satirical plot devices, this timeless comedy by one of Frances greatest and most influential playwrights is essential reading for students of theater and literature. A selection of the Common Core State Standards Initiative.', 'https://images-na.ssl-images-amazon.com/images/I/615QUMnEvHL._SX311_BO1,204,203,200_.jpg', '03-18-2014'),
('Shane', 'I had lain in my bed thinking of our visitor out in the bunk in the barn. It scarce seemed possible that he was the same man I had first seen, stern and chilling in his dark solitude, riding up our road. Something in father, something not of words or of actions but of the essential substance of the human spirit, had reached out and spoken to him and he had replied to it and had unlocked a part of himself to us. He was far off and unapproachable at times even when he was right there with you.
The Starrett family life forever changes when a man named Shane rides out of the great glowing West and up to their farm in 1889. Young Bob Starrett is entranced by this stoic stranger who brings a new energy to his family. Shane stays on as a farmhand, but his past remains a mystery. Many folks in their small Wyoming valley are suspicious of Shane, and make it known that he is not welcome. But dangerous as Shane may seem, he is a staunch friend to the Starretts&#8212;and when a powerful neighboring rancher tries to drive them out of their homestead, Shane becomes entangled in the deadly feud.
This classic Western, originally published in 1949, is a profoundly moving story of the influence of a singular character on one boy&8217s life.', 'https://images-na.ssl-images-amazon.com/images/I/51r2pKBgFfL.jpg', '10-17-2006'),
('Brave New World', 'Aldous Huxley is the greatest 20th century writer in English —Chicago Tribune
Aldous Huxley is rightly considered a prophetic genius and one of the most important literary and philosophical voices of the 20th Century, and Brave New World is his masterpiece. From the author of The Doors of Perception, Island, and countless other works of fiction, non-fiction, philosophy, and poetry, comes this powerful work of speculative fiction that has enthralled and terrified readers for generations. Brave New World remains absolutely relevant to this day as both a cautionary dystopian tale in the vein of the George Orwell classic 1984, and as thought-provoking, thoroughly satisfying entertainment.', 'https://images-na.ssl-images-amazon.com/images/I/714b8-%2BK3EL.jpg', '11-29-2014'),
('The Hound of the Baskervilles', 'The Hound of the Baskervilles is the third of the four crime novels written by Sir Arthur Conan Doyle featuring the detective Sherlock Holmes. Originally serialised in The Strand Magazine from August 1901 to April 1902, it is set largely on Dartmoor in Devon in Englands West Country and tells the story of an attempted murder inspired by the legend of a fearsome, diabolical hound of supernatural origin. Sherlock Holmes and his companion Dr. Watson investigate the case. This was the first appearance of Holmes since his intended death in "The Final Problem", and the success of The Hound of the Baskervilles led to the characters eventual revival.', 'https://images-na.ssl-images-amazon.com/images/I/417o9qn8ioL.jpg', '11-29-2014'), ('All About Love: New Visions', 'The word "love" is most often defined as a noun, yet...we would all love better if we used it as a verb," writes bell hooks as she comes out fighting and on fire in All About Love. Here, at her most provocative and intensely personal, the renowned scholar, cultural critic, and feminist skewers our view of love as romance. In its place she offers a proactive new ethic for a people and a society bereft with lovelessness.  As bell hooks uses her incisive mind and razor-sharp pen to explore the question "What is love?" her answers strike at both the mind and heart. In thirteen concise chapters, hooks examines her own search for emotional connection and societys failure to provide a model for learning to love. Razing the cultural paradigm that the ideal love is infused with sex and desire, she provides a new path to love that is sacred, redemptive, and healing for the individuals and for a nation. The Utne Reader declared bell hooks one of the "100 Visionaries Who Can Change Your Life." All About Love is a powerful affirmation of just how profoundly she can.', 'https://images-na.ssl-images-amazon.com/images/I/41mn0wOhpBL.jpg', '01-09-2001'), ('Parable of the Sower', 'When unattended environmental and economic crises lead to social chaos, not even gated communities are safe. In a night of fire and death Lauren Olamina, a ministers young daughter, loses her family and home and ventures out into the unprotected American landscape. But what begins as a flight for survival soon leads to something much more: a startling vision of human destiny... and the birth of a new faith.', 'https://images-na.ssl-images-amazon.com/images/I/71jg6gRAKkL.jpg', '01-01-2000'), ('Parable of the Talents', 'Lauren Olaminas love is divided among her young daughter, her community, and the revelation that led Lauren to found a new faith that teaches "God Is Change". But in the wake of environmental and economic chaos, the U.S. government turns a blind eye to violent bigots who consider the mere existence of a black female leader a threat. And soon Lauren must either sacrifice her child and her followers -- or forsake the religion that can transform human destiny.', 'https://images-na.ssl-images-amazon.com/images/I/81EzixAspCL.jpg', '01-01-2000'), ('I Know Why the Caged Bird Sings', 'Here is a book as joyous and painful, as mysterious and memorable, as childhood itself. I Know Why the Caged Bird Sings captures the longing of lonely children, the brute insult of bigotry, and the wonder of words that can make the world right. Maya Angelou’s debut memoir is a modern American classic beloved worldwide. Sent by their mother to live with their devout, self-sufficient grandmother in a small Southern town, Maya and her brother, Bailey, endure the ache of abandonment and the prejudice of the local “powhitetrash.” At eight years old and back at her mother’s side in St. Louis, Maya is attacked by a man many times her age—and has to live with the consequences for a lifetime. Years later, in San Francisco, Maya learns that love for herself, the kindness of others, her own strong spirit, and the ideas of great authors (“I met and fell in love with William Shakespeare”) will allow her to be free instead of imprisoned. Poetic and powerful, I Know Why the Caged Bird Sings will touch hearts and change minds for as long as people read.
 “I Know Why the Caged Bird Sings liberates the reader into life simply because Maya Angelou confronts her own life with such a moving wonder, such a luminous dignity.”—James Baldwin', 'https://images-na.ssl-images-amazon.com/images/I/71L6HakRhzL.jpg', '04-21-2009');


INSERT INTO authors (name)
VALUES ('Adam Smith'),
('Paulo Coehlo'),
('F. Scott Fitzgerald'),
('J. R. R. Tolkien'),
('Margaret Mitchell'),
('Dossie Eaton'),
('Janet W. Hardy'),
('George Orwell'),
('Leo Tolstoy'),
('Homer'),
('Moliere'),
('Aldous Huxley'),
('Jack Schaefer'),
('Arthur Conan Doyle'),
('Thich Nhat Hanh'),
('Charles Dickens'),
('Bell Hooks'),
('Octavia Butler'),
('Maya Angelou');

INSERT INTO genres (name)
VALUES ('Economics'),
('Science Fiction'),
('Fantasy'),
('Young Adult'),
('Historical Drama'),
('Romance'),
('Horror'),
('Satire'),
('Mystery'),
('Dystopian Fiction'),
('Self Help'),
('Biographies');

--- Join Tables Start Here

INSERT INTO book_authors
  SELECT books.id, authors.id FROM books
  CROSS JOIN authors
  WHERE books.title = 'I Know Why the Caged Bird Sings'
  AND authors.name = 'Maya Angelou';

INSERT INTO book_authors
  SELECT books.id, authors.id FROM books
  CROSS JOIN authors
  WHERE books.title = 'Parable of the Talents'
  AND authors.name = 'Octavia Butler';

INSERT INTO book_authors
  SELECT books.id, authors.id FROM books
  CROSS JOIN authors
  WHERE books.title = 'Parable of the Sower'
  AND authors.name = 'Octavia Butler';

INSERT INTO book_authors
  SELECT books.id, authors.id FROM books
  CROSS JOIN authors
  WHERE books.title = 'All About Love: New Visions'
  AND authors.name = 'Bell Hooks';

INSERT INTO book_authors
  SELECT books.id, authors.id FROM books
  CROSS JOIN authors
  WHERE books.title = 'Gone With the Wind'
  AND authors.name = 'Margaret Mitchell';

INSERT INTO book_authors
  SELECT books.id, authors.id FROM books
  CROSS JOIN authors
  WHERE books.title = 'The Great Gatsby'
  AND authors.name = 'F. Scott Fitzgerald';

INSERT INTO book_authors
  SELECT books.id, authors.id FROM books
  CROSS JOIN authors
  WHERE books.title = 'Wealth of Nations'
  AND authors.name = 'Adam Smith';

INSERT INTO book_authors
  SELECT books.id, authors.id FROM books
  CROSS JOIN authors
  WHERE books.title = 'The Alchemist'
  AND authors.name = 'Paulo Coehlo';

INSERT INTO book_authors
  SELECT books.id, authors.id FROM books
  CROSS JOIN authors
  WHERE books.title = 'The Hobbit'
  AND authors.name = 'J. R. R. Tolkien';

INSERT INTO book_authors
  SELECT books.id, authors.id FROM books
  CROSS JOIN authors
  WHERE books.title = 'The Lord of the Rings'
  AND authors.name = 'J. R. R. Tolkien';

INSERT INTO book_authors
  SELECT books.id, authors.id FROM books
  CROSS JOIN authors
  WHERE books.title = 'A Tale of Two Cities'
  AND authors.name = 'Charles Dickens';

INSERT INTO book_authors
  SELECT books.id, authors.id FROM books
  CROSS JOIN authors
  WHERE books.title = 'The Odyssey'
  AND authors.name = 'Homer';

INSERT INTO book_authors
  SELECT books.id, authors.id FROM books
  CROSS JOIN authors
  WHERE books.title = 'Tartuffe'
  AND authors.name = 'Moliere';

INSERT INTO book_authors
  SELECT books.id, authors.id FROM books
  CROSS JOIN authors
  WHERE books.title = 'The Hound of the Baskervilles'
  AND authors.name = 'Arthur Conan Doyle';

INSERT INTO book_authors
  SELECT books.id, authors.id FROM books
  CROSS JOIN authors
  WHERE books.title = 'The Ethical Slut'
  AND authors.name = 'Janet W. Hardy';

INSERT INTO book_authors
  SELECT books.id, authors.id FROM books
  CROSS JOIN authors
  WHERE books.title = 'The Ethical Slut'
  AND authors.name = 'Dossie Eaton';

INSERT INTO book_authors
  SELECT books.id, authors.id FROM books
  CROSS JOIN authors
  WHERE books.title = 'Brave New World'
  AND authors.name = 'Aldous Huxley';

INSERT INTO book_authors
  SELECT books.id, authors.id FROM books
  CROSS JOIN authors
  WHERE books.title = 'No Mud No Lotus'
  AND authors.name = 'Thich Nhat Hanh';

INSERT INTO book_authors
  SELECT books.id, authors.id FROM books
  CROSS JOIN authors
  WHERE books.title = 'Shane'
  AND authors.name = 'Jack Schaefer';

INSERT INTO book_authors
  SELECT books.id, authors.id FROM books
  CROSS JOIN authors
  WHERE books.title = '1984'
  AND authors.name = 'George Orwell';

INSERT INTO book_authors
  SELECT books.id, authors.id FROM books
  CROSS JOIN authors
  WHERE books.title = 'Anna Karenina'
  AND authors.name = 'Leo Tolstoy';

INSERT INTO book_genres
  SELECT books.id, genres.id FROM books
  CROSS JOIN genres
  WHERE books.title = 'I Know Why the Caged Bird Sings'
  AND genres.name = 'Biographies';

INSERT INTO book_genres
  SELECT books.id, genres.id FROM books
  CROSS JOIN genres
  WHERE books.title = 'Parable of the Talents'
  AND genres.name = 'Dystopian Fiction';

INSERT INTO book_genres
    SELECT books.id, genres.id FROM books
    CROSS JOIN genres
    WHERE books.title = 'Parable of the Sower'
    AND genres.name = 'Dystopian Fiction';

INSERT INTO book_genres
    SELECT books.id, genres.id FROM books
    CROSS JOIN genres
    WHERE books.title = 'All About Love:New Visions'
    AND genres.name = 'Self Help';

INSERT INTO book_genres
  SELECT books.id, genres.id FROM books
  CROSS JOIN genres
  WHERE books.title = 'Wealth of Nations'
  AND genres.name = 'Economics';

INSERT INTO book_genres
  SELECT books.id, genres.id FROM books
  CROSS JOIN genres
  WHERE books.title = 'The Great Gatsby'
  AND genres.name = 'Historical Drama';

INSERT INTO book_genres
  SELECT books.id, genres.id FROM books
  CROSS JOIN genres
  WHERE books.title = 'Gone With the Wind'
  AND genres.name = 'Historical Drama';

INSERT INTO book_genres
  SELECT books.id, genres.id FROM books
  CROSS JOIN genres
  WHERE books.title = 'The Alchemist'
  AND genres.name = 'Fantasy';

INSERT INTO book_genres
  SELECT books.id, genres.id FROM books
  CROSS JOIN genres
  WHERE books.title = 'The Hobbit'
  AND genres.name = 'Fantasy';

INSERT INTO book_genres
  SELECT books.id, genres.id FROM books
  CROSS JOIN genres
  WHERE books.title = 'The Lord of the Rings'
  AND genres.name = 'Fantasy';

INSERT INTO book_genres
  SELECT books.id, genres.id FROM books
  CROSS JOIN genres
  WHERE books.title = 'The Hound of the Baskervilles'
  AND genres.name = 'Mystery';

INSERT INTO book_genres
  SELECT books.id, genres.id FROM books
  CROSS JOIN genres
  WHERE books.title = '1984'
  AND genres.name = 'Dystopian Fiction';

INSERT INTO book_genres
  SELECT books.id, genres.id FROM books
  CROSS JOIN genres
  WHERE books.title = 'The Ethical Slut'
  AND genres.name = 'Self Help';

INSERT INTO book_genres
  SELECT books.id, genres.id FROM books
  CROSS JOIN genres
  WHERE books.title = 'The Odyssey'
  AND genres.name = 'Fantasy';

INSERT INTO book_genres
  SELECT books.id, genres.id FROM books
  CROSS JOIN genres
  WHERE books.title = 'The Odyssey'
  AND genres.name = 'Historical Drama';

INSERT INTO book_genres
  SELECT books.id, genres.id FROM books
  CROSS JOIN genres
  WHERE books.title = 'Tartuffe'
  AND genres.name = 'Historical Drama';

INSERT INTO book_genres
  SELECT books.id, genres.id FROM books
  CROSS JOIN genres
  WHERE books.title = 'No Mud No Lotus'
  AND genres.name = 'Self Help';

INSERT INTO book_genres
  SELECT books.id, genres.id FROM books
  CROSS JOIN genres
  WHERE books.title = 'A Tale of Two Cities'
  AND genres.name = 'Historical Drama';

INSERT INTO book_genres
  SELECT books.id, genres.id FROM books
  CROSS JOIN genres
  WHERE books.title = 'Brave New World'
  AND genres.name = 'Dystopian Fiction';

INSERT INTO book_genres
  SELECT books.id, genres.id FROM books
  CROSS JOIN genres
  WHERE books.title = 'Anna Karenina'
  AND genres.name = 'Historical Drama';

INSERT INTO book_genres
  SELECT books.id, genres.id FROM books
  CROSS JOIN genres
  WHERE books.title = 'Shane'
  AND genres.name = 'Young Adult';

INSERT INTO book_genres
  SELECT books.id, genres.id FROM books
  CROSS JOIN genres
  WHERE books.title = 'The Hound of the Baskervilles'
  AND genres.name = 'Young Adult';

INSERT INTO book_genres
  SELECT books.id, genres.id FROM books
  CROSS JOIN genres
  WHERE books.title = 'Tartuffe'
  AND genres.name = 'Young Adult';
