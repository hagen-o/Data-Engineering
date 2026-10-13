CREATE TABLE Kuenstler (
    KuenstlerID INTEGER Primary Key,
    Name TEXT Not Null,
    Herkunftsland TEXT,
    Website TEXT,
    Wikipedia TEXT
)

CREATE TABLE Songs(
    SongID INTEGER Primary Key,
    Name TEXT Not Null,
    Zaehler INTEGER,
    Genre TEXT,
)

CREATE TABLE Alben(
    AlbumID INTEGER Primary Key,
    Titel TEXT Not Null,
    Jahr INTEGER,
    KuenstlerID INTEGER,
    FOREIGN KEY (KuenstlerID) REFERENCES Kuenstler(KuenstlerID)
)

CREATE TABLE beinhaltet(
    AlbumID INTEGER,
    SongID INTEGER,
    FOREIGN KEY (AlbumID) REFERENCES Alben(AlbumID),
    FOREIGN KEY (SongID) REFERENCES Songs(SongID),
    Nummer Integer
)