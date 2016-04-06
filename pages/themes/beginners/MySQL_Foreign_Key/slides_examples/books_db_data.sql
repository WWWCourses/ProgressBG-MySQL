INSERT INTO author(fname,lname,birth_year,death_year) VALUES
    ('Kurt'   , 'Vonnegut', '1922','2007'),
    ('Douglas', 'Adams'   , '1952','2001'),
    ('Charles', 'Dodgson' , '1832','1898')
;
INSERT INTO publisher(pub_name,phone) VALUES
    ('Siela', 123456),
    ('AlexSoft', 222222),
    ('', 3333333);

INSERT INTO book(author_id, book_name,pub_year) VALUES
    (1, 1, 'The Sirens of Titan', 1959),
    (1, 1, 'Mother Night', 1961),
    (1, 1, 'Cat\'s Cradle', 1963), # note: the single quote inside string should be escaped!
    (1, 1, 'God Bless You', 1965),
    (1, 1, 'Slaughterhouse', 1969),
    (1, 1, 'Breakfast of Champions', 1973),
    (2, 1, "The Hitchhiker's Guide to the Galaxy", 1979),
    (2, 1, 'The Restaurant at the End of the Universe', 1980),
    (2, 1, 'Life', 1982),
    (2, 1, 'So Long', 1984),
    (2, 1, 'Young Zaphod Plays It Safe', 1986),
    (2, 1, "Dirk Gently's Holistic Detective Agency", 1987),  #note: or we can use double quotes for string delimiter
    (2, 1, 'The Long Dark Tea', 1988),
    (2, 1, 'Last Chance to See', 1990),
    (2, 1, 'Mostly Harmless', 1992),
    (3, 1, "Alice's Adventures in Wonderland", 1865),
    (3, 1, "Through the Looking-Glass, and What Alice Found There", 1871),
    (3, 1, "Rhyme? And Reason?",NULL),
    (3, 1, "A Tangled Tale",NULL),
    (3, 1, "Pillow Problems",NULL),
    (3, 1, "La Guida di Bragia, a Ballad Opera for the Marionette Theatre",1950),
    (3, 1, "Sylvie and Bruno",NULL),
    (3, 1, "Sylvie and Bruno Concluded",NULL),
    (3, 1, "Three Sunsets and Other Poems", 1898),
    (3, 1, "The Hunting of the Snark", 1876),
    (3, 1, "What the Tortoise Said to Achilles", 1895),
    (3, 1, "A Syllabus of Plane Algebraic Geometry", 1860),
    (3, 1, "The Fifth Book of Euclid Treated Algebraically", 1858),
    (3, 1, "An Elementary Treatise on Determinants, With Their Application to Simultaneous Linear Equations and Algebraic Equations",NULL),
    (3, 1, "Euclid and his Modern Rivals",1879),
    (3, 1, "Symbolic Logic Part I",NULL),
    (3, 1, "Symbolic Logic Part II",NULL),
    (3, 1, "The Alphabet Cipher",1868),
    (3, 1, "The Game of Logic", 1887),
    (3, 1, "Curiosa Mathematica I", 1888),
    (3, 1, "Curiosa Mathematica II", 1892)
;
