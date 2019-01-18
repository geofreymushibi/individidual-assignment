import json
import csv
#opening the file

with open("bangladesh.json") as f:
    bangladesh = json.load(f)

print(bangladesh)


with open('bangladesh.csv', 'w') as file:
    writer = csv.DictWriter(file, fieldnames=header, lineterminator='\n', delimiter=',')
    writer.writeheader()

    for entry in bangladesh:
        writer.writerow(entry)

with open("bangladesh.csv", 'w', newline = '') as file:
    
    filewriter = csv.writer(file)
    filewriter.writerow(["year", "typpe_of_violece", "dyad_name", "where_prec", "latitutde", "longitude", "geom_wkt", "priogrid_gid", "best"])
    for entry in bangladesh:
        filewriter.writerow([entry["year"], entry["type_of_violence"], entry["dyad_name"], entry["where_prec"], entry["latitude"], entry["longitude"], entry["geom_wkt"], entry["priogrid_gid"], entry["best"]])