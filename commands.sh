# command to reduce the CSV file
awk -F"," 'OFS="," {gsub("http://linked.data.gov.au/dataset/gnaf/address/","",$2);print $1,$2,$3}' ac.csv > ac1.csv

# command to convert the CSV to RDF (turtle)
awk -F "," 'BEGIN{OFS="\n"} NF{print ":"$1,"  s: "$2" ;", "  p: w: ;", "  o: c:" $3" ;", "  m: i: ."}' ac1.csv > ac.ttl

# script to copy data files via rsync
rsync -avz -e "ssh -i PATH_TO_SSH_KEY" --progress . SERVER_USER@SERVER_URL:/PATH_ON_SERVER/
