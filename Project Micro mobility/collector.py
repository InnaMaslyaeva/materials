# 1 Collect data from stations from site https://aqicn.org/station - run program

from pathlib import Path
from dataclasses import dataclass
from datetime import date
import csv

import requests

API_TOKEN = "text"
'''
,  , , ,   
bezirke = ['Mitte':          [10039, # Mitte, Brückenstraße
                             100030, # Mitte, Weding
                             13852, # Mitte, LepzigerStr                             
                              A155620       # Moabit 
                                -     # Hansaviertel 
                                 -    # Tiergarten                                      
                              A98833]       # Gesundbrunnen
           'Friedrichshain': [10038], # Friedrichshain, Frankfurter Allee
           'Kreuzberg',:[87265, 71698]
           'Pankow':         [10033], # Buch
                                      # Prenzlauer Berg, 
                                      # Weißensee,
                                      # Blankenburg,
                                      # Heinersdorf,
                                      # Karow,
                                      # Stadtrandsiedlung 
                                      # Malchow
                                      # Pankow,
                                      # Blankenfelde,
                                      # Buch,
                                      # Französisch Buchholz,
                                      # Niederschönhausen,
                                      # Rosenthal,
                                      # Wilhelmsruh

           'Charlottenburg-Wilmersdorf': [10031,],# Grunewald (3.5 m)
                                       #Charlottenburg,
                                       # Wilmersdorf,
                                       # Schmargendorf,
                                       # Grunewald,
                                       # Westend,
                                       # Charlottenburg-Nord,
                                       # Halensee

           'Spandau',
                                      # Haselhorst,
                                      # Siemensstadt,
                                      # Staaken,
                                      # Gatow,
                                      # Kladow,
                                      # Hakenfelde,
                                      # Falkenhagener Feld,
                                      # Wilhelmstadt

           'Steglitz-Zehlendorf': [10035], # Steglitz-Schildhornstr.
                                      # Steglitz,
                                      # Lichterfelde,
                                      # Lankwitz,
                                      # Zehlendorf,
                                      # Dahlem,
                                      # Nikolassee,
                                      # Wannsee,
                                      # Schlachtensee

           'Tempelhof-Schöneberg':[10040], # Mariendorfer Damm
           # Schöneberg,Friedenau,Tempelhof,Mariendorf,Marienfelde,Lichtenrade

           'Neukölln':       [10032, # Neukölln-Nansenstraße
                             10036, # Neukölln-Silbersteinstr
                             10037, # Neukölln-Karl-Marx-Str. 76
                             13851] # Karl-Marx-Straße
                             83071       # Neukölln,
                                    # Britz,
                                    # Buckow,
                                    # Rudow,
                                    # Gropiusstadt

           'Marzahn-Hellersdorf',
           'Reinickendorf',
                                   # Reinickendorf,
                                   #  Tegel,
                                   # Konradshöhe,
                                   # Heiligensee,
                                   # Frohnau,
                                   # Hermsdorf,
                                   # Waidmannslust,
                                   # Lübars
                                   # Wittenau,
                                   # Märkisches Viertel,
                                   # Borsigwalde,
           'Lichtenberg',
                                   # Friedrichsfelde,
                                   # Karlshorst,
                        57739,83998           # Lichtenberg,
                                   # Falkenberg,
                                   # Malchow,
                                   # Wartenberg,
                        83071           # Neu-Hohenschönhausen
                        61048/           # Alt-Hohenschönhausen,
                        239377           # Fennpfuhl,
                                   # Rummelsburg,
           'Treptow-Köpenick': [10034] # Friedrichshagen
                                    # Alt-Treptow,
                                    # Plänterwald,
                                    # Baumschulenweg,
                                    # Johannisthal,
                                    # Niederschöneweide,
                                    # Altglienicke,
                                    # Adlershof
                                    # Bohnsdorf,
                                    # Oberschöneweide,
                                    # Köpenick,
                                    # Friedrichshagen,
                                    # Rahnsdorf,
                                    # Grünau,
                                    # Müggelheim,
                                    # Schmöckwitz

            # Tempelhof-Schöneberg-Blankelfelde[6179]
            #'Spandau'[6188,] # Groß Glienicke
            #'Pankow'[6194]   # Bernau, Lohmühlenstr. v
            #'Schönefeld, Flughafen':[6200] # Schönefeld, Flughafen'
            ]


'''


