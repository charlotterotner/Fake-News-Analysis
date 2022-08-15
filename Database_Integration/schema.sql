CREATE TABLE article_stats (
    uuid VARCHAR NOT NULL,
    ord_in_thread INT NOT NULL,
    hasImage INT NOT NULL,
    spam_score NUMERIC(5,3) NOT NULL,
    replies_count INT NOT NULL,
    participants_count INT NOT NULL,
    likes INT NOT NULL,
    comments INT NOT NULL,
    shares INT NOT NULL,
    PRIMARY KEY (uuid)
);

CREATE TABLE clean_articles (
     uuid VARCHAR NOT NULL,
     author VARCHAR NOT NULL,
     published DATE NOT NULL,
     title TEXT NOT NULL,
     text TEXT NOT NULL,
     language VARCHAR NOT NULL,
     site_url VARCHAR NOT NULL,
     main_img_url TEXT NOT NULL,
     country VARCHAR NOT NULL,
     type VARCHAR NOT NULL,
     label VARCHAR NOT NULL,
     title_without_stopwords TEXT NOT NULL,
     text_without_stopwords TEXT NOT NULL,
     FOREIGN KEY (uuid) REFERENCES article_stats
     PRIMARY KEY (title)
);