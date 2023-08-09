# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2023.

import sys, csv, re

codes = [{"code":"L20","system":"icd10"},{"code":"L23","system":"icd10"},{"code":"L24","system":"icd10"},{"code":"L25","system":"icd10"},{"code":"L26","system":"icd10"},{"code":"L27","system":"icd10"},{"code":"L28","system":"icd10"},{"code":"L30.0","system":"icd10"},{"code":"L30.1","system":"icd10"},{"code":"L30.2","system":"icd10"},{"code":"L30.5","system":"icd10"},{"code":"L30.8","system":"icd10"},{"code":"L30.9","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('dermatitis-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["dermatitis-atopccontactotherunspecified---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["dermatitis-atopccontactotherunspecified---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["dermatitis-atopccontactotherunspecified---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
