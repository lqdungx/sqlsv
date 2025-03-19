CREATE TABLE Doi (
    MaDoi CHAR(3) PRIMARY KEY,
    TenDoi NVARCHAR(50) NOT NULL
);

CREATE TABLE TranDau (
    MaTD INT PRIMARY KEY,
    MaSan VARCHAR(10),
    Ngay DATE,
    Gio TIME
);

CREATE TABLE CT_TranDau (
    MaTD INT,
    MaDoi CHAR(3),
    SoBanThang TINYINT CHECK (SoBanThang >= 0),
    PRIMARY KEY (MaTD, MaDoi),
    FOREIGN KEY (MaTD) REFERENCES TranDau(MaTD),
    FOREIGN KEY (MaDoi) REFERENCES Doi(MaDoi)
);
