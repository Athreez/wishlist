INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'IN0020230036', 'G-Sec Apr ’30', 6.50, 'Semi Annually',
    '2030-04-17', 103, 'Sovereign',
    'https://cdn.bondscanner.com/issuer-assets/WXWT9FJ2AH/logo_1772205552.png', 'https://bondscanner.com/deal-details/IN0020230036/VRAU8IOF5N', 3.78
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE00XL07015', 'B.N. Agritech Nov ’28', 11.20, 'Quarterly',
    '2028-11-27', 9932, 'A',
    'https://cdn.bondscanner.com/issuer-assets/HYTD9553PR/logo_1780300920.png', 'https://bondscanner.com/deal-details/INE00XL07015/RI8D34Y7YO', 2.39
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE01HV07635', 'Hari and Company Investments Madras May ’28', 10.10, 'Quarterly',
    '2028-05-04', 10003, 'A+',
    'https://cdn.bondscanner.com/issuer-assets/H3U6JWESSY/logo_1782195292.png', 'https://bondscanner.com/deal-details/INE01HV07635/D2IO9XSWCE', 1.82
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE01YL07409', 'EarlySalary Services Jan ’28', 11.25, 'Monthly',
    '2028-01-08', 100018, 'A-',
    'https://cdn.bondscanner.com/strapi-assets/Frame_1707480411_4ad6648c95.webp', 'https://bondscanner.com/deal-details/INE01YL07409/Q26JYG9EJC', 1.50
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE01YL07433', 'EarlySalary Services Jun ’28', 11.15, 'Quarterly',
    '2028-06-09', 100331, 'A-',
    'https://cdn.bondscanner.com/strapi-assets/Frame_1707480411_4ad6648c95.webp', 'https://bondscanner.com/deal-details/INE01YL07433/2ZNUPDLRMM', 1.92
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE01YL07441', 'EarlySalary Services Jul ’28', 11.12, 'Quarterly',
    '2028-07-04', 99728, 'A-',
    'https://cdn.bondscanner.com/strapi-assets/Frame_1707480411_4ad6648c95.webp', 'https://bondscanner.com/deal-details/INE01YL07441/2AIJK8GOUL', 1.99
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE02KN08012', 'Godrej Finance Apr ’36', 8.50, 'Annual',
    '2036-04-28', 101552, 'AA+',
    'https://cdn.bondscanner.com/issuer-assets/HGZ4PL9GAU/logo_1779689482.png', 'https://bondscanner.com/deal-details/INE02KN08012/O19FIKNYAF', 9.81
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE04UP07170', 'Best Capital Mar ’29', 14.00, 'Monthly',
    '2029-03-30', 9113, 'BBB',
    'https://cdn.bondscanner.com/issuer-assets/XA4YVZHHCW/logo_1774958604.png', 'https://bondscanner.com/deal-details/INE04UP07170/2XFRWJQ03O', 2.73
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE071G07439', 'ICICI Home Finance Aug ’31', 7.45, 'Annual',
    '2031-08-12', 1055867, 'AAA',
    'https://cdn.bondscanner.com/issuer-assets/ZV3Q5KY1RH/logo_1781523484.png', 'https://bondscanner.com/deal-details/INE071G07439/X3TT4PP9YU', 5.09
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE087P07485', 'Avanse Financial Services Sep ’27', 8.75, 'Annual',
    '2027-09-10', 107322, 'AA-',
    'https://cdn.bondscanner.com/issuer-assets/2M2LVWFVAR/logo_1781523452.png', 'https://bondscanner.com/deal-details/INE087P07485/TBBRSA8WJM', 1.17
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE08XP07498', 'Akara Capital Nov ’27', 15.00, 'Monthly',
    '2027-11-07', 9756, 'BBB',
    'https://cdn.bondscanner.com/strapi-assets/Frame_1707480408_0b0d5b8c10.webp', 'https://bondscanner.com/deal-details/INE08XP07498/N64O6NJ8KE', 1.33
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE09B308044', 'Slice Dec ’31', 12.80, 'Monthly',
    '2031-12-17', 99228, 'BBB+',
    'https://cdn.bondscanner.com/issuer-assets/RSBYZWMKDI/logo_1774011986.png', 'https://bondscanner.com/deal-details/INE09B308044/CGCPY77MXI', 5.44
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE0BUS07CJ2', 'Indel Money Jan ’29', 11.15, 'Monthly',
    '2029-01-23', 100405, 'A-',
    'https://cdn.bondscanner.com/issuer-assets/G0Z4IVQFVE/logo_1775192276.png', 'https://bondscanner.com/deal-details/INE0BUS07CJ2/1CDWI9CFL0', 2.54
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE0BUS07CK0', 'Indel Money Apr ’28', 11.45, 'Monthly',
    '2028-04-17', 9831, 'A-',
    'https://cdn.bondscanner.com/issuer-assets/G0Z4IVQFVE/logo_1775192276.png', 'https://bondscanner.com/deal-details/INE0BUS07CK0/ED0HDYSJM0', 1.78
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE0BUS08047', 'Indel Money Jun ’32', 13.30, 'Monthly',
    '2032-06-09', 98707, 'A-',
    'https://cdn.bondscanner.com/issuer-assets/G0Z4IVQFVE/logo_1775192276.png', 'https://bondscanner.com/deal-details/INE0BUS08047/RS1HL4V5TV', 5.92
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE0GCN07039', 'Adani Airports Jun ’28', 8.50, 'Annual',
    '2028-06-12', 102638, 'AA-',
    'https://cdn.bondscanner.com/issuer-assets/GG4GC9R4KR/logo_1771941145.png', 'https://bondscanner.com/deal-details/INE0GCN07039/G4FGDG837G', 1.93
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE0I5X07034', 'Monedo Financial Services Jul ’27', 15.00, 'Monthly',
    '2027-07-19', 99339, 'BBB-',
    'https://cdn.bondscanner.com/issuer-assets/7R64OM6LIR/logo_1782373567.png', 'https://bondscanner.com/deal-details/INE0I5X07034/94W0FN0KTS', 1.03
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE0IID07553', 'Prachay Capital Mar ’30', 13.80, 'Monthly',
    '2030-03-20', 10032, 'BBB-',
    'https://cdn.bondscanner.com/issuer-assets/8IABVO9YVC/logo_1780551055.png', 'https://bondscanner.com/deal-details/INE0IID07553/RQZ521B02K', 3.70
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE0JYY07026', 'Mangalam Apr ’29', 11.05, 'Quarterly',
    '2029-04-28', 100429, 'A+',
    'https://cdn.bondscanner.com/issuer-assets/RDHCLX0DGM/logo_1778220948.png', 'https://bondscanner.com/deal-details/INE0JYY07026/IX3OZA8XDE', 2.81
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE0JZO07040', 'Lucina Land Jan ’29', 13.20, 'Monthly',
    '2029-01-30', 101176, 'A-',
    'https://cdn.bondscanner.com/issuer-assets/YXE0TFSRC8/logo_1781860001.png', 'https://bondscanner.com/deal-details/INE0JZO07040/6YTKP09SXZ', 2.56
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE0MEG07029', 'Viviana Power Tech May ’28', 12.62, 'Monthly',
    '2028-05-21', 9969, 'BBB-',
    'https://cdn.bondscanner.com/issuer-assets/CFIXVM1WW8/logo_1780577167.png', 'https://bondscanner.com/deal-details/INE0MEG07029/3MIOBDBOMQ', 1.87
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE0NES07147', 'Keertana Finserv May ’27', 13.50, 'Monthly',
    '2027-05-26', 39904, 'BBB+',
    'https://cdn.bondscanner.com/issuer-assets/BP8O7XLW8G/logo_1764160292.png', 'https://bondscanner.com/deal-details/INE0NES07147/URC4NT9SO8', 0.88
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE101Q07BX1', 'Muthoot Mcred Jun ’28', 11.10, 'Monthly',
    '2028-06-17', 9768, 'A',
    'https://cdn.bondscanner.com/issuer-assets/10EFL8UCYL/logo_1771595713.png', 'https://bondscanner.com/deal-details/INE101Q07BX1/OP9MQ9UD6B', 1.94
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE105N07738', 'Oriental Nagpur Betul Highway Mar ’27', 8.00, 'Semi-Annual',
    '2027-03-30', 103221, 'AAA',
    'https://cdn.bondscanner.com/issuer-assets/LMDKDUN8BF/logo_1780551082.png', 'https://bondscanner.com/deal-details/INE105N07738/N5XZQOGW1E', 0.73
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE109C07147', 'Arman Financial Services Sep ’28', 11.55, 'Quarterly',
    '2028-09-25', 99901, 'A-',
    'https://cdn.bondscanner.com/issuer-assets/AYEYF1BJEQ/logo_1774964448.png', 'https://bondscanner.com/deal-details/INE109C07147/W20QUO39SW', 2.21
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE146O07540', 'Hinduja Leyland May ’30', 8.10, 'Annual',
    '2030-05-06', 102563, 'AA+',
    'https://cdn.bondscanner.com/issuer-assets/OOWBT2Y63B/logo_1768461370.png', 'https://bondscanner.com/deal-details/INE146O07540/RGU9RBVZLO', 3.83
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE14H407116', 'Finnable Credit Aug ’28', 11.85, 'Monthly',
    '2028-08-26', 9990, 'BBB+',
    'https://cdn.bondscanner.com/issuer-assets/FR1RVI7HKH/logo_1772711247.png', 'https://bondscanner.com/deal-details/INE14H407116/TVOBF9JUTI', 2.13
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE179P07621', 'Dvara Kshetriya Jan ’29', 13.20, 'Monthly',
    '2029-01-30', 9756, 'BBB+',
    'https://cdn.bondscanner.com/issuer-assets/N8DCSL78LZ/logo_1764660578.png', 'https://bondscanner.com/deal-details/INE179P07621/YA2U5NC342', 2.56
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE180C07304', 'Capri Global Capital Apr ’29', 9.27, 'Monthly',
    '2029-04-30', 99880, 'AA',
    'https://cdn.bondscanner.com/issuer-assets/DCVXVBK03R/logo_1773754592.png', 'https://bondscanner.com/deal-details/INE180C07304/8D9SXT9WKI', 2.81
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE1VXE07015', 'STL Networks Sep ’27', 11.00, 'Quarterly',
    '2027-09-02', 100663, 'A-',
    'https://cdn.bondscanner.com/issuer-assets/5EOQO4VUIV/logo_1780061354.png', 'https://bondscanner.com/deal-details/INE1VXE07015/5EES9SERE3', 1.15
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE1VXE07023', 'STL Networks Jun ’28', 11.05, 'Quarterly',
    '2028-06-30', 101306, 'A-',
    'https://cdn.bondscanner.com/issuer-assets/5EOQO4VUIV/logo_1780061354.png', 'https://bondscanner.com/deal-details/INE1VXE07023/F2V8IR3XXC', 1.98
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE229U07186', 'Namra Finance Apr ’28', 11.50, 'Quarterly',
    '2028-04-24', 101969, 'A-',
    'https://cdn.bondscanner.com/issuer-assets/VZ1MBPWUY0/logo_1778228152.png', 'https://bondscanner.com/deal-details/INE229U07186/CXXNS7G48N', 1.79
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE281B07013', 'Lloyds Metals and Energy Jan ’31', 8.90, 'Quarterly',
    '2031-01-30', 103315, 'AA',
    'https://cdn.bondscanner.com/issuer-assets/XW2NOLS2E1/logo_1771857403.png', 'https://bondscanner.com/deal-details/INE281B07013/XYMZZF0405', 4.56
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE296Q07142', 'Moneyboxx Oct ’27', 12.30, 'Monthly',
    '2027-10-16', 9827, 'BBB',
    'https://cdn.bondscanner.com/issuer-assets/GK54JELMQP/logo_1765286642.png', 'https://bondscanner.com/deal-details/INE296Q07142/LQ1MZIM3FW', 1.27
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE296Q07159', 'Moneyboxx Nov ’27', 12.30, 'Monthly',
    '2027-11-28', 9857, 'BBB',
    'https://cdn.bondscanner.com/issuer-assets/GK54JELMQP/logo_1765286642.png', 'https://bondscanner.com/deal-details/INE296Q07159/63PYLH5QVE', 1.39
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE296Q07167', 'Moneyboxx Apr ’28', 12.30, 'Monthly',
    '2028-04-08', 9779, 'BBB',
    'https://cdn.bondscanner.com/issuer-assets/GK54JELMQP/logo_1765286642.png', 'https://bondscanner.com/deal-details/INE296Q07167/1K9CHXW0CJ', 1.75
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE321N07590', 'InCred Finance Dec ’27', 9.25, 'Quarterly',
    '2027-12-06', 100405, 'AA-',
    'https://cdn.bondscanner.com/issuer-assets/YVDQ2P9KG5/logo_1774274546.png', 'https://bondscanner.com/deal-details/INE321N07590/OUSYPE3TA9', 1.41
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE321N07632', 'InCred Finance Mar ’28', 9.25, 'Quarterly',
    '2028-03-06', 100377, 'AA-',
    'https://cdn.bondscanner.com/issuer-assets/YVDQ2P9KG5/logo_1774274546.png', 'https://bondscanner.com/deal-details/INE321N07632/FAYLWX30N5', 1.66
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE321N07699', 'InCred Finance Jun ’28', 9.40, 'Quarterly',
    '2028-06-12', 99878, 'AA-',
    'https://cdn.bondscanner.com/issuer-assets/YVDQ2P9KG5/logo_1774274546.png', 'https://bondscanner.com/deal-details/INE321N07699/T0GEYZXLJO', 1.93
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE342T07668', 'Navi Finserv Dec ’28', 10.60, 'Monthly',
    '2028-12-31', 10100, 'A',
    'https://cdn.bondscanner.com/issuer-assets/V0LR2J7XNS/logo_1764159868.png', 'https://bondscanner.com/deal-details/INE342T07668/RDE3ZZFWPF', 2.48
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE342T07684', 'Navi Finserv May ’28', 11.00, 'Monthly',
    '2028-05-31', 99312, 'A',
    'https://cdn.bondscanner.com/issuer-assets/V0LR2J7XNS/logo_1764159868.png', 'https://bondscanner.com/deal-details/INE342T07684/MB2C3ITTOP', 1.90
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE342T07718', 'Navi Finserv Mar ’28', 11.00, 'Monthly',
    '2028-03-31', 99536, 'A',
    'https://cdn.bondscanner.com/issuer-assets/V0LR2J7XNS/logo_1764159868.png', 'https://bondscanner.com/deal-details/INE342T07718/VLSDJ4JY6M', 1.73
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE342T07726', 'Navi Finserv Aug ’29', 11.05, 'Monthly',
    '2029-08-31', 100162, 'A',
    'https://cdn.bondscanner.com/issuer-assets/V0LR2J7XNS/logo_1764159868.png', 'https://bondscanner.com/deal-details/INE342T07726/M2IWAGSS43', 3.15
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE385W07059', 'Dishman Carbogen Jan ’29', 10.85, 'Quarterly',
    '2029-01-20', 82544, 'A',
    'https://cdn.bondscanner.com/issuer-assets/G6XVA50UFF/logo_1780550967.png', 'https://bondscanner.com/deal-details/INE385W07059/4TKBEEYU85', 2.53
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE385W07067', 'Dishman Carbogen Dec ’27', 11.25, 'Quarterly',
    '2027-12-09', 99734, 'A',
    'https://cdn.bondscanner.com/issuer-assets/G6XVA50UFF/logo_1780550967.png', 'https://bondscanner.com/deal-details/INE385W07067/XW9HO06FOF', 1.42
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE389Z07096', 'Profectus Capital Jan ’28', 10.30, 'Monthly',
    '2028-01-19', 99137, 'A+',
    'https://cdn.bondscanner.com/issuer-assets/U1OXDXRCCT/logo_1769688915.png', 'https://bondscanner.com/deal-details/INE389Z07096/306258W0WI', 1.53
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE389Z07104', 'Profectus Capital Feb ’28', 10.50, 'Monthly',
    '2028-02-20', 9817, 'A+',
    'https://cdn.bondscanner.com/issuer-assets/U1OXDXRCCT/logo_1769688915.png', 'https://bondscanner.com/deal-details/INE389Z07104/8WNFNRRTSV', 1.62
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE403Q07HB4', 'Kosamattam Finance May ’29', 11.05, 'Monthly',
    '2029-05-27', 97016, 'A',
    'https://cdn.bondscanner.com/issuer-assets/9U05BMZY66/logo_1773057855.png', 'https://bondscanner.com/deal-details/INE403Q07HB4/JN7WBTWQZI', 2.89
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE403Q08357', 'Kosamattam Finance Nov ’31', 11.75, 'Monthly',
    '2031-11-07', 99509, 'A',
    'https://cdn.bondscanner.com/issuer-assets/9U05BMZY66/logo_1773057855.png', 'https://bondscanner.com/deal-details/INE403Q08357/S8QUZ37B22', 5.33
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE413U07434', 'IIFL Samasta Sep ’28', 10.65, 'Quarterly',
    '2028-09-12', 99383, 'AA-',
    'https://cdn.bondscanner.com/issuer-assets/SRJ6979SV3/logo_1768486748.png', 'https://bondscanner.com/deal-details/INE413U07434/XNT67S5QJX', 2.18
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE420C07163', 'Paisalo Dec ’28', 10.50, 'Quarterly',
    '2028-12-09', 97225, 'AA',
    'https://cdn.bondscanner.com/issuer-assets/59RPX3W75H/logo_1770037027.png', 'https://bondscanner.com/deal-details/INE420C07163/X0WZEP0X9Z', 2.42
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE420C07189', 'Paisalo Sep ’28', 10.35, 'Monthly',
    '2028-09-18', 98472, 'AA',
    'https://cdn.bondscanner.com/issuer-assets/59RPX3W75H/logo_1770037027.png', 'https://bondscanner.com/deal-details/INE420C07189/M13MTMYZR5', 2.19
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE423A07484', 'Adani Enterprises Jan ’28', 8.50, 'Annual',
    '2028-01-12', 10410, 'AA-',
    'https://cdn.bondscanner.com/issuer-assets/XT359A167O/logo_1770021137.png', 'https://bondscanner.com/deal-details/INE423A07484/OTAASPKNFW', 1.51
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE423A07500', 'Adani Enterprises Jan ’28', 8.50, 'Annual',
    '2028-01-12', 10422, 'AA-',
    'https://cdn.bondscanner.com/issuer-assets/XT359A167O/logo_1770021137.png', 'https://bondscanner.com/deal-details/INE423A07500/2K2TGHWEPW', 1.51
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE516Q08497', 'Asirvad Micro Finance May ’33', 10.55, 'Annual',
    '2033-05-26', 101889, 'AA-',
    'https://cdn.bondscanner.com/issuer-assets/H1L058KGHV/logo_1781523366.png', 'https://bondscanner.com/deal-details/INE516Q08497/ZFAXKX3UDC', 6.88
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE516Y07444', 'Piramal Finance Sep ’31', 9.20, 'Semi-Annual',
    '2031-09-26', 74726, 'AA',
    'https://cdn.bondscanner.com/issuer-assets/F1771RZ0G1/logo_1771941078.png', 'https://bondscanner.com/deal-details/INE516Y07444/ZE0T0BSV48', 5.22
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE530B07617', 'IIFL Finance Mar ’28', 8.60, 'Annual',
    '2028-03-06', 102979, 'AA',
    'https://cdn.bondscanner.com/issuer-assets/9ITA5DZC9S/logo_1773832206.png', 'https://bondscanner.com/deal-details/INE530B07617/I6IJW6YGZP', 1.66
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE549K07HB7', 'Muthoot Fincorp Oct ’28', 9.15, 'Monthly',
    '2028-10-29', 100307, 'AA',
    'https://cdn.bondscanner.com/issuer-assets/X7XWMS7KU9/logo_1768821863.png', 'https://bondscanner.com/deal-details/INE549K07HB7/28SO3Q7O8X', 2.31
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE549K07HD3', 'Muthoot Fincorp Dec ’28', 9.15, 'Monthly',
    '2028-12-12', 100225, 'AA',
    'https://cdn.bondscanner.com/issuer-assets/X7XWMS7KU9/logo_1768821863.png', 'https://bondscanner.com/deal-details/INE549K07HD3/ZYDIPPKOWZ', 2.43
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE549K07HQ5', 'Muthoot Fincorp Mar ’29', 9.00, 'Monthly',
    '2029-03-06', 100292, 'AA',
    'https://cdn.bondscanner.com/issuer-assets/X7XWMS7KU9/logo_1768821863.png', 'https://bondscanner.com/deal-details/INE549K07HQ5/09X2TTN5US', 2.66
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE549K08590', 'Muthoot Fincorp Dec ’33', 10.50, 'Monthly',
    '2033-12-30', 102150, 'AA',
    'https://cdn.bondscanner.com/issuer-assets/X7XWMS7KU9/logo_1768821863.png', 'https://bondscanner.com/deal-details/INE549K08590/2H3NUW2RNS', 7.48
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE583D07570', 'UGRO Capital Oct ’26', 9.00, 'Annual',
    '2026-10-24', 102560, 'A+',
    'https://cdn.bondscanner.com/strapi-assets/Frame_1707480418_0c5badaaed.webp', 'https://bondscanner.com/deal-details/INE583D07570/WB6NNEUHP9', 0.29
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE583D07638', 'UGRO Capital Jun ’29', 10.55, 'Monthly',
    '2029-06-16', 9955, 'A+',
    'https://cdn.bondscanner.com/strapi-assets/Frame_1707480418_0c5badaaed.webp', 'https://bondscanner.com/deal-details/INE583D07638/C0P5UM3Y27', 2.94
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE741K07611', 'CreditAccess Grameen Jun ’28', 9.20, 'Quarterly',
    '2028-06-26', 100957, 'AA-',
    'https://cdn.bondscanner.com/issuer-assets/0ABCY3V05L/logo_1783078838.png', 'https://bondscanner.com/deal-details/INE741K07611/E3J7Q0I4WG', 1.97
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE859C07253', 'IKF Finance Mar ’28', 9.20, 'Quarterly',
    '2028-03-10', 10010, 'AA-',
    'https://cdn.bondscanner.com/issuer-assets/77POWP4NTI/logo_1780550936.png', 'https://bondscanner.com/deal-details/INE859C07253/E8UT05COB5', 1.67
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE926R07035', 'Unifinz Capital India May ’28', 15.50, 'Monthly',
    '2028-05-20', 9776, 'BBB-',
    'https://cdn.bondscanner.com/issuer-assets/3W31IEDGNY/logo_1772021730.png', 'https://bondscanner.com/deal-details/INE926R07035/CLV7N8D6S4', 1.87
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;

INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    'INE964R07093', 'Regency Fincorp Dec ’28', 14.50, 'Monthly',
    '2028-12-19', 9848, 'BBB-',
    'https://cdn.bondscanner.com/issuer-assets/FPJV5YWFWN/logo_1770722950.png', 'https://bondscanner.com/deal-details/INE964R07093/R1GBWJ18WI', 2.45
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;
