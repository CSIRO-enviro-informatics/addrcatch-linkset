rdf = ''
with open('output-s.csv') as f:
        for line in f.readlines():
                wds = line.strip().split(',')
                id = 'ac:{}'.format(wds[0])
                s = 'ga:{}'.format(wds[1].replace('http://linked.data.gov.au/dataset/gnaf/address/', ''))
                o = 'gc:{}'.format(wds[2])
                ttl = '{}\n\trdf:subject {} ;\n\trdf:predicate geo:sfWithin ;\n\trdf:object {} .\n\n'.format(
                        id,
                        s,
                        o
                )
                rdf = rdf + ttl
print(rdf)