PLACES = [
    {
        "name": "Antalja",
        "filename": "data_Antalja.csv",
        "stations": [4045, 13915, 14801],
    },
    {
        "name": "Dugopolje",
        "filename": "data_Dugopolje.csv",
        "stations": [5749]  # [470587]  # ['ams2-sveti-kajo'],
    },
    {
        "name": "Berlin",
        "filename": "data_Berlin.csv",
        "stations": [6132, 6179, 6188, 6194, 6198, 6200,
                     10030, 10031, 10032, 10033, 10034,
                     10035, 10036, 10037, 10038, 10039,
                     10040, 13847, 13851, 13852,
                     57739, 61048, 71698, 83071, 83998, 87265  # , 239377,
                     ],
    },
]
# Antalja
# STATIONS = [4045, 13915, 14801]
# file_name = 'data_Antalja.csv'

# Dugopolje
# STATIONS = [5749]
# file_name = 'data_Dugopolje.csv'

# Berlin
# STATIONS = [
#     6179, 6188, 6194, 6200, 10030, 10031, 10032, 10033, 10034, 10035, 10036, 10037, 10038, 10039, 10040, 13851, 13852
# ]
# file_name = 'data_Berlin.csv'


@dataclass
class MeasData:
    date: date
    id: int
    name: str
    lat: float
    long: float
    pm25: float | None = None
    pm10: float | None = None
    o3: float | None = None
    no2: float | None = None
    co: float | None = None


def process_place(name: str, filename: str, stations: list[int]):
    today = date.today()
    print(f"{today} ----- {name} -----")

    # считывание старого файда с данными и запоминание в data
    file_path = Path(filename)
    data: list[MeasData] = []
    if file_path.exists():
        with open(file_path, newline="") as csvfile:
            reader = csv.reader(csvfile, delimiter=",", quotechar='"')
            for idx, row in enumerate(reader):
                if idx > 0 and row:
                    data.append(
                        MeasData(
                            date.fromisoformat(row[0]),
                            int(row[1]), row[2], float(row[3]), float(row[4]),
                            float(row[4]), float(row[4]),
                            float(row[4]), float(row[4]), float(row[4]),
                        )
                    )

    data_by_date_and_id = {(d.date, d.id): d for d in data}

    # запрос и добавление в data_by_date_and_id недостающих данных
    for station_id in stations:
        print(f"Requesting @{station_id}... ", end="", flush=True)
        req_res = requests.get(
            f"http://api.waqi.info/feed/@{station_id}/?token={API_TOKEN}"
        )
        if req_res.ok:
            print("OK")
        else:
            print(f"FAILED - {req_res.status_code}")
            return

        req_data = req_res.json()
        city = req_data["data"].get("city", {})
        geo = city.get("geo")
        if geo is None:
            print(f"---- NO DATA FOR {station_id}")
            continue
        print(f"{geo[0]}:{geo[1]} {city.get('name', 'Unknown')}")

        forecast_daily = req_data["data"]["forecast"]["daily"]
        st_meas_by_date = {}
        for pollutant in ("pm25", "pm10", "o3", "no2", "co"):
            for day_data in forecast_daily.get(pollutant, []):
                dd_date = date.fromisoformat(day_data["day"])
                if dd_date > today:
                    continue
                st_meas_by_date.setdefault(dd_date, {})[
                    pollutant
                ] = day_data["avg"]
        print(f"{st_meas_by_date=}")
        for dd_date, val_by_p in st_meas_by_date.items():
            data_by_date_and_id[(dd_date, station_id)] = MeasData(
                dd_date, station_id, city['name'], geo[0], geo[1], **val_by_p
            )

    # print(data_by_date_and_id)

    q, qq = '"', '""'

    with open(file_path, "w") as outf:
        outf.write("date,station_id,satation_name,lat,long,pm25,pm10,o3,no2,co")
        for k in sorted(data_by_date_and_id):
            md = data_by_date_and_id[k]
            outf.write(
                f'\n{md.date.isoformat()},{md.id},"{md.name.replace(q, qq)}",'
                f'{md.lat},{md.long},{md.pm25 or ""},{md.pm10 or ""},'
                f'{md.o3 or ""},{md.no2 or ""},{md.co or ""}'
            )

    # "date,station_id,satation_name,lat,long,pm25,pm10,o3,no2,co"

    # file_path.write_text("\n".join(lines))


def main():
    for pl_dict in PLACES:
        process_place(
            pl_dict["name"], pl_dict["filename"], pl_dict["stations"]
        )


if __name__ == "__main__":
    main()
