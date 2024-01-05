FILENAME = "seed.sql"
with open(FILENAME) as oldfile:
    with open("lowercased" + "_" + FILENAME, 'w+') as newfile:
        for line in oldfile:
            newfile.write(line.lower())