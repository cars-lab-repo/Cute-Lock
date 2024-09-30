// Benchmark "./test_runs/structural2_nkeys_nbits--s-120240927_165956/ITC99/b12_encrypted" written by ABC on Fri Sep 27 18:34:21 2024

module b12_encrypted  ( clock, 
    START, K_3_, K_2_, K_1_, K_0_, keyinput0, keyinput1, keyinput2,
    keyinput3, keyinput4,
    NLOSS_REG, NL_REG_3_, NL_REG_2_, NL_REG_1_, NL_REG_0_, SPEAKER_REG  );
  input  clock;
  input  START, K_3_, K_2_, K_1_, K_0_, keyinput0, keyinput1, keyinput2,
    keyinput3, keyinput4;
  output NLOSS_REG, NL_REG_3_, NL_REG_2_, NL_REG_1_, NL_REG_0_, SPEAKER_REG;
  reg COUNT_REG_0_, MEMORY_REG_31__1_, MEMORY_REG_31__0_, MEMORY_REG_30__1_,
    MEMORY_REG_30__0_, MEMORY_REG_29__1_, MEMORY_REG_29__0_,
    MEMORY_REG_28__1_, MEMORY_REG_28__0_, MEMORY_REG_27__1_,
    MEMORY_REG_27__0_, MEMORY_REG_26__1_, MEMORY_REG_26__0_,
    MEMORY_REG_25__1_, MEMORY_REG_25__0_, MEMORY_REG_24__1_,
    MEMORY_REG_24__0_, MEMORY_REG_23__1_, MEMORY_REG_23__0_,
    MEMORY_REG_22__1_, MEMORY_REG_22__0_, MEMORY_REG_21__1_,
    MEMORY_REG_21__0_, MEMORY_REG_20__1_, MEMORY_REG_20__0_,
    MEMORY_REG_19__1_, MEMORY_REG_19__0_, MEMORY_REG_18__1_,
    MEMORY_REG_18__0_, MEMORY_REG_17__1_, MEMORY_REG_17__0_,
    MEMORY_REG_16__1_, MEMORY_REG_16__0_, MEMORY_REG_15__1_,
    MEMORY_REG_15__0_, MEMORY_REG_14__1_, MEMORY_REG_14__0_,
    MEMORY_REG_13__1_, MEMORY_REG_13__0_, MEMORY_REG_12__1_,
    MEMORY_REG_12__0_, MEMORY_REG_11__1_, MEMORY_REG_11__0_,
    MEMORY_REG_10__1_, MEMORY_REG_10__0_, MEMORY_REG_9__1_,
    MEMORY_REG_9__0_, MEMORY_REG_8__1_, MEMORY_REG_8__0_, MEMORY_REG_7__1_,
    MEMORY_REG_7__0_, MEMORY_REG_6__1_, MEMORY_REG_6__0_, MEMORY_REG_5__1_,
    MEMORY_REG_5__0_, MEMORY_REG_4__1_, MEMORY_REG_4__0_, MEMORY_REG_3__1_,
    MEMORY_REG_3__0_, MEMORY_REG_2__1_, MEMORY_REG_2__0_, MEMORY_REG_1__1_,
    MEMORY_REG_1__0_, MEMORY_REG_0__1_, MEMORY_REG_0__0_, NL_REG_3_,
    NL_REG_2_, NL_REG_1_, NL_REG_0_, SCAN_REG_4_, SCAN_REG_3_, SCAN_REG_2_,
    SCAN_REG_1_, SCAN_REG_0_, MAX_REG_4_, MAX_REG_3_, MAX_REG_2_,
    MAX_REG_1_, MAX_REG_0_, IND_REG_1_, IND_REG_0_, TIMEBASE_REG_5_,
    TIMEBASE_REG_4_, TIMEBASE_REG_3_, TIMEBASE_REG_2_, TIMEBASE_REG_1_,
    TIMEBASE_REG_0_, COUNT_REG2_5_, COUNT_REG2_4_, COUNT_REG2_3_,
    COUNT_REG2_2_, COUNT_REG2_1_, COUNT_REG2_0_, SOUND_REG_2_,
    SOUND_REG_1_, SOUND_REG_0_, ADDRESS_REG_4_, ADDRESS_REG_3_,
    ADDRESS_REG_2_, ADDRESS_REG_1_, ADDRESS_REG_0_, DATA_IN_REG_1_,
    DATA_IN_REG_0_, S_REG, PLAY_REG, NLOSS_REG, SPEAKER_REG, WR_REG,
    COUNTER_REG_2_, COUNTER_REG_1_, COUNTER_REG_0_, COUNT_REG_1_,
    NUM_REG_1_, NUM_REG_0_, DATA_OUT_REG_1_, DATA_OUT_REG_0_, GAMMA_REG_4_,
    GAMMA_REG_3_, GAMMA_REG_2_, GAMMA_REG_1_, GAMMA_REG_0_, Q_0, Q_1;
  wire new_R785_U27, new_U1305, new_U1306, new_U1307, new_U1308, new_U1309,
    new_U1310, new_U1311, new_U1312, new_U1313, new_U1314, new_U1315,
    new_U1316, new_U1317, new_U1318, new_U1319, new_U1320, new_U1321,
    new_U1322, new_U1323, new_U1324, new_U1325, new_U1326, new_U1327,
    new_U1328, new_U1329, new_U1330, new_U1331, new_U1332, new_U1333,
    new_U1334, new_U1335, new_U1336, new_U1337, new_U1338, new_U1339,
    new_U1340, new_U1341, new_U1342, new_U1343, new_U1344, new_U1345,
    new_U1346, new_U1347, new_U1348, new_U1349, new_U1350, new_U1351,
    new_U1352, new_U1353, new_U1354, new_U1355, new_U1356, new_U1357,
    new_U1358, new_U1359, new_U1360, new_U1361, new_U1362, new_U1363,
    new_U1364, new_U1365, new_U1366, new_U1367, new_U1368, new_U1369,
    new_U1370, new_U1371, new_U1372, new_U1373, new_U1374, new_U1375,
    new_U1376, new_U1377, new_U1378, new_U1379, new_U1380, new_U1487,
    new_U1488, new_U1489, new_U1490, new_U1491, new_U1492, new_U1493,
    new_U1494, new_U1495, new_U1496, new_U1497, new_U1498, new_U1499,
    new_U1500, new_U1501, new_U1502, new_U1503, new_U1504, new_U1505,
    new_U1506, new_U1507, new_U1508, new_U1509, new_U1510, new_U1511,
    new_U1512, new_U1513, new_U1514, new_U1515, new_U1516, new_U1517,
    new_U1518, new_U1519, new_U1520, new_U1521, new_U1522, new_U1523,
    new_U1524, new_U1525, new_U1526, new_U1527, new_U1528, new_U1529,
    new_U1530, new_U1531, new_U1532, new_U1533, new_U1534, new_U1535,
    new_U1536, new_U1537, new_U1538, new_U1539, new_U1540, new_U1541,
    new_U1542, new_U1543, new_U1544, new_U1545, new_U1546, new_U1547,
    new_U1548, new_U1549, new_U1550, new_U1551, new_U1552, new_U1553,
    new_U1554, new_U1555, new_U1556, new_U1557, new_U1558, new_U1559,
    new_U1560, new_U1561, new_U1562, new_U1576, new_U1577, new_U1578,
    new_U1579, new_U1580, new_U1581, new_U1582, new_U1583, new_U1584,
    new_U1585, new_U1586, new_U1587, new_U1588, new_U1589, new_U1590,
    new_U1591, new_U1592, new_U1593, new_U1594, new_U1595, new_U1596,
    new_U1597, new_U1598, new_U1599, new_U1600, new_U1601, new_U1602,
    new_U1603, new_U1604, new_U1605, new_U1606, new_U1607, new_U1608,
    new_U1609, new_U1610, new_U1611, new_U1612, new_U1613, new_U1614,
    new_U1615, new_U1616, new_U1617, new_U1618, new_U1619, new_U1620,
    new_U1621, new_U1622, new_U1623, new_U1624, new_U1625, new_U1626,
    new_U1627, new_U1628, new_U1629, new_U1630, new_U1631, new_U1632,
    new_U1633, new_U1634, new_U1635, new_U1636, new_U1637, new_U1638,
    new_U1639, new_U1640, new_U1641, new_U1642, new_U1643, new_U1644,
    new_U1645, new_U1646, new_U1647, new_U1648, new_U1649, new_U1650,
    new_U1651, new_U1652, new_U1653, new_U1654, new_U1655, new_U1656,
    new_U1657, new_U1658, new_U1659, new_U1660, new_U1661, new_U1662,
    new_U1663, new_U1664, new_U1665, new_U1666, new_U1667, new_U1668,
    new_U1669, new_U1670, new_U1671, new_U1672, new_U1673, new_U1674,
    new_U1675, new_U1676, new_U1677, new_U1678, new_U1679, new_U1680,
    new_U1681, new_U1682, new_U1683, new_U1684, new_U1685, new_U1686,
    new_U1687, new_U1688, new_U1689, new_U1690, new_U1691, new_U1692,
    new_U1693, new_U1694, new_U1695, new_U1696, new_U1697, new_U1698,
    new_U1699, new_U1700, new_U1701, new_U1702, new_U1703, new_U1704,
    new_U1705, new_U1706, new_U1707, new_U1708, new_U1709, new_U1710,
    new_U1711, new_U1712, new_U1713, new_U1714, new_U1715, new_U1716,
    new_U1717, new_U1718, new_U1719, new_U1720, new_U1721, new_U1722,
    new_U1723, new_U1724, new_U1725, new_U1726, new_U1727, new_U1728,
    new_U1729, new_U1730, new_U1731, new_U1732, new_U1733, new_U1734,
    new_U1735, new_U1736, new_U1737, new_U1738, new_U1739, new_U1740,
    new_U1741, new_U1742, new_U1743, new_U1744, new_U1745, new_U1746,
    new_U1747, new_U1748, new_U1749, new_U1750, new_U1751, new_U1752,
    new_U1753, new_U1754, new_U1755, new_U1756, new_U1757, new_U1758,
    new_U1759, new_U1760, new_U1761, new_U1762, new_U1763, new_U1764,
    new_U1765, new_U1766, new_U1767, new_U1768, new_U1769, new_U1770,
    new_U1771, new_U1772, new_U1773, new_U1774, new_U1775, new_U1776,
    new_U1777, new_U1778, new_U1779, new_U1780, new_U1781, new_U1782,
    new_U1783, new_U1784, new_U1785, new_U1786, new_U1787, new_U1788,
    new_U1789, new_U1790, new_U1791, new_U1792, new_U1793, new_U1794,
    new_U1795, new_U1796, new_U1797, new_U1798, new_U1799, new_U1800,
    new_U1801, new_U1802, new_U1803, new_U1804, new_U1805, new_U1806,
    new_U1807, new_U1808, new_U1809, new_U1810, new_U1811, new_U1812,
    new_U1813, new_U1814, new_U1815, new_U1816, new_U1817, new_U1818,
    new_U1819, new_U1820, new_U1821, new_U1822, new_U1823, new_U1824,
    new_U1825, new_U1826, new_U1827, new_U1828, new_U1829, new_U1830,
    new_U1831, new_U1832, new_U1833, new_U1834, new_U1835, new_U1836,
    new_U1837, new_U1838, new_U1839, new_U1840, new_U1841, new_U1842,
    new_U1843, new_U1844, new_U1845, new_U1846, new_U1847, new_U1848,
    new_U1849, new_U1850, new_U1851, new_U1852, new_U1853, new_U1854,
    new_U1855, new_U1856, new_U1857, new_U1858, new_U1859, new_U1860,
    new_U1861, new_U1862, new_U1863, new_U1864, new_U1865, new_U1866,
    new_U1867, new_U1868, new_U1869, new_U1870, new_U1871, new_U1872,
    new_U1873, new_U1874, new_U1875, new_U1876, new_U1877, new_U1878,
    new_U1879, new_U1880, new_U1881, new_U1882, new_U1883, new_U1884,
    new_U1885, new_U1886, new_U1887, new_U1888, new_U1889, new_U1890,
    new_U1891, new_U1892, new_U1893, new_U1894, new_U1895, new_U1896,
    new_U1897, new_U1898, new_U1899, new_U1900, new_U1901, new_U1902,
    new_U1903, new_U1904, new_U1905, new_U1906, new_U1907, new_U1908,
    new_U1909, new_U1910, new_U1911, new_U1912, new_U1913, new_U1914,
    new_U1915, new_U1916, new_U1917, new_U1918, new_U1919, new_U1920,
    new_U1921, new_U1922, new_U1923, new_U1924, new_U1925, new_U1926,
    new_U1927, new_U1928, new_U1929, new_U1930, new_U1931, new_U1932,
    new_U1933, new_U1934, new_U1935, new_U1936, new_U1937, new_U1938,
    new_U1939, new_U1940, new_U1941, new_U1942, new_U1943, new_U1944,
    new_U1945, new_U1946, new_U1947, new_U1948, new_U1949, new_U1950,
    new_U1951, new_U1952, new_U1953, new_U1954, new_U1955, new_U1956,
    new_U1957, new_U1958, new_U1959, new_U1960, new_U1961, new_U1962,
    new_U1963, new_U1964, new_U1965, new_U1966, new_U1967, new_U1968,
    new_U1969, new_U1970, new_U1971, new_U1972, new_U1973, new_U1974,
    new_U1975, new_U1976, new_U1977, new_U1978, new_U1979, new_U1980,
    new_U1981, new_U1982, new_U1983, new_U1984, new_U1985, new_U1986,
    new_U1987, new_U1988, new_U1989, new_U1990, new_U1991, new_U1992,
    new_U1993, new_U1994, new_U1995, new_U1996, new_U1997, new_U1998,
    new_U1999, new_U2000, new_U2001, new_U2002, new_U2003, new_U2004,
    new_U2005, new_U2006, new_U2007, new_U2008, new_U2009, new_U2010,
    new_U2011, new_U2012, new_U2013, new_U2014, new_U2015, new_U2016,
    new_U2017, new_U2018, new_U2019, new_U2020, new_U2021, new_U2022,
    new_U2023, new_U2024, new_U2025, new_U2026, new_U2027, new_U2028,
    new_U2029, new_U2030, new_U2031, new_U2032, new_U2033, new_U2034,
    new_U2035, new_U2036, new_U2037, new_U2038, new_U2039, new_U2040,
    new_U2041, new_U2042, new_U2043, new_U2044, new_U2045, new_U2046,
    new_U2047, new_U2048, new_U2049, new_U2050, new_U2051, new_U2052,
    new_U2053, new_U2054, new_U2055, new_U2056, new_U2057, new_U2058,
    new_U2059, new_U2060, new_U2061, new_U2062, new_U2063, new_U2064,
    new_U2065, new_U2066, new_U2067, new_U2068, new_U2069, new_U2070,
    new_U2071, new_U2072, new_U2073, new_U2074, new_U2075, new_U2076,
    new_U2077, new_U2078, new_U2079, new_U2080, new_U2081, new_U2082,
    new_U2083, new_U2084, new_U2085, new_U2086, new_U2087, new_U2088,
    new_U2089, new_U2090, new_U2091, new_U2092, new_U2093, new_U2094,
    new_U2095, new_U2096, new_U2097, new_U2098, new_U2099, new_U2100,
    new_U2101, new_U2102, new_U2103, new_U2104, new_U2105, new_U2106,
    new_U2107, new_U2108, new_U2109, new_U2110, new_U2111, new_U2112,
    new_U2113, new_U2114, new_U2115, new_U2116, new_U2117, new_U2118,
    new_U2119, new_U2120, new_U2121, new_U2122, new_U2123, new_U2124,
    new_U2125, new_U2126, new_U2127, new_U2128, new_U2129, new_U2130,
    new_U2131, new_U2132, new_U2133, new_U2134, new_U2135, new_U2136,
    new_U2137, new_U2138, new_U2139, new_U2140, new_U2141, new_U2142,
    new_U2143, new_U2144, new_U2145, new_U2146, new_U2147, new_U2148,
    new_U2149, new_U2150, new_U2151, new_U2152, new_U2153, new_U2154,
    new_U2155, new_U2156, new_U2157, new_U2158, new_U2159, new_U2160,
    new_U2161, new_U2162, new_U2163, new_U2164, new_U2165, new_U2166,
    new_U2167, new_U2168, new_U2169, new_U2170, new_U2171, new_U2172,
    new_U2173, new_U2174, new_U2175, new_U2176, new_U2177, new_R745_U6,
    new_R745_U7, new_R745_U8, new_R745_U9, new_R745_U10, new_R745_U11,
    new_R745_U12, new_R745_U13, new_R745_U14, new_R745_U15, new_R745_U16,
    new_R745_U17, new_R745_U18, new_R745_U19, new_R745_U20, new_R745_U21,
    new_R745_U22, new_R745_U23, new_R745_U24, new_R745_U25, new_R745_U26,
    new_R745_U27, new_R745_U28, new_R745_U29, new_R745_U30, new_R730_U5,
    new_R730_U6, new_R730_U7, new_R730_U8, new_R730_U9, new_R730_U10,
    new_R730_U11, new_R730_U12, new_R730_U13, new_R730_U14, new_R730_U15,
    new_R730_U16, new_R730_U17, new_R730_U18, new_R730_U19, new_R730_U20,
    new_R730_U21, new_R730_U22, new_R730_U23, new_R730_U24, new_R730_U25,
    new_R730_U26, new_R730_U27, new_R785_U5, new_R785_U6, new_R785_U7,
    new_R785_U8, new_R785_U9, new_R785_U10, new_R785_U11, new_R785_U12,
    new_R785_U13, new_R785_U14, new_R785_U15, new_R785_U16, new_R785_U17,
    new_R785_U18, new_R785_U19, new_R785_U20, new_R785_U21, new_R785_U22,
    new_R785_U23, new_R785_U24, new_R785_U25, new_R785_U26,
    new_not_keyinput0, new_not_keyinput1, new_not_keyinput2,
    new_not_keyinput3, new_not_keyinput4, new_not_0, new_and_1, new_not_2,
    new_and_3, new_not_Q_0, new_not_Q_1, new_count_state_1,
    new_count_state_2, new_count_state_3, new_y_mux_key0_and_0,
    new_y_mux_key0_and_1, new_y_mux_key0, new_y_mux_key1_and_0,
    new_y_mux_key1_and_1, new_y_mux_key1, new_y_mux_key2_and_0,
    new_y_mux_key2_and_1, new_y_mux_key2, new_y_mux_key3_and_0,
    new_y_mux_key3_and_1, new_y_mux_key3, new__state_1, new__state_2,
    new__state_3, new__state_5, new_s__state_1, new_not_s__state_1,
    new_I0__state_1, new_I1__state_1, new_and_mux__state_1,
    new_and_mux__state_1_2, new_y_mux_4, new_s__state_3,
    new_not_s__state_3, new_I0__state_3, new_I1__state_3,
    new_and_mux__state_3, new_and_mux__state_3_2, new_y_mux_5,
    new_s__state_5, new_not_s__state_5, new_I0__state_5, new_I1__state_5,
    new_and_mux__state_5, new_and_mux__state_5_2, n34, n39, n44, n49, n54,
    n59, n64, n69, n74, n79, n84, n89, n94, n99, n104, n109, n114, n119,
    n124, n129, n134, n139, n144, n149, n154, n159, n164, n169, n174, n179,
    n184, n189, n194, n199, n204, n209, n214, n219, n224, n229, n234, n239,
    n244, n249, n254, n259, n264, n269, n274, n279, n284, n289, n294, n299,
    n304, n309, n314, n319, n324, n329, n334, n339, n344, n349, n354, n359,
    n363, n367, n371, n375, n380, n385, n390, n395, n400, n405, n410, n415,
    n420, n425, n430, n435, n440, n445, n450, n455, n460, n465, n470, n475,
    n480, n485, n490, n495, n500, n505, n510, n515, n520, n525, n530, n535,
    n540, n545, n550, n555, n559, n563, n568, n573, n578, n583, n587, n592,
    n597, n602, n607, n612, n617, n622, n627, n2424, n2427;
  assign new_R785_U27 = ~SCAN_REG_0_ | ~new_R785_U6;
  assign new_U1305 = new_U1654 & new_U1819;
  assign new_U1306 = new_U1312 & new_U1494;
  assign new_U1307 = DATA_IN_REG_0_ & WR_REG;
  assign new_U1308 = DATA_IN_REG_1_ & WR_REG;
  assign new_U1309 = new_U1830 & new_U1834 & new_U1611;
  assign new_U1310 = new_U1823 & new_U1622;
  assign new_U1311 = new_U1992 & PLAY_REG & new_U1993;
  assign new_U1312 = new_U1492 & new_U1493;
  assign new_U1313 = new_U1616 & new_U1533;
  assign new_U1314 = new_U2110 & new_U1551;
  assign new_U1315 = new_U1967 & new_U1551;
  assign new_U1316 = new_U1527 & new_U1616 & new_U1515;
  assign new_U1317 = new_U1611 & new_U1532;
  assign new_U1318 = ~K_0_ & ~K_1_;
  assign new_U1319 = new_U1522 & new_U1830;
  assign new_U1320 = new_U1614 & new_U1500;
  assign new_U1321 = new_U1616 & new_U1496;
  assign new_U1322 = new_U1926 & new_U1541;
  assign new_U1323 = new_U1931 & new_U1541;
  assign new_U1324 = ADDRESS_REG_1_ & ADDRESS_REG_3_ & ADDRESS_REG_4_;
  assign new_U1325 = ADDRESS_REG_0_ & ADDRESS_REG_2_;
  assign new_U1326 = new_U1324 & new_U1325;
  assign new_U1327 = ADDRESS_REG_2_ & new_U1491;
  assign new_U1328 = new_U1327 & new_U1324;
  assign new_U1329 = ADDRESS_REG_3_ & ADDRESS_REG_4_ & new_U1489;
  assign new_U1330 = new_U1329 & new_U1325;
  assign new_U1331 = new_U1329 & new_U1327;
  assign new_U1332 = ADDRESS_REG_0_ & new_U1490;
  assign new_U1333 = new_U1332 & new_U1324;
  assign new_U1334 = ~ADDRESS_REG_2_ & ~ADDRESS_REG_0_;
  assign new_U1335 = new_U1334 & new_U1324;
  assign new_U1336 = new_U1332 & new_U1329;
  assign new_U1337 = new_U1334 & new_U1329;
  assign new_U1338 = ADDRESS_REG_1_ & ADDRESS_REG_4_ & new_U1488;
  assign new_U1339 = new_U1338 & new_U1325;
  assign new_U1340 = new_U1338 & new_U1327;
  assign new_U1341 = ADDRESS_REG_4_ & new_U1488 & new_U1489;
  assign new_U1342 = new_U1341 & new_U1325;
  assign new_U1343 = new_U1341 & new_U1327;
  assign new_U1344 = new_U1338 & new_U1332;
  assign new_U1345 = new_U1338 & new_U1334;
  assign new_U1346 = new_U1341 & new_U1332;
  assign new_U1347 = new_U1341 & new_U1334;
  assign new_U1348 = ADDRESS_REG_1_ & ADDRESS_REG_3_ & new_U1487;
  assign new_U1349 = new_U1348 & new_U1325;
  assign new_U1350 = new_U1348 & new_U1327;
  assign new_U1351 = ADDRESS_REG_3_ & new_U1487 & new_U1489;
  assign new_U1352 = new_U1351 & new_U1325;
  assign new_U1353 = new_U1351 & new_U1327;
  assign new_U1354 = new_U1348 & new_U1332;
  assign new_U1355 = new_U1348 & new_U1334;
  assign new_U1356 = new_U1351 & new_U1332;
  assign new_U1357 = new_U1351 & new_U1334;
  assign new_U1358 = ADDRESS_REG_1_ & new_U1487 & new_U1488;
  assign new_U1359 = new_U1358 & new_U1325;
  assign new_U1360 = new_U1358 & new_U1327;
  assign new_U1361 = ~ADDRESS_REG_4_ & ~ADDRESS_REG_1_ & ~ADDRESS_REG_3_;
  assign new_U1362 = new_U1361 & new_U1325;
  assign new_U1363 = new_U1361 & new_U1327;
  assign new_U1364 = new_U1358 & new_U1332;
  assign new_U1365 = new_U1358 & new_U1334;
  assign new_U1366 = new_U1361 & new_U1332;
  assign new_U1367 = new_U1361 & new_U1334;
  assign new_U1368 = new_U1549 & new_U1822;
  assign new_U1369 = new_U1534 & new_U1867;
  assign new_U1370 = new_U1644 & new_U1896;
  assign new_U1371 = new_U1912 & new_U1528 & new_U1495;
  assign new_U1372 = new_U1644 & new_U1648 & new_U1951 & new_U1600;
  assign new_U1373 = new_U1631 & new_U2024;
  assign new_U1374 = new_U1373 & new_U2025 & new_U2026 & new_U2027;
  assign new_U1375 = ~new_U2100 | ~new_U1601;
  assign new_U1376 = ~new_U2101 | ~new_U1544;
  assign new_U1377 = ~new_U2102 | ~new_U1602;
  assign new_U1378 = ~new_U2103 | ~new_U1546;
  assign new_U1379 = ~new_U2104 | ~new_U1547;
  assign new_U1380 = ~new_U2105 | ~new_U1603;
  assign n568 = new_U1311 & new_U2113;
  assign n573 = new_U1311 & new_U2175;
  assign n578 = new_U1311 & new_U1553;
  assign n607 = ~new_U1492 | ~new_U2018 | ~new_U1637;
  assign n612 = ~new_U2111 | ~new_U2112 | ~new_U1580 | ~new_U2022 | ~new_U2021;
  assign n617 = ~new_U1582 | ~new_U1373 | ~new_U1370;
  assign n622 = ~new_U1374 | ~new_U1583 | ~new_U2028 | ~new_U2029 | ~new_U2030;
  assign n627 = ~new_U2171 | ~new_U2172 | ~new_U1374 | ~new_U1646 | ~new_U1643;
  assign n602 = ~new_U1593 | ~new_U1595 | ~new_U1599 | ~new_U1597;
  assign n597 = ~new_U1585 | ~new_U1587 | ~new_U1591 | ~new_U1589;
  assign n592 = ~COUNT_REG_0_;
  assign n563 = ~new_U1606 | ~new_U2015;
  assign n559 = ~new_U1658 | ~new_U2013;
  assign n545 = ~new_U1658 | ~new_U1996;
  assign n530 = ~new_U1982 | ~new_U1981 | ~new_U1980;
  assign n525 = ~new_U1979 | ~new_U1978 | ~new_U1977;
  assign n520 = ~new_U1976 | ~new_U1975 | ~new_U1974;
  assign n515 = ~new_U1973 | ~new_U1972 | ~new_U1971;
  assign n510 = ~new_U1970 | ~new_U1969 | ~new_U1968;
  assign n490 = ~new_U1647 | ~new_U2141 | ~new_U2140;
  assign n485 = ~new_U1947 | ~new_U1946 | ~new_U1945;
  assign n480 = ~new_U1944 | ~new_U1943 | ~new_U1942;
  assign n470 = ~new_U1934 | ~new_U1933 | ~new_U1932;
  assign n465 = ~new_U1647 | ~new_U2137 | ~new_U2136;
  assign n455 = ~new_U1893 | ~new_U1892;
  assign n450 = ~new_U1891 | ~new_U1890;
  assign n445 = ~new_U1889 | ~new_U1888;
  assign n440 = ~new_U1887 | ~new_U1886;
  assign n420 = ~new_U1881 | ~new_U1880;
  assign n415 = ~new_U1879 | ~new_U1878;
  assign n410 = ~new_U1877 | ~new_U1876;
  assign n405 = ~new_U1875 | ~new_U1874;
  assign n400 = ~new_U1873 | ~new_U1872;
  assign n395 = ~new_U1863 | ~new_U1862;
  assign n390 = ~new_U1861 | ~new_U1860;
  assign n385 = ~new_U1859 | ~new_U1858;
  assign n380 = ~new_U1857 | ~new_U1856;
  assign n375 = ~new_U1855 | ~new_U1854;
  assign n371 = ~new_U1639 | ~new_U1848 | ~new_U1850 | ~new_U1849;
  assign n367 = ~new_U1639 | ~new_U1845 | ~new_U1847 | ~new_U1846;
  assign n363 = ~new_U1639 | ~new_U1841 | ~new_U1843 | ~new_U1842;
  assign n359 = ~new_U1639 | ~new_U1838 | ~new_U1840 | ~new_U1839;
  assign n354 = ~new_U1818 | ~new_U1817;
  assign n349 = ~new_U1816 | ~new_U1815;
  assign n344 = ~new_U1813 | ~new_U1812;
  assign n339 = ~new_U1811 | ~new_U1810;
  assign n334 = ~new_U1808 | ~new_U1807;
  assign n329 = ~new_U1806 | ~new_U1805;
  assign n324 = ~new_U1803 | ~new_U1802;
  assign n319 = ~new_U1801 | ~new_U1800;
  assign n314 = ~new_U1798 | ~new_U1797;
  assign n309 = ~new_U1796 | ~new_U1795;
  assign n304 = ~new_U1793 | ~new_U1792;
  assign n299 = ~new_U1791 | ~new_U1790;
  assign n294 = ~new_U1788 | ~new_U1787;
  assign n289 = ~new_U1786 | ~new_U1785;
  assign n284 = ~new_U1783 | ~new_U1782;
  assign n279 = ~new_U1781 | ~new_U1780;
  assign n274 = ~new_U1778 | ~new_U1777;
  assign n269 = ~new_U1776 | ~new_U1775;
  assign n264 = ~new_U1773 | ~new_U1772;
  assign n259 = ~new_U1771 | ~new_U1770;
  assign n254 = ~new_U1768 | ~new_U1767;
  assign n249 = ~new_U1766 | ~new_U1765;
  assign n244 = ~new_U1763 | ~new_U1762;
  assign n239 = ~new_U1761 | ~new_U1760;
  assign n234 = ~new_U1758 | ~new_U1757;
  assign n229 = ~new_U1756 | ~new_U1755;
  assign n224 = ~new_U1753 | ~new_U1752;
  assign n219 = ~new_U1751 | ~new_U1750;
  assign n214 = ~new_U1748 | ~new_U1747;
  assign n209 = ~new_U1746 | ~new_U1745;
  assign n204 = ~new_U1743 | ~new_U1742;
  assign n199 = ~new_U1741 | ~new_U1740;
  assign n194 = ~new_U1738 | ~new_U1737;
  assign n189 = ~new_U1736 | ~new_U1735;
  assign n184 = ~new_U1733 | ~new_U1732;
  assign n179 = ~new_U1731 | ~new_U1730;
  assign n174 = ~new_U1728 | ~new_U1727;
  assign n169 = ~new_U1726 | ~new_U1725;
  assign n164 = ~new_U1723 | ~new_U1722;
  assign n159 = ~new_U1721 | ~new_U1720;
  assign n154 = ~new_U1718 | ~new_U1717;
  assign n149 = ~new_U1716 | ~new_U1715;
  assign n144 = ~new_U1713 | ~new_U1712;
  assign n139 = ~new_U1711 | ~new_U1710;
  assign n134 = ~new_U1708 | ~new_U1707;
  assign n129 = ~new_U1706 | ~new_U1705;
  assign n124 = ~new_U1703 | ~new_U1702;
  assign n119 = ~new_U1701 | ~new_U1700;
  assign n114 = ~new_U1698 | ~new_U1697;
  assign n109 = ~new_U1696 | ~new_U1695;
  assign n104 = ~new_U1693 | ~new_U1692;
  assign n99 = ~new_U1691 | ~new_U1690;
  assign n94 = ~new_U1688 | ~new_U1687;
  assign n89 = ~new_U1686 | ~new_U1685;
  assign n84 = ~new_U1683 | ~new_U1682;
  assign n79 = ~new_U1681 | ~new_U1680;
  assign n74 = ~new_U1678 | ~new_U1677;
  assign n69 = ~new_U1676 | ~new_U1675;
  assign n64 = ~new_U1673 | ~new_U1672;
  assign n59 = ~new_U1671 | ~new_U1670;
  assign n54 = ~new_U1668 | ~new_U1667;
  assign n49 = ~new_U1666 | ~new_U1665;
  assign n44 = ~new_U1663 | ~new_U1662;
  assign n39 = ~new_U1661 | ~new_U1660;
  assign new_U1487 = ~ADDRESS_REG_4_;
  assign new_U1488 = ~ADDRESS_REG_3_;
  assign new_U1489 = ~ADDRESS_REG_1_;
  assign new_U1490 = ~ADDRESS_REG_2_;
  assign new_U1491 = ~ADDRESS_REG_0_;
  assign new_U1492 = ~GAMMA_REG_4_ | ~new_U1625;
  assign new_U1493 = ~GAMMA_REG_3_ | ~new_U1625;
  assign new_U1494 = GAMMA_REG_0_ | START;
  assign new_U1495 = ~new_U1611 | ~new_U1614;
  assign new_U1496 = ~GAMMA_REG_1_ | ~new_U1625;
  assign new_U1497 = ~new_U1618 | ~new_U1494;
  assign new_U1498 = ~new_U1655 | ~new_U1614;
  assign new_U1499 = ~new_U1500 | ~new_U1493;
  assign new_U1500 = ~GAMMA_REG_2_ | ~new_U1625;
  assign new_U1501 = ~new_U1578 | ~new_U1603 | ~new_U1547 | ~new_U1546;
  assign new_U1502 = ~new_U1494 | ~new_U1496;
  assign new_U1503 = ~new_U1612 | ~new_U1493;
  assign new_U1504 = ~new_U1500 | ~new_U1492;
  assign new_U1505 = ~SCAN_REG_0_;
  assign new_U1506 = ~MAX_REG_0_;
  assign new_U1507 = ~SCAN_REG_1_;
  assign new_U1508 = ~MAX_REG_1_;
  assign new_U1509 = ~SCAN_REG_2_;
  assign new_U1510 = ~MAX_REG_2_;
  assign new_U1511 = ~SCAN_REG_3_;
  assign new_U1512 = ~MAX_REG_3_;
  assign new_U1513 = ~SCAN_REG_4_;
  assign new_U1514 = ~MAX_REG_4_;
  assign new_U1515 = ~new_U1577 | ~new_U1576 | ~new_U2115 | ~new_U2114;
  assign new_U1516 = ~new_U1616 | ~new_U1611;
  assign new_U1517 = ~IND_REG_0_;
  assign new_U1518 = ~IND_REG_1_;
  assign new_U1519 = ~DATA_OUT_REG_1_;
  assign new_U1520 = ~DATA_OUT_REG_0_;
  assign new_U1521 = ~DATA_OUT_REG_0_ | ~DATA_OUT_REG_1_;
  assign new_U1522 = ~new_U1634 | ~new_U1650 | ~new_U1832;
  assign new_U1523 = ~DATA_OUT_REG_0_ | ~new_U1519;
  assign new_U1524 = ~new_U1654 | ~new_U1612;
  assign new_U1525 = ~new_U1312 | ~new_U1819;
  assign new_U1526 = ~new_U1306 | ~new_U1616 | ~new_U1618;
  assign new_U1527 = ~new_U1641 | ~new_U1606 | ~new_U1852;
  assign new_U1528 = ~new_U1612 | ~new_U1614;
  assign new_U1529 = ~new_U1652 | ~new_U1616;
  assign new_U1530 = ~new_U1618 | ~new_U1819;
  assign new_U1531 = ~new_U1819 | ~new_U1496;
  assign new_U1532 = ~new_U1638 | ~new_U1865;
  assign new_U1533 = ~new_U1866 | ~new_U1870;
  assign new_U1534 = ~new_U1619 | ~new_U1611 | ~new_U1500;
  assign new_U1535 = ~K_2_;
  assign new_U1536 = ~MAX_REG_3_ | ~MAX_REG_4_ | ~MAX_REG_2_ | ~MAX_REG_1_ | ~MAX_REG_0_;
  assign new_U1537 = ~new_U1654 | ~new_U1618;
  assign new_U1538 = ~new_U1620 | ~new_U1494;
  assign new_U1539 = ~new_U1318 | ~new_U1557 | ~new_U1535;
  assign new_U1540 = ~new_R745_U15;
  assign new_U1541 = ~new_U1579 | ~new_U1370 | ~new_U1905 | ~new_U1904;
  assign new_U1542 = ~new_U1650 | ~new_U1653;
  assign new_U1543 = ~new_U1929 | ~new_U1927 | ~new_U1928;
  assign new_U1544 = ~COUNT_REG2_4_;
  assign new_U1545 = ~new_U1616 | ~new_U1614;
  assign new_U1546 = ~COUNT_REG2_2_;
  assign new_U1547 = ~COUNT_REG2_1_;
  assign new_U1548 = ~new_R745_U7;
  assign new_U1549 = ~new_U1610 | ~new_U1492;
  assign new_U1550 = ~SOUND_REG_1_;
  assign new_U1551 = ~new_U1646 | ~new_U1965;
  assign new_U1552 = ~COUNTER_REG_2_;
  assign new_U1553 = ~COUNTER_REG_0_;
  assign new_U1554 = ~COUNTER_REG_1_;
  assign new_U1555 = ~new_U1562 | ~new_U1993;
  assign new_U1556 = ~S_REG;
  assign new_U1557 = ~K_3_;
  assign new_U1558 = ~K_1_;
  assign new_U1559 = ~K_0_;
  assign new_U1560 = ~new_U1534 | ~new_U1538;
  assign new_U1561 = ~new_U1524 | ~new_U1529;
  assign new_U1562 = ~new_U1991 | ~new_U1990;
  assign n583 = ~new_U2177 | ~new_U2176;
  assign n425 = ~new_U2125 | ~new_U2124;
  assign n430 = ~new_U2127 | ~new_U2126;
  assign n435 = ~new_U2129 | ~new_U2128;
  assign n460 = ~new_U2131 | ~new_U2130;
  assign n475 = ~new_U2139 | ~new_U2138;
  assign n495 = ~new_U2143 | ~new_U2142;
  assign n500 = ~new_U2145 | ~new_U2144;
  assign n505 = ~new_U2147 | ~new_U2146;
  assign n535 = ~new_U2149 | ~new_U2148;
  assign n540 = ~new_U2151 | ~new_U2150;
  assign n550 = ~new_U2157 | ~new_U2156;
  assign n555 = ~new_U2163 | ~new_U2162;
  assign new_U1576 = new_U2116 & new_U2117 & new_U2119 & new_U2118;
  assign new_U1577 = new_U2120 & new_U2121 & new_U2123 & new_U2122;
  assign new_U1578 = ~COUNT_REG2_4_ & ~COUNT_REG2_3_ & ~COUNT_REG2_5_;
  assign new_U1579 = new_U1637 & new_U1648 & new_U1903 & new_U1902;
  assign new_U1580 = new_U1629 & new_U1631 & new_U1495 & new_U1641;
  assign new_U1581 = new_U1634 & new_U1640 & new_U1629 & new_U1626 & new_U1624;
  assign new_U1582 = new_U1581 & new_U1645 & new_U1643 & new_U1642;
  assign new_U1583 = new_U1644 & new_U1549 & new_U1638 & new_U1634 & new_U1626;
  assign new_U1584 = new_U2035 & new_U2036 & new_U2038 & new_U2037;
  assign new_U1585 = new_U1584 & new_U2039 & new_U2040 & new_U2042 & new_U2041;
  assign new_U1586 = new_U2043 & new_U2044 & new_U2046 & new_U2045;
  assign new_U1587 = new_U1586 & new_U2047 & new_U2048 & new_U2050 & new_U2049;
  assign new_U1588 = new_U2051 & new_U2052 & new_U2054 & new_U2053;
  assign new_U1589 = new_U1588 & new_U2055 & new_U2056 & new_U2058 & new_U2057;
  assign new_U1590 = new_U2059 & new_U2060 & new_U2062 & new_U2061;
  assign new_U1591 = new_U1590 & new_U2063 & new_U2064 & new_U2066 & new_U2065;
  assign new_U1592 = new_U2067 & new_U2068 & new_U2070 & new_U2069;
  assign new_U1593 = new_U1592 & new_U2071 & new_U2072 & new_U2074 & new_U2073;
  assign new_U1594 = new_U2075 & new_U2076 & new_U2078 & new_U2077;
  assign new_U1595 = new_U1594 & new_U2079 & new_U2080 & new_U2082 & new_U2081;
  assign new_U1596 = new_U2083 & new_U2084 & new_U2086 & new_U2085;
  assign new_U1597 = new_U1596 & new_U2087 & new_U2088 & new_U2090 & new_U2089;
  assign new_U1598 = new_U2091 & new_U2092 & new_U2094 & new_U2093;
  assign new_U1599 = new_U1598 & new_U2095 & new_U2096 & new_U2098 & new_U2097;
  assign new_U1600 = ~new_U1628 | ~new_U1539 | ~new_U1501;
  assign new_U1601 = ~COUNT_REG2_5_;
  assign new_U1602 = ~COUNT_REG2_3_;
  assign new_U1603 = ~COUNT_REG2_0_;
  assign new_U1604 = ~new_U1372 | ~new_U1953 | ~new_U1642;
  assign new_U1605 = ~SOUND_REG_0_;
  assign new_U1606 = ~new_U1613 | ~new_U1618 | ~new_U1500;
  assign new_U1607 = ~new_U1372 | ~new_U1368 | ~new_U1999;
  assign new_U1608 = ~new_U1645 | ~new_U2010 | ~new_U2011;
  assign new_U1609 = ~COUNT_REG_1_;
  assign new_U1610 = ~new_U1503;
  assign new_U1611 = ~new_U1493;
  assign new_U1612 = ~new_U1502;
  assign new_U1613 = ~new_U1525;
  assign new_U1614 = ~new_U1492;
  assign new_U1615 = ~new_U1499;
  assign new_U1616 = ~new_U1500;
  assign new_U1617 = ~new_U1498;
  assign new_U1618 = ~new_U1496;
  assign new_U1619 = ~new_U1530;
  assign new_U1620 = ~new_U1537;
  assign new_U1621 = ~new_U1504;
  assign new_U1622 = ~new_U1501;
  assign new_U1623 = ~new_U1651 | ~new_U1494;
  assign new_U1624 = ~new_U1656 | ~new_U1635;
  assign new_U1625 = ~START;
  assign new_U1626 = ~new_U1619 | ~new_U1616;
  assign new_U1627 = ~new_U1526;
  assign new_U1628 = ~new_U1534;
  assign new_U1629 = ~new_U1305 | ~new_U1496;
  assign new_U1630 = ~new_U1524;
  assign new_U1631 = ~new_U1619 | ~new_U1654;
  assign new_U1632 = ~new_U1538;
  assign new_U1633 = ~new_U1529;
  assign new_U1634 = ~new_U1616 | ~new_U1617;
  assign new_U1635 = ~new_U1531;
  assign new_U1636 = ~new_U2016 | ~new_U1500;
  assign new_U1637 = ~new_U1310 | ~new_U1864 | ~new_U1630;
  assign new_U1638 = ~new_U1310 | ~new_U1630 | ~new_U1536;
  assign new_U1639 = ~new_U1830 | ~new_U1819 | ~new_U1651;
  assign new_U1640 = ~new_U1655 | ~new_U1500;
  assign new_U1641 = ~new_U1630 | ~new_U1622 | ~new_U1515;
  assign new_U1642 = ~new_U1657 | ~new_U1616;
  assign new_U1643 = ~new_U1613 | ~new_U1321;
  assign new_U1644 = ~new_U1633 | ~new_U1310;
  assign new_U1645 = ~new_U2009 | ~new_U1628 | ~new_U1501;
  assign new_U1646 = ~new_U1635 | ~new_U1621 | ~new_U1611;
  assign new_U1647 = ~new_U1541 | ~new_U1621 | ~new_U1496;
  assign new_U1648 = ~new_U1615 | ~new_U1617;
  assign new_U1649 = ~new_U1622 | ~new_U1635 | ~new_U1616;
  assign new_U1650 = ~new_U1312 | ~new_U1321;
  assign new_U1651 = ~new_U1495;
  assign new_U1652 = ~new_U1528;
  assign new_U1653 = ~new_U1615 | ~new_U1618;
  assign new_U1654 = ~new_U1516;
  assign new_U1655 = ~new_U1497;
  assign new_U1656 = ~new_U1545;
  assign new_U1657 = ~new_U1549;
  assign new_U1658 = ~new_U1994 | ~PLAY_REG | ~new_U1556;
  assign new_U1659 = ~WR_REG | ~new_U1326;
  assign new_U1660 = ~MEMORY_REG_31__1_ | ~new_U1659;
  assign new_U1661 = ~new_U1308 | ~new_U1326;
  assign new_U1662 = ~MEMORY_REG_31__0_ | ~new_U1659;
  assign new_U1663 = ~new_U1307 | ~new_U1326;
  assign new_U1664 = ~new_U1328 | ~WR_REG;
  assign new_U1665 = ~MEMORY_REG_30__1_ | ~new_U1664;
  assign new_U1666 = ~new_U1328 | ~new_U1308;
  assign new_U1667 = ~MEMORY_REG_30__0_ | ~new_U1664;
  assign new_U1668 = ~new_U1328 | ~new_U1307;
  assign new_U1669 = ~new_U1330 | ~WR_REG;
  assign new_U1670 = ~MEMORY_REG_29__1_ | ~new_U1669;
  assign new_U1671 = ~new_U1330 | ~new_U1308;
  assign new_U1672 = ~MEMORY_REG_29__0_ | ~new_U1669;
  assign new_U1673 = ~new_U1330 | ~new_U1307;
  assign new_U1674 = ~new_U1331 | ~WR_REG;
  assign new_U1675 = ~MEMORY_REG_28__1_ | ~new_U1674;
  assign new_U1676 = ~new_U1331 | ~new_U1308;
  assign new_U1677 = ~MEMORY_REG_28__0_ | ~new_U1674;
  assign new_U1678 = ~new_U1331 | ~new_U1307;
  assign new_U1679 = ~new_U1333 | ~WR_REG;
  assign new_U1680 = ~MEMORY_REG_27__1_ | ~new_U1679;
  assign new_U1681 = ~new_U1333 | ~new_U1308;
  assign new_U1682 = ~MEMORY_REG_27__0_ | ~new_U1679;
  assign new_U1683 = ~new_U1333 | ~new_U1307;
  assign new_U1684 = ~new_U1335 | ~WR_REG;
  assign new_U1685 = ~MEMORY_REG_26__1_ | ~new_U1684;
  assign new_U1686 = ~new_U1335 | ~new_U1308;
  assign new_U1687 = ~MEMORY_REG_26__0_ | ~new_U1684;
  assign new_U1688 = ~new_U1335 | ~new_U1307;
  assign new_U1689 = ~new_U1336 | ~WR_REG;
  assign new_U1690 = ~MEMORY_REG_25__1_ | ~new_U1689;
  assign new_U1691 = ~new_U1336 | ~new_U1308;
  assign new_U1692 = ~MEMORY_REG_25__0_ | ~new_U1689;
  assign new_U1693 = ~new_U1336 | ~new_U1307;
  assign new_U1694 = ~new_U1337 | ~WR_REG;
  assign new_U1695 = ~MEMORY_REG_24__1_ | ~new_U1694;
  assign new_U1696 = ~new_U1337 | ~new_U1308;
  assign new_U1697 = ~MEMORY_REG_24__0_ | ~new_U1694;
  assign new_U1698 = ~new_U1337 | ~new_U1307;
  assign new_U1699 = ~new_U1339 | ~WR_REG;
  assign new_U1700 = ~MEMORY_REG_23__1_ | ~new_U1699;
  assign new_U1701 = ~new_U1339 | ~new_U1308;
  assign new_U1702 = ~MEMORY_REG_23__0_ | ~new_U1699;
  assign new_U1703 = ~new_U1339 | ~new_U1307;
  assign new_U1704 = ~new_U1340 | ~WR_REG;
  assign new_U1705 = ~MEMORY_REG_22__1_ | ~new_U1704;
  assign new_U1706 = ~new_U1340 | ~new_U1308;
  assign new_U1707 = ~MEMORY_REG_22__0_ | ~new_U1704;
  assign new_U1708 = ~new_U1340 | ~new_U1307;
  assign new_U1709 = ~new_U1342 | ~WR_REG;
  assign new_U1710 = ~MEMORY_REG_21__1_ | ~new_U1709;
  assign new_U1711 = ~new_U1342 | ~new_U1308;
  assign new_U1712 = ~MEMORY_REG_21__0_ | ~new_U1709;
  assign new_U1713 = ~new_U1342 | ~new_U1307;
  assign new_U1714 = ~new_U1343 | ~WR_REG;
  assign new_U1715 = ~MEMORY_REG_20__1_ | ~new_U1714;
  assign new_U1716 = ~new_U1343 | ~new_U1308;
  assign new_U1717 = ~MEMORY_REG_20__0_ | ~new_U1714;
  assign new_U1718 = ~new_U1343 | ~new_U1307;
  assign new_U1719 = ~new_U1344 | ~WR_REG;
  assign new_U1720 = ~MEMORY_REG_19__1_ | ~new_U1719;
  assign new_U1721 = ~new_U1344 | ~new_U1308;
  assign new_U1722 = ~MEMORY_REG_19__0_ | ~new_U1719;
  assign new_U1723 = ~new_U1344 | ~new_U1307;
  assign new_U1724 = ~new_U1345 | ~WR_REG;
  assign new_U1725 = ~MEMORY_REG_18__1_ | ~new_U1724;
  assign new_U1726 = ~new_U1345 | ~new_U1308;
  assign new_U1727 = ~MEMORY_REG_18__0_ | ~new_U1724;
  assign new_U1728 = ~new_U1345 | ~new_U1307;
  assign new_U1729 = ~new_U1346 | ~WR_REG;
  assign new_U1730 = ~MEMORY_REG_17__1_ | ~new_U1729;
  assign new_U1731 = ~new_U1346 | ~new_U1308;
  assign new_U1732 = ~MEMORY_REG_17__0_ | ~new_U1729;
  assign new_U1733 = ~new_U1346 | ~new_U1307;
  assign new_U1734 = ~new_U1347 | ~WR_REG;
  assign new_U1735 = ~MEMORY_REG_16__1_ | ~new_U1734;
  assign new_U1736 = ~new_U1347 | ~new_U1308;
  assign new_U1737 = ~MEMORY_REG_16__0_ | ~new_U1734;
  assign new_U1738 = ~new_U1347 | ~new_U1307;
  assign new_U1739 = ~new_U1349 | ~WR_REG;
  assign new_U1740 = ~MEMORY_REG_15__1_ | ~new_U1739;
  assign new_U1741 = ~new_U1349 | ~new_U1308;
  assign new_U1742 = ~MEMORY_REG_15__0_ | ~new_U1739;
  assign new_U1743 = ~new_U1349 | ~new_U1307;
  assign new_U1744 = ~new_U1350 | ~WR_REG;
  assign new_U1745 = ~MEMORY_REG_14__1_ | ~new_U1744;
  assign new_U1746 = ~new_U1350 | ~new_U1308;
  assign new_U1747 = ~MEMORY_REG_14__0_ | ~new_U1744;
  assign new_U1748 = ~new_U1350 | ~new_U1307;
  assign new_U1749 = ~new_U1352 | ~WR_REG;
  assign new_U1750 = ~MEMORY_REG_13__1_ | ~new_U1749;
  assign new_U1751 = ~new_U1352 | ~new_U1308;
  assign new_U1752 = ~MEMORY_REG_13__0_ | ~new_U1749;
  assign new_U1753 = ~new_U1352 | ~new_U1307;
  assign new_U1754 = ~new_U1353 | ~WR_REG;
  assign new_U1755 = ~MEMORY_REG_12__1_ | ~new_U1754;
  assign new_U1756 = ~new_U1353 | ~new_U1308;
  assign new_U1757 = ~MEMORY_REG_12__0_ | ~new_U1754;
  assign new_U1758 = ~new_U1353 | ~new_U1307;
  assign new_U1759 = ~new_U1354 | ~WR_REG;
  assign new_U1760 = ~MEMORY_REG_11__1_ | ~new_U1759;
  assign new_U1761 = ~new_U1354 | ~new_U1308;
  assign new_U1762 = ~MEMORY_REG_11__0_ | ~new_U1759;
  assign new_U1763 = ~new_U1354 | ~new_U1307;
  assign new_U1764 = ~new_U1355 | ~WR_REG;
  assign new_U1765 = ~MEMORY_REG_10__1_ | ~new_U1764;
  assign new_U1766 = ~new_U1355 | ~new_U1308;
  assign new_U1767 = ~MEMORY_REG_10__0_ | ~new_U1764;
  assign new_U1768 = ~new_U1355 | ~new_U1307;
  assign new_U1769 = ~new_U1356 | ~WR_REG;
  assign new_U1770 = ~MEMORY_REG_9__1_ | ~new_U1769;
  assign new_U1771 = ~new_U1356 | ~new_U1308;
  assign new_U1772 = ~MEMORY_REG_9__0_ | ~new_U1769;
  assign new_U1773 = ~new_U1356 | ~new_U1307;
  assign new_U1774 = ~new_U1357 | ~WR_REG;
  assign new_U1775 = ~MEMORY_REG_8__1_ | ~new_U1774;
  assign new_U1776 = ~new_U1357 | ~new_U1308;
  assign new_U1777 = ~MEMORY_REG_8__0_ | ~new_U1774;
  assign new_U1778 = ~new_U1357 | ~new_U1307;
  assign new_U1779 = ~new_U1359 | ~WR_REG;
  assign new_U1780 = ~MEMORY_REG_7__1_ | ~new_U1779;
  assign new_U1781 = ~new_U1359 | ~new_U1308;
  assign new_U1782 = ~MEMORY_REG_7__0_ | ~new_U1779;
  assign new_U1783 = ~new_U1359 | ~new_U1307;
  assign new_U1784 = ~new_U1360 | ~WR_REG;
  assign new_U1785 = ~MEMORY_REG_6__1_ | ~new_U1784;
  assign new_U1786 = ~new_U1360 | ~new_U1308;
  assign new_U1787 = ~MEMORY_REG_6__0_ | ~new_U1784;
  assign new_U1788 = ~new_U1360 | ~new_U1307;
  assign new_U1789 = ~new_U1362 | ~WR_REG;
  assign new_U1790 = ~MEMORY_REG_5__1_ | ~new_U1789;
  assign new_U1791 = ~new_U1362 | ~new_U1308;
  assign new_U1792 = ~MEMORY_REG_5__0_ | ~new_U1789;
  assign new_U1793 = ~new_U1362 | ~new_U1307;
  assign new_U1794 = ~new_U1363 | ~WR_REG;
  assign new_U1795 = ~MEMORY_REG_4__1_ | ~new_U1794;
  assign new_U1796 = ~new_U1363 | ~new_U1308;
  assign new_U1797 = ~MEMORY_REG_4__0_ | ~new_U1794;
  assign new_U1798 = ~new_U1363 | ~new_U1307;
  assign new_U1799 = ~new_U1364 | ~WR_REG;
  assign new_U1800 = ~MEMORY_REG_3__1_ | ~new_U1799;
  assign new_U1801 = ~new_U1364 | ~new_U1308;
  assign new_U1802 = ~MEMORY_REG_3__0_ | ~new_U1799;
  assign new_U1803 = ~new_U1364 | ~new_U1307;
  assign new_U1804 = ~new_U1365 | ~WR_REG;
  assign new_U1805 = ~MEMORY_REG_2__1_ | ~new_U1804;
  assign new_U1806 = ~new_U1365 | ~new_U1308;
  assign new_U1807 = ~MEMORY_REG_2__0_ | ~new_U1804;
  assign new_U1808 = ~new_U1365 | ~new_U1307;
  assign new_U1809 = ~new_U1366 | ~WR_REG;
  assign new_U1810 = ~MEMORY_REG_1__1_ | ~new_U1809;
  assign new_U1811 = ~new_U1366 | ~new_U1308;
  assign new_U1812 = ~MEMORY_REG_1__0_ | ~new_U1809;
  assign new_U1813 = ~new_U1366 | ~new_U1307;
  assign new_U1814 = ~new_U1367 | ~WR_REG;
  assign new_U1815 = ~MEMORY_REG_0__1_ | ~new_U1814;
  assign new_U1816 = ~new_U1367 | ~new_U1308;
  assign new_U1817 = ~MEMORY_REG_0__0_ | ~new_U1814;
  assign new_U1818 = ~new_U1367 | ~new_U1307;
  assign new_U1819 = ~new_U1494;
  assign new_U1820 = ~new_U1616 | ~new_U1502;
  assign new_U1821 = ~new_U1493 | ~new_U1820;
  assign new_U1822 = ~new_U1622 | ~new_U1614 | ~new_U1821;
  assign new_U1823 = ~new_U1515;
  assign new_U1824 = ~new_U1611 | ~new_U1502;
  assign new_U1825 = ~new_U1823 | ~new_U1610;
  assign new_U1826 = ~new_U1825 | ~new_U1824 | ~new_U1530;
  assign new_U1827 = ~new_U1655 | ~new_U1621 | ~new_U1611;
  assign new_U1828 = ~new_U1826 | ~new_U1616 | ~new_U1622;
  assign new_U1829 = ~new_U1305 | ~new_U1618 | ~new_U1492;
  assign new_U1830 = ~new_U1829 | ~new_U1368 | ~new_U1828 | ~new_U1827 | ~new_U1648;
  assign new_U1831 = ~new_U1503 | ~new_U1499;
  assign new_U1832 = ~new_U1614 | ~new_U1831;
  assign new_U1833 = ~new_U1522;
  assign new_U1834 = ~new_U1530 | ~new_U1504;
  assign new_U1835 = ~new_U1611 | ~new_U1834;
  assign new_U1836 = ~new_U1830 | ~new_U1835 | ~new_U1833;
  assign new_U1837 = ~new_U1521;
  assign new_U1838 = ~new_U1309 | ~IND_REG_0_ | ~IND_REG_1_;
  assign new_U1839 = ~new_U1319 | ~new_U1837;
  assign new_U1840 = ~NL_REG_3_ | ~new_U1836;
  assign new_U1841 = ~new_U1319 | ~DATA_OUT_REG_1_ | ~new_U1520;
  assign new_U1842 = ~new_U1309 | ~IND_REG_1_ | ~new_U1517;
  assign new_U1843 = ~NL_REG_2_ | ~new_U1836;
  assign new_U1844 = ~new_U1523;
  assign new_U1845 = ~new_U1309 | ~IND_REG_0_ | ~new_U1518;
  assign new_U1846 = ~new_U1844 | ~new_U1319;
  assign new_U1847 = ~NL_REG_1_ | ~new_U1836;
  assign new_U1848 = ~new_U1319 | ~new_U1519 | ~new_U1520;
  assign new_U1849 = ~new_U1309 | ~new_U1517 | ~new_U1518;
  assign new_U1850 = ~NL_REG_0_ | ~new_U1836;
  assign new_U1851 = ~new_U1606;
  assign new_U1852 = ~new_U1627 | ~new_U1622;
  assign new_U1853 = ~new_U1527;
  assign new_U1854 = ~new_R785_U11 | ~new_U1316;
  assign new_U1855 = ~new_U1853 | ~SCAN_REG_4_;
  assign new_U1856 = ~new_R785_U12 | ~new_U1316;
  assign new_U1857 = ~new_U1853 | ~SCAN_REG_3_;
  assign new_U1858 = ~new_R785_U13 | ~new_U1316;
  assign new_U1859 = ~new_U1853 | ~SCAN_REG_2_;
  assign new_U1860 = ~new_R785_U14 | ~new_U1316;
  assign new_U1861 = ~new_U1853 | ~SCAN_REG_1_;
  assign new_U1862 = ~new_R785_U5 | ~new_U1316;
  assign new_U1863 = ~new_U1853 | ~SCAN_REG_0_;
  assign new_U1864 = ~new_U1536;
  assign new_U1865 = ~new_U1621 | ~new_U1610;
  assign new_U1866 = ~new_U1532;
  assign new_U1867 = ~new_U1633 | ~new_U1515;
  assign new_U1868 = ~new_U1635 | ~new_U1615 | ~new_U1614;
  assign new_U1869 = ~new_U1369 | ~new_U1868;
  assign new_U1870 = ~new_U1622 | ~new_U1869;
  assign new_U1871 = ~new_U1533;
  assign new_U1872 = ~new_R730_U11 | ~new_U1313;
  assign new_U1873 = ~new_U1871 | ~MAX_REG_4_;
  assign new_U1874 = ~new_R730_U12 | ~new_U1313;
  assign new_U1875 = ~new_U1871 | ~MAX_REG_3_;
  assign new_U1876 = ~new_R730_U13 | ~new_U1313;
  assign new_U1877 = ~new_U1871 | ~MAX_REG_2_;
  assign new_U1878 = ~new_R730_U14 | ~new_U1313;
  assign new_U1879 = ~new_U1871 | ~MAX_REG_1_;
  assign new_U1880 = ~new_R730_U5 | ~new_U1313;
  assign new_U1881 = ~new_U1871 | ~MAX_REG_0_;
  assign new_U1882 = ~new_U1539;
  assign new_U1883 = ~new_U1600;
  assign new_U1884 = ~K_2_ | ~new_U1558;
  assign new_U1885 = ~new_U1611 | ~new_U1540;
  assign new_U1886 = ~new_R745_U16 | ~new_U1317;
  assign new_U1887 = ~TIMEBASE_REG_4_ | ~new_U1866;
  assign new_U1888 = ~new_R745_U8 | ~new_U1317;
  assign new_U1889 = ~TIMEBASE_REG_3_ | ~new_U1866;
  assign new_U1890 = ~new_R745_U6 | ~new_U1317;
  assign new_U1891 = ~TIMEBASE_REG_2_ | ~new_U1866;
  assign new_U1892 = ~new_R745_U9 | ~new_U1317;
  assign new_U1893 = ~TIMEBASE_REG_1_ | ~new_U1866;
  assign new_U1894 = ~new_U1611 | ~new_U1548;
  assign new_U1895 = ~new_U1561;
  assign new_U1896 = ~new_U1561 | ~new_U1501;
  assign new_U1897 = ~new_U2132 | ~new_U2133 | ~new_U2135 | ~new_U2134;
  assign new_U1898 = ~new_U1501 | ~new_U1819 | ~new_U1500;
  assign new_U1899 = ~new_U1320 | ~new_U1496;
  assign new_U1900 = ~new_U1635 | ~new_U1492;
  assign new_U1901 = ~new_U1898 | ~new_U1899 | ~new_U1900;
  assign new_U1902 = ~new_U1320 | ~new_U1635;
  assign new_U1903 = ~new_U1611 | ~new_U1901;
  assign new_U1904 = ~new_U1616 | ~new_U1897;
  assign new_U1905 = ~new_U1632 | ~new_U1492;
  assign new_U1906 = ~new_U1541;
  assign new_U1907 = ~new_U1525 | ~new_U1537;
  assign new_U1908 = ~new_U1312 | ~new_U1496;
  assign new_U1909 = ~new_U1622 | ~new_U1907;
  assign new_U1910 = ~new_U1621 | ~new_U1539;
  assign new_U1911 = ~new_U1909 | ~new_U1910 | ~new_U1649 | ~new_U1653 | ~new_U1908;
  assign new_U1912 = ~new_U1612 | ~new_U1611;
  assign new_U1913 = ~new_U1819 | ~new_U1493;
  assign new_U1914 = ~new_U1371 | ~new_U1913;
  assign new_U1915 = ~new_U1914 | ~new_U1501;
  assign new_U1916 = ~new_U1616 | ~new_U1618;
  assign new_U1917 = ~new_U1531 | ~new_U1916;
  assign new_U1918 = ~new_U1917 | ~new_U1501;
  assign new_U1919 = ~new_U1882 | ~new_U1621;
  assign new_U1920 = ~new_U1915 | ~new_U1918 | ~new_U1919;
  assign new_U1921 = ~new_R745_U15 | ~new_U1920;
  assign new_U1922 = ~TIMEBASE_REG_5_ | ~new_U1911;
  assign new_U1923 = ~new_U1922 | ~new_U1921;
  assign new_U1924 = ~new_U1882 | ~new_U1621 | ~new_U1618;
  assign new_U1925 = ~new_U1501 | ~new_U1616 | ~new_U1502;
  assign new_U1926 = ~new_U1915 | ~new_U1924 | ~new_U1925;
  assign new_U1927 = ~new_U1542;
  assign new_U1928 = ~new_U1621 | ~new_U1618 | ~new_U1539;
  assign new_U1929 = ~new_U1622 | ~new_U1907;
  assign new_U1930 = ~new_U1543;
  assign new_U1931 = ~new_U1930 | ~new_U1649;
  assign new_U1932 = ~new_U1323 | ~TIMEBASE_REG_4_;
  assign new_U1933 = ~new_U1322 | ~new_R745_U16;
  assign new_U1934 = ~COUNT_REG2_4_ | ~new_U1906;
  assign new_U1935 = ~TIMEBASE_REG_3_ | ~new_U1616;
  assign new_U1936 = ~new_U1656 | ~new_U1618;
  assign new_U1937 = ~new_U1371 | ~new_U1936 | ~new_U1935;
  assign new_U1938 = ~new_U1622 | ~new_U1937;
  assign new_U1939 = ~new_R745_U8 | ~new_U1926;
  assign new_U1940 = ~TIMEBASE_REG_3_ | ~new_U1543;
  assign new_U1941 = ~new_U1939 | ~new_U1940 | ~new_U1938;
  assign new_U1942 = ~new_U1323 | ~TIMEBASE_REG_2_;
  assign new_U1943 = ~new_U1322 | ~new_R745_U6;
  assign new_U1944 = ~COUNT_REG2_2_ | ~new_U1906;
  assign new_U1945 = ~new_U1323 | ~TIMEBASE_REG_1_;
  assign new_U1946 = ~new_U1322 | ~new_R745_U9;
  assign new_U1947 = ~COUNT_REG2_1_ | ~new_U1906;
  assign new_U1948 = ~new_R745_U7 | ~new_U1920;
  assign new_U1949 = ~TIMEBASE_REG_0_ | ~new_U1911;
  assign new_U1950 = ~new_U1949 | ~new_U1948;
  assign new_U1951 = ~new_U1310 | ~new_U1864 | ~new_U1612 | ~new_U1616;
  assign new_U1952 = ~new_U1498 | ~new_U1623;
  assign new_U1953 = ~new_U1622 | ~new_U1952;
  assign new_U1954 = ~new_U1604;
  assign new_U1955 = ~new_U1614 | ~new_U1499;
  assign new_U1956 = ~new_U1516 | ~new_U1955;
  assign new_U1957 = ~new_U1318 | ~new_U1621;
  assign new_U1958 = ~DATA_OUT_REG_1_ | ~new_U1542;
  assign new_U1959 = ~new_U1958 | ~new_U1957;
  assign new_U1960 = ~DATA_OUT_REG_0_ | ~new_U1493;
  assign new_U1961 = ~new_U1621 | ~new_U1884 | ~new_U1559;
  assign new_U1962 = ~new_U1961 | ~new_U1960 | ~new_U1545;
  assign new_U1963 = ~new_U1618 | ~new_U1492;
  assign new_U1964 = ~new_U1528 | ~new_U1963;
  assign new_U1965 = ~new_U1615 | ~new_U1964;
  assign new_U1966 = ~new_U1551;
  assign new_U1967 = ~new_U1528 | ~new_U1530;
  assign new_U1968 = ~new_U1315 | ~MAX_REG_4_;
  assign new_U1969 = ~new_U1314 | ~SCAN_REG_4_;
  assign new_U1970 = ~new_U1966 | ~ADDRESS_REG_4_;
  assign new_U1971 = ~new_U1315 | ~MAX_REG_3_;
  assign new_U1972 = ~new_U1314 | ~SCAN_REG_3_;
  assign new_U1973 = ~new_U1966 | ~ADDRESS_REG_3_;
  assign new_U1974 = ~new_U1315 | ~MAX_REG_2_;
  assign new_U1975 = ~new_U1314 | ~SCAN_REG_2_;
  assign new_U1976 = ~new_U1966 | ~ADDRESS_REG_2_;
  assign new_U1977 = ~new_U1315 | ~MAX_REG_1_;
  assign new_U1978 = ~new_U1314 | ~SCAN_REG_1_;
  assign new_U1979 = ~new_U1966 | ~ADDRESS_REG_1_;
  assign new_U1980 = ~new_U1315 | ~MAX_REG_0_;
  assign new_U1981 = ~new_U1314 | ~SCAN_REG_0_;
  assign new_U1982 = ~new_U1966 | ~ADDRESS_REG_0_;
  assign new_U1983 = ~SOUND_REG_2_ | ~new_U1605;
  assign new_U1984 = ~new_U1983 | ~new_U1550;
  assign new_U1985 = ~new_U1552 | ~new_U1984;
  assign new_U1986 = ~new_U1550 | ~new_U2153 | ~new_U2152;
  assign new_U1987 = ~COUNTER_REG_0_ | ~SOUND_REG_1_ | ~new_U1605;
  assign new_U1988 = ~COUNTER_REG_1_ | ~new_U1986;
  assign new_U1989 = ~new_U1988 | ~new_U1987;
  assign new_U1990 = ~new_U1983 | ~COUNTER_REG_2_ | ~new_U1550;
  assign new_U1991 = ~new_U1989 | ~new_U1985;
  assign new_U1992 = ~new_U1562;
  assign new_U1993 = ~SOUND_REG_1_ | ~SOUND_REG_2_;
  assign new_U1994 = ~new_U1555;
  assign new_U1995 = ~PLAY_REG | ~new_U1994;
  assign new_U1996 = ~S_REG | ~new_U1995;
  assign new_U1997 = ~new_U1619 | ~new_U1616 | ~new_U1493;
  assign new_U1998 = ~new_U1997 | ~new_U1538 | ~new_U1629;
  assign new_U1999 = ~new_U1622 | ~new_U1998;
  assign new_U2000 = ~new_U1607;
  assign new_U2001 = ~new_U1656 | ~new_U1494;
  assign new_U2002 = ~new_U1498 | ~new_U2001;
  assign new_U2003 = ~new_U1612 | ~new_U2155 | ~new_U2154;
  assign new_U2004 = ~new_U2002 | ~new_U1493;
  assign new_U2005 = ~new_U1628 | ~new_U1492;
  assign new_U2006 = ~new_U2004 | ~new_U2005 | ~new_U2003;
  assign new_U2007 = DATA_OUT_REG_1_ | DATA_OUT_REG_0_;
  assign new_U2008 = ~new_U1318 | ~new_U2159 | ~new_U2158;
  assign new_U2009 = ~new_U2008 | ~new_U2161 | ~new_U2160;
  assign new_U2010 = ~new_U1628 | ~new_U1622;
  assign new_U2011 = ~new_U1621 | ~new_U1610;
  assign new_U2012 = ~new_U1608;
  assign new_U2013 = ~new_U1555 | ~PLAY_REG | ~SPEAKER_REG;
  assign new_U2014 = ~new_U1306 | ~new_U1500;
  assign new_U2015 = ~WR_REG | ~new_U2014;
  assign new_U2016 = ~new_U1502 | ~new_U1531;
  assign new_U2017 = ~new_U1560;
  assign new_U2018 = ~new_U1622 | ~new_U1560;
  assign new_U2019 = ~new_U1636 | ~new_U1640;
  assign new_U2020 = ~new_U2017 | ~new_U1524;
  assign new_U2021 = ~new_U1611 | ~new_U2019;
  assign new_U2022 = ~new_U1310 | ~new_U1627;
  assign new_U2023 = ~new_U1526 | ~new_U1538;
  assign new_U2024 = ~new_U2023 | ~new_U1501;
  assign new_U2025 = ~new_U1627 | ~new_U1515;
  assign new_U2026 = ~new_U1619 | ~new_U1615;
  assign new_U2027 = ~new_U1619 | ~new_U1614 | ~new_U1500;
  assign new_U2028 = ~new_U1628 | ~new_U1501;
  assign new_U2029 = ~new_U1621 | ~new_U1612;
  assign new_U2030 = ~new_U1610 | ~new_U1500;
  assign new_U2031 = ~new_U1320 | ~new_U1635;
  assign new_U2032 = ~new_U1369 | ~new_U2031 | ~new_U1629 | ~new_U1626 | ~new_U1624;
  assign new_U2033 = ~new_U1628 | ~new_U2170 | ~new_U2169;
  assign new_U2034 = ~new_U1623 | ~new_U1634 | ~new_U1895 | ~new_U2033;
  assign new_U2035 = ~MEMORY_REG_0__1_ | ~new_U1367;
  assign new_U2036 = ~MEMORY_REG_1__1_ | ~new_U1366;
  assign new_U2037 = ~MEMORY_REG_2__1_ | ~new_U1365;
  assign new_U2038 = ~MEMORY_REG_3__1_ | ~new_U1364;
  assign new_U2039 = ~MEMORY_REG_4__1_ | ~new_U1363;
  assign new_U2040 = ~MEMORY_REG_5__1_ | ~new_U1362;
  assign new_U2041 = ~MEMORY_REG_6__1_ | ~new_U1360;
  assign new_U2042 = ~MEMORY_REG_7__1_ | ~new_U1359;
  assign new_U2043 = ~MEMORY_REG_8__1_ | ~new_U1357;
  assign new_U2044 = ~MEMORY_REG_9__1_ | ~new_U1356;
  assign new_U2045 = ~MEMORY_REG_10__1_ | ~new_U1355;
  assign new_U2046 = ~MEMORY_REG_11__1_ | ~new_U1354;
  assign new_U2047 = ~MEMORY_REG_12__1_ | ~new_U1353;
  assign new_U2048 = ~MEMORY_REG_13__1_ | ~new_U1352;
  assign new_U2049 = ~MEMORY_REG_14__1_ | ~new_U1350;
  assign new_U2050 = ~MEMORY_REG_15__1_ | ~new_U1349;
  assign new_U2051 = ~MEMORY_REG_16__1_ | ~new_U1347;
  assign new_U2052 = ~MEMORY_REG_17__1_ | ~new_U1346;
  assign new_U2053 = ~MEMORY_REG_18__1_ | ~new_U1345;
  assign new_U2054 = ~MEMORY_REG_19__1_ | ~new_U1344;
  assign new_U2055 = ~MEMORY_REG_20__1_ | ~new_U1343;
  assign new_U2056 = ~MEMORY_REG_21__1_ | ~new_U1342;
  assign new_U2057 = ~MEMORY_REG_22__1_ | ~new_U1340;
  assign new_U2058 = ~MEMORY_REG_23__1_ | ~new_U1339;
  assign new_U2059 = ~MEMORY_REG_24__1_ | ~new_U1337;
  assign new_U2060 = ~MEMORY_REG_25__1_ | ~new_U1336;
  assign new_U2061 = ~MEMORY_REG_26__1_ | ~new_U1335;
  assign new_U2062 = ~MEMORY_REG_27__1_ | ~new_U1333;
  assign new_U2063 = ~MEMORY_REG_28__1_ | ~new_U1331;
  assign new_U2064 = ~MEMORY_REG_29__1_ | ~new_U1330;
  assign new_U2065 = ~MEMORY_REG_30__1_ | ~new_U1328;
  assign new_U2066 = ~MEMORY_REG_31__1_ | ~new_U1326;
  assign new_U2067 = ~MEMORY_REG_0__0_ | ~new_U1367;
  assign new_U2068 = ~MEMORY_REG_1__0_ | ~new_U1366;
  assign new_U2069 = ~MEMORY_REG_2__0_ | ~new_U1365;
  assign new_U2070 = ~MEMORY_REG_3__0_ | ~new_U1364;
  assign new_U2071 = ~MEMORY_REG_4__0_ | ~new_U1363;
  assign new_U2072 = ~MEMORY_REG_5__0_ | ~new_U1362;
  assign new_U2073 = ~MEMORY_REG_6__0_ | ~new_U1360;
  assign new_U2074 = ~MEMORY_REG_7__0_ | ~new_U1359;
  assign new_U2075 = ~MEMORY_REG_8__0_ | ~new_U1357;
  assign new_U2076 = ~MEMORY_REG_9__0_ | ~new_U1356;
  assign new_U2077 = ~MEMORY_REG_10__0_ | ~new_U1355;
  assign new_U2078 = ~MEMORY_REG_11__0_ | ~new_U1354;
  assign new_U2079 = ~MEMORY_REG_12__0_ | ~new_U1353;
  assign new_U2080 = ~MEMORY_REG_13__0_ | ~new_U1352;
  assign new_U2081 = ~MEMORY_REG_14__0_ | ~new_U1350;
  assign new_U2082 = ~MEMORY_REG_15__0_ | ~new_U1349;
  assign new_U2083 = ~MEMORY_REG_16__0_ | ~new_U1347;
  assign new_U2084 = ~MEMORY_REG_17__0_ | ~new_U1346;
  assign new_U2085 = ~MEMORY_REG_18__0_ | ~new_U1345;
  assign new_U2086 = ~MEMORY_REG_19__0_ | ~new_U1344;
  assign new_U2087 = ~MEMORY_REG_20__0_ | ~new_U1343;
  assign new_U2088 = ~MEMORY_REG_21__0_ | ~new_U1342;
  assign new_U2089 = ~MEMORY_REG_22__0_ | ~new_U1340;
  assign new_U2090 = ~MEMORY_REG_23__0_ | ~new_U1339;
  assign new_U2091 = ~MEMORY_REG_24__0_ | ~new_U1337;
  assign new_U2092 = ~MEMORY_REG_25__0_ | ~new_U1336;
  assign new_U2093 = ~MEMORY_REG_26__0_ | ~new_U1335;
  assign new_U2094 = ~MEMORY_REG_27__0_ | ~new_U1333;
  assign new_U2095 = ~MEMORY_REG_28__0_ | ~new_U1331;
  assign new_U2096 = ~MEMORY_REG_29__0_ | ~new_U1330;
  assign new_U2097 = ~MEMORY_REG_30__0_ | ~new_U1328;
  assign new_U2098 = ~MEMORY_REG_31__0_ | ~new_U1326;
  assign new_U2099 = ~COUNTER_REG_1_ | ~COUNTER_REG_0_;
  assign new_U2100 = ~TIMEBASE_REG_5_ | ~new_U1622;
  assign new_U2101 = ~TIMEBASE_REG_4_ | ~new_U1622;
  assign new_U2102 = ~TIMEBASE_REG_3_ | ~new_U1622;
  assign new_U2103 = ~TIMEBASE_REG_2_ | ~new_U1622;
  assign new_U2104 = ~TIMEBASE_REG_1_ | ~new_U1622;
  assign new_U2105 = ~TIMEBASE_REG_0_ | ~new_U1622;
  assign new_U2106 = ~K_3_ | ~new_U1521;
  assign new_U2107 = ~K_3_ | ~new_U1535;
  assign new_U2108 = ~K_1_ | ~new_U1559;
  assign new_U2109 = ~new_U1318 | ~new_U2168 | ~new_U2167;
  assign new_U2110 = ~new_U1497 | ~new_U1493;
  assign new_U2111 = ~new_U1864 | ~new_U1630;
  assign new_U2112 = ~new_U2020 | ~new_U1501;
  assign new_U2113 = ~new_U2099 | ~new_U1552;
  assign new_U2114 = ~SCAN_REG_2_ | ~new_U1510;
  assign new_U2115 = ~MAX_REG_2_ | ~new_U1509;
  assign new_U2116 = ~SCAN_REG_0_ | ~new_U1506;
  assign new_U2117 = ~MAX_REG_0_ | ~new_U1505;
  assign new_U2118 = ~SCAN_REG_1_ | ~new_U1508;
  assign new_U2119 = ~MAX_REG_1_ | ~new_U1507;
  assign new_U2120 = ~SCAN_REG_3_ | ~new_U1512;
  assign new_U2121 = ~MAX_REG_3_ | ~new_U1511;
  assign new_U2122 = ~SCAN_REG_4_ | ~new_U1514;
  assign new_U2123 = ~MAX_REG_4_ | ~new_U1513;
  assign new_U2124 = ~IND_REG_1_ | ~new_U1600;
  assign new_U2125 = ~new_U1883 | ~new_U1318;
  assign new_U2126 = ~IND_REG_0_ | ~new_U1600;
  assign new_U2127 = ~new_U1883 | ~new_U1884 | ~new_U1559;
  assign new_U2128 = ~TIMEBASE_REG_5_ | ~new_U1866;
  assign new_U2129 = ~new_U1885 | ~new_U1532;
  assign new_U2130 = ~TIMEBASE_REG_0_ | ~new_U1866;
  assign new_U2131 = ~new_U1894 | ~new_U1532;
  assign new_U2132 = ~new_U1492 | ~new_U1655 | ~new_U1501;
  assign new_U2133 = ~new_U1614 | ~new_U1502 | ~new_U1493;
  assign new_U2134 = ~new_U1306 | ~new_U1496;
  assign new_U2135 = ~new_U1613 | ~new_U1618;
  assign new_U2136 = ~COUNT_REG2_5_ | ~new_U1906;
  assign new_U2137 = ~new_U1923 | ~new_U1541;
  assign new_U2138 = ~COUNT_REG2_3_ | ~new_U1906;
  assign new_U2139 = ~new_U1941 | ~new_U1541;
  assign new_U2140 = ~COUNT_REG2_0_ | ~new_U1906;
  assign new_U2141 = ~new_U1950 | ~new_U1541;
  assign new_U2142 = ~new_U1954 | ~SOUND_REG_2_;
  assign new_U2143 = ~new_U1956 | ~new_U1604;
  assign new_U2144 = ~new_U1954 | ~SOUND_REG_1_;
  assign new_U2145 = ~new_U1959 | ~new_U1604;
  assign new_U2146 = ~SOUND_REG_0_ | ~new_U1954;
  assign new_U2147 = ~new_U1962 | ~new_U1604;
  assign new_U2148 = ~DATA_IN_REG_1_ | ~new_U1606;
  assign new_U2149 = ~NUM_REG_1_ | ~new_U1851;
  assign new_U2150 = ~DATA_IN_REG_0_ | ~new_U1606;
  assign new_U2151 = ~NUM_REG_0_ | ~new_U1851;
  assign new_U2152 = ~COUNTER_REG_0_ | ~new_U1605;
  assign new_U2153 = ~SOUND_REG_0_ | ~SOUND_REG_2_;
  assign new_U2154 = ~new_U1616 | ~new_U1614;
  assign new_U2155 = ~new_U1495 | ~new_U1500;
  assign new_U2156 = ~new_U2000 | ~PLAY_REG;
  assign new_U2157 = ~new_U2006 | ~new_U1607;
  assign new_U2158 = ~new_U2106 | ~new_U1535;
  assign new_U2159 = ~K_2_ | ~DATA_OUT_REG_1_ | ~new_U1520;
  assign new_U2160 = ~K_0_ | ~new_U2007;
  assign new_U2161 = ~new_U1559 | ~K_1_ | ~new_U1523;
  assign new_U2162 = ~NLOSS_REG | ~new_U2012;
  assign new_U2163 = ~new_U1611 | ~new_U1608;
  assign new_U2164 = DATA_OUT_REG_0_ | K_0_;
  assign new_U2165 = ~DATA_OUT_REG_0_ | ~new_U2108;
  assign new_U2166 = ~new_U2165 | ~new_U2164;
  assign new_U2167 = DATA_OUT_REG_0_ | K_2_;
  assign new_U2168 = ~DATA_OUT_REG_0_ | ~new_U2107;
  assign new_U2169 = ~DATA_OUT_REG_1_ | ~new_U2109;
  assign new_U2170 = ~new_U2166 | ~new_U1519;
  assign new_U2171 = ~new_U1622 | ~new_U2032;
  assign new_U2172 = ~new_U2034 | ~new_U1501;
  assign new_U2173 = ~COUNTER_REG_1_ | ~new_U1553;
  assign new_U2174 = ~COUNTER_REG_0_ | ~new_U1554;
  assign new_U2175 = ~new_U2174 | ~new_U2173;
  assign new_U2176 = ~COUNT_REG_1_ | ~n592;
  assign new_U2177 = ~COUNT_REG_0_ | ~new_U1609;
  assign new_R745_U6 = ~new_R745_U11 | ~new_R745_U25;
  assign new_R745_U7 = ~new_U1380;
  assign new_R745_U8 = ~new_R745_U12 | ~new_R745_U24;
  assign new_R745_U9 = ~new_R745_U10 | ~new_R745_U26;
  assign new_R745_U10 = new_U1380 | new_U1379;
  assign new_R745_U11 = ~new_R745_U20 | ~new_R745_U14;
  assign new_R745_U12 = ~new_R745_U21 | ~new_R745_U13;
  assign new_R745_U13 = ~new_U1377;
  assign new_R745_U14 = ~new_U1378;
  assign new_R745_U15 = ~new_R745_U28 | ~new_R745_U27;
  assign new_R745_U16 = ~new_R745_U30 | ~new_R745_U29;
  assign new_R745_U17 = ~new_U1375;
  assign new_R745_U18 = ~new_R745_U22 | ~new_R745_U19;
  assign new_R745_U19 = ~new_U1376;
  assign new_R745_U20 = ~new_R745_U10;
  assign new_R745_U21 = ~new_R745_U11;
  assign new_R745_U22 = ~new_R745_U12;
  assign new_R745_U23 = ~new_R745_U18;
  assign new_R745_U24 = ~new_U1377 | ~new_R745_U11;
  assign new_R745_U25 = ~new_U1378 | ~new_R745_U10;
  assign new_R745_U26 = ~new_U1379 | ~new_U1380;
  assign new_R745_U27 = ~new_U1375 | ~new_R745_U18;
  assign new_R745_U28 = ~new_R745_U23 | ~new_R745_U17;
  assign new_R745_U29 = ~new_U1376 | ~new_R745_U12;
  assign new_R745_U30 = ~new_R745_U22 | ~new_R745_U19;
  assign new_R730_U5 = ~MAX_REG_0_;
  assign new_R730_U6 = ~MAX_REG_1_;
  assign new_R730_U7 = ~MAX_REG_1_ | ~MAX_REG_0_;
  assign new_R730_U8 = ~MAX_REG_2_;
  assign new_R730_U9 = ~MAX_REG_2_ | ~new_R730_U17;
  assign new_R730_U10 = ~MAX_REG_3_;
  assign new_R730_U11 = ~new_R730_U21 | ~new_R730_U20;
  assign new_R730_U12 = ~new_R730_U23 | ~new_R730_U22;
  assign new_R730_U13 = ~new_R730_U25 | ~new_R730_U24;
  assign new_R730_U14 = ~new_R730_U27 | ~new_R730_U26;
  assign new_R730_U15 = ~MAX_REG_4_;
  assign new_R730_U16 = ~MAX_REG_3_ | ~new_R730_U18;
  assign new_R730_U17 = ~new_R730_U7;
  assign new_R730_U18 = ~new_R730_U9;
  assign new_R730_U19 = ~new_R730_U16;
  assign new_R730_U20 = ~MAX_REG_4_ | ~new_R730_U16;
  assign new_R730_U21 = ~new_R730_U19 | ~new_R730_U15;
  assign new_R730_U22 = ~MAX_REG_3_ | ~new_R730_U9;
  assign new_R730_U23 = ~new_R730_U18 | ~new_R730_U10;
  assign new_R730_U24 = ~MAX_REG_2_ | ~new_R730_U7;
  assign new_R730_U25 = ~new_R730_U17 | ~new_R730_U8;
  assign new_R730_U26 = ~MAX_REG_1_ | ~new_R730_U5;
  assign new_R730_U27 = ~MAX_REG_0_ | ~new_R730_U6;
  assign new_R785_U5 = ~SCAN_REG_0_;
  assign new_R785_U6 = ~SCAN_REG_1_;
  assign new_R785_U7 = ~SCAN_REG_1_ | ~SCAN_REG_0_;
  assign new_R785_U8 = ~SCAN_REG_2_;
  assign new_R785_U9 = ~SCAN_REG_2_ | ~new_R785_U17;
  assign new_R785_U10 = ~SCAN_REG_3_;
  assign new_R785_U11 = ~new_R785_U21 | ~new_R785_U20;
  assign new_R785_U12 = ~new_R785_U23 | ~new_R785_U22;
  assign new_R785_U13 = ~new_R785_U25 | ~new_R785_U24;
  assign new_R785_U14 = ~new_R785_U27 | ~new_R785_U26;
  assign new_R785_U15 = ~SCAN_REG_4_;
  assign new_R785_U16 = ~SCAN_REG_3_ | ~new_R785_U18;
  assign new_R785_U17 = ~new_R785_U7;
  assign new_R785_U18 = ~new_R785_U9;
  assign new_R785_U19 = ~new_R785_U16;
  assign new_R785_U20 = ~SCAN_REG_4_ | ~new_R785_U16;
  assign new_R785_U21 = ~new_R785_U19 | ~new_R785_U15;
  assign new_R785_U22 = ~SCAN_REG_3_ | ~new_R785_U9;
  assign new_R785_U23 = ~new_R785_U18 | ~new_R785_U10;
  assign new_R785_U24 = ~SCAN_REG_2_ | ~new_R785_U7;
  assign new_R785_U25 = ~new_R785_U17 | ~new_R785_U8;
  assign new_R785_U26 = ~SCAN_REG_1_ | ~new_R785_U5;
  assign new_not_keyinput0 = ~keyinput0;
  assign new_not_keyinput1 = ~keyinput1;
  assign new_not_keyinput2 = ~keyinput2;
  assign new_not_keyinput3 = ~keyinput3;
  assign new_not_keyinput4 = ~keyinput4;
  assign new_not_0 = ~Q_0;
  assign new_and_1 = new_not_0 & Q_1;
  assign new_not_2 = ~Q_1;
  assign new_and_3 = Q_0 & new_not_2;
  assign n2427 = new_and_1 | new_and_3;
  assign n2424 = ~Q_0;
  assign new_not_Q_0 = ~Q_0;
  assign new_not_Q_1 = ~Q_1;
  assign new_count_state_1 = new_not_Q_1 & Q_0;
  assign new_count_state_2 = Q_1 & new_not_Q_0;
  assign new_count_state_3 = Q_1 & Q_0;
  assign new_y_mux_key0_and_0 = n44 & keyinput4 & new_not_keyinput3 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key0_and_1 = n592 & new_not_keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key0 = new_y_mux_key0_and_0 | new_y_mux_key0_and_1;
  assign new_y_mux_key1_and_0 = n44 & keyinput4 & keyinput3 & new_not_keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key1_and_1 = n592 & new_not_keyinput4 & new_not_keyinput3 & keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key1 = new_y_mux_key1_and_0 | new_y_mux_key1_and_1;
  assign new_y_mux_key2_and_0 = n44 & keyinput4 & new_not_keyinput3 & keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key2_and_1 = n592 & new_not_keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key2 = new_y_mux_key2_and_0 | new_y_mux_key2_and_1;
  assign new_y_mux_key3_and_0 = n44 & new_not_keyinput4 & new_not_keyinput3 & new_not_keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key3_and_1 = n592 & keyinput4 & keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key3 = new_y_mux_key3_and_0 | new_y_mux_key3_and_1;
  assign new__state_1 = new_count_state_1;
  assign new__state_2 = new_count_state_2;
  assign new__state_3 = new_count_state_3;
  assign new__state_5 = new__state_2 | new__state_3;
  assign new_s__state_1 = new__state_1;
  assign new_not_s__state_1 = ~new_s__state_1;
  assign new_I0__state_1 = new_y_mux_key0;
  assign new_I1__state_1 = new_y_mux_key1;
  assign new_and_mux__state_1 = new_not_s__state_1 & new_I0__state_1;
  assign new_and_mux__state_1_2 = new_s__state_1 & new_I1__state_1;
  assign new_y_mux_4 = new_and_mux__state_1 | new_and_mux__state_1_2;
  assign new_s__state_3 = new__state_3;
  assign new_not_s__state_3 = ~new_s__state_3;
  assign new_I0__state_3 = new_y_mux_key2;
  assign new_I1__state_3 = new_y_mux_key3;
  assign new_and_mux__state_3 = new_not_s__state_3 & new_I0__state_3;
  assign new_and_mux__state_3_2 = new_s__state_3 & new_I1__state_3;
  assign new_y_mux_5 = new_and_mux__state_3 | new_and_mux__state_3_2;
  assign new_s__state_5 = new__state_5;
  assign new_not_s__state_5 = ~new_s__state_5;
  assign new_I0__state_5 = new_y_mux_4;
  assign new_I1__state_5 = new_y_mux_5;
  assign new_and_mux__state_5 = new_not_s__state_5 & new_I0__state_5;
  assign new_and_mux__state_5_2 = new_s__state_5 & new_I1__state_5;
  assign n34 = new_and_mux__state_5 | new_and_mux__state_5_2;
  assign n587 = n583;
  always @ (posedge clock) begin
    COUNT_REG_0_ <= n34;
    MEMORY_REG_31__1_ <= n39;
    MEMORY_REG_31__0_ <= n44;
    MEMORY_REG_30__1_ <= n49;
    MEMORY_REG_30__0_ <= n54;
    MEMORY_REG_29__1_ <= n59;
    MEMORY_REG_29__0_ <= n64;
    MEMORY_REG_28__1_ <= n69;
    MEMORY_REG_28__0_ <= n74;
    MEMORY_REG_27__1_ <= n79;
    MEMORY_REG_27__0_ <= n84;
    MEMORY_REG_26__1_ <= n89;
    MEMORY_REG_26__0_ <= n94;
    MEMORY_REG_25__1_ <= n99;
    MEMORY_REG_25__0_ <= n104;
    MEMORY_REG_24__1_ <= n109;
    MEMORY_REG_24__0_ <= n114;
    MEMORY_REG_23__1_ <= n119;
    MEMORY_REG_23__0_ <= n124;
    MEMORY_REG_22__1_ <= n129;
    MEMORY_REG_22__0_ <= n134;
    MEMORY_REG_21__1_ <= n139;
    MEMORY_REG_21__0_ <= n144;
    MEMORY_REG_20__1_ <= n149;
    MEMORY_REG_20__0_ <= n154;
    MEMORY_REG_19__1_ <= n159;
    MEMORY_REG_19__0_ <= n164;
    MEMORY_REG_18__1_ <= n169;
    MEMORY_REG_18__0_ <= n174;
    MEMORY_REG_17__1_ <= n179;
    MEMORY_REG_17__0_ <= n184;
    MEMORY_REG_16__1_ <= n189;
    MEMORY_REG_16__0_ <= n194;
    MEMORY_REG_15__1_ <= n199;
    MEMORY_REG_15__0_ <= n204;
    MEMORY_REG_14__1_ <= n209;
    MEMORY_REG_14__0_ <= n214;
    MEMORY_REG_13__1_ <= n219;
    MEMORY_REG_13__0_ <= n224;
    MEMORY_REG_12__1_ <= n229;
    MEMORY_REG_12__0_ <= n234;
    MEMORY_REG_11__1_ <= n239;
    MEMORY_REG_11__0_ <= n244;
    MEMORY_REG_10__1_ <= n249;
    MEMORY_REG_10__0_ <= n254;
    MEMORY_REG_9__1_ <= n259;
    MEMORY_REG_9__0_ <= n264;
    MEMORY_REG_8__1_ <= n269;
    MEMORY_REG_8__0_ <= n274;
    MEMORY_REG_7__1_ <= n279;
    MEMORY_REG_7__0_ <= n284;
    MEMORY_REG_6__1_ <= n289;
    MEMORY_REG_6__0_ <= n294;
    MEMORY_REG_5__1_ <= n299;
    MEMORY_REG_5__0_ <= n304;
    MEMORY_REG_4__1_ <= n309;
    MEMORY_REG_4__0_ <= n314;
    MEMORY_REG_3__1_ <= n319;
    MEMORY_REG_3__0_ <= n324;
    MEMORY_REG_2__1_ <= n329;
    MEMORY_REG_2__0_ <= n334;
    MEMORY_REG_1__1_ <= n339;
    MEMORY_REG_1__0_ <= n344;
    MEMORY_REG_0__1_ <= n349;
    MEMORY_REG_0__0_ <= n354;
    NL_REG_3_ <= n359;
    NL_REG_2_ <= n363;
    NL_REG_1_ <= n367;
    NL_REG_0_ <= n371;
    SCAN_REG_4_ <= n375;
    SCAN_REG_3_ <= n380;
    SCAN_REG_2_ <= n385;
    SCAN_REG_1_ <= n390;
    SCAN_REG_0_ <= n395;
    MAX_REG_4_ <= n400;
    MAX_REG_3_ <= n405;
    MAX_REG_2_ <= n410;
    MAX_REG_1_ <= n415;
    MAX_REG_0_ <= n420;
    IND_REG_1_ <= n425;
    IND_REG_0_ <= n430;
    TIMEBASE_REG_5_ <= n435;
    TIMEBASE_REG_4_ <= n440;
    TIMEBASE_REG_3_ <= n445;
    TIMEBASE_REG_2_ <= n450;
    TIMEBASE_REG_1_ <= n455;
    TIMEBASE_REG_0_ <= n460;
    COUNT_REG2_5_ <= n465;
    COUNT_REG2_4_ <= n470;
    COUNT_REG2_3_ <= n475;
    COUNT_REG2_2_ <= n480;
    COUNT_REG2_1_ <= n485;
    COUNT_REG2_0_ <= n490;
    SOUND_REG_2_ <= n495;
    SOUND_REG_1_ <= n500;
    SOUND_REG_0_ <= n505;
    ADDRESS_REG_4_ <= n510;
    ADDRESS_REG_3_ <= n515;
    ADDRESS_REG_2_ <= n520;
    ADDRESS_REG_1_ <= n525;
    ADDRESS_REG_0_ <= n530;
    DATA_IN_REG_1_ <= n535;
    DATA_IN_REG_0_ <= n540;
    S_REG <= n545;
    PLAY_REG <= n550;
    NLOSS_REG <= n555;
    SPEAKER_REG <= n559;
    WR_REG <= n563;
    COUNTER_REG_2_ <= n568;
    COUNTER_REG_1_ <= n573;
    COUNTER_REG_0_ <= n578;
    COUNT_REG_1_ <= n583;
    NUM_REG_1_ <= n587;
    NUM_REG_0_ <= n592;
    DATA_OUT_REG_1_ <= n597;
    DATA_OUT_REG_0_ <= n602;
    GAMMA_REG_4_ <= n607;
    GAMMA_REG_3_ <= n612;
    GAMMA_REG_2_ <= n617;
    GAMMA_REG_1_ <= n622;
    GAMMA_REG_0_ <= n627;
    Q_0 <= n2424;
    Q_1 <= n2427;
  end
endmodule
