from time import sleep

import requests

API_TOKEN = "text"


def main():
    points = set()
    for lat_i in range(30):
        lat = 52.3874 + lat_i * 0.00871
        for long_i in range(30):
            long = 13.1437 + long_i * 0.01987
            req_res = requests.get(
                f"http://api.waqi.info/feed/geo:{lat};{long}/?token={API_TOKEN}"
            )
            if req_res.ok:
                req_data = req_res.json()
                if (
                    not req_data["data"] or not req_data["data"]["idx"]
                    or not req_data["data"]["city"]
                ):
                    print("Ooops")
                    continue
                city = req_data["data"]["city"]
                geo = city["geo"]
                key = (int(req_data["data"]["idx"]),
                       geo[0], geo[1], city["name"])
                if key not in points:
                    print(*key)
                    points.add(key)
            else:
                print(f"FAILED - {req_res.status_code}")
                return

            sleep(0.1)

    with open("berlin_points.csv", "w") as outf:
        outf.write("id,lat,long,name")
        for point in sorted(points):
            name = point[3].replace('"', '""')
            outf.write(f'\n{point[0]},{point[1]},{point[2]},"{name}"')


main()
