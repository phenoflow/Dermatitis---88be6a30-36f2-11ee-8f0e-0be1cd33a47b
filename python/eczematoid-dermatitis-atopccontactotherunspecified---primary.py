# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2023.

import sys, csv, re

codes = [{"code":"14F1.00","system":"readv2"},{"code":"26C4.00","system":"readv2"},{"code":"C391211","system":"readv2"},{"code":"F4D3112","system":"readv2"},{"code":"F502400","system":"readv2"},{"code":"F502411","system":"readv2"},{"code":"M102.00","system":"readv2"},{"code":"M111.00","system":"readv2"},{"code":"M112.00","system":"readv2"},{"code":"M113.00","system":"readv2"},{"code":"M114.00","system":"readv2"},{"code":"M11A.00","system":"readv2"},{"code":"M12..00","system":"readv2"},{"code":"M12..12","system":"readv2"},{"code":"M12z100","system":"readv2"},{"code":"M12z300","system":"readv2"},{"code":"M12z400","system":"readv2"},{"code":"Myu2.00","system":"readv2"},{"code":"Myu2200","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('dermatitis-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["eczematoid-dermatitis-atopccontactotherunspecified---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["eczematoid-dermatitis-atopccontactotherunspecified---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["eczematoid-dermatitis-atopccontactotherunspecified---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
