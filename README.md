# Addresses/Catchments Linkset
Links between [GNAF](linked.data.gov.au/dataset/gnaf) Addresses and [Geofabric](linked.data.gov.au/dataset/geofabric) Catchments.

This is a LOC-I Project Linkset which is a specialised Dataset containing [RDF](https://www.w3.org/2001/sw/wiki/RDF) links between other LOC-I Project Linked Data Datasets. It is formulated according to the [VoID Linkset](https://www.w3.org/TR/void/) definition meaning that in addition to the actual links, some whole-of-Linkset metadata about who created the links and when is present as a dataset header.

## LOC-I Linksets's additional information
In addition to expected VoID Linkset information, this Linkset presents some additional per-link information. Where VoID would typically have a link of the form:

```
<DATATASET_A_OBJECT_ID_AA> <PREDICATE_X> <DATASET_B_OBJECT_ID_BB> .
```
showing that `OBJECT_AA` from `DATASET_A` is linked to `OBJECT_BB` from `DATASET_B` via the predicate `PREDICATE_X`, this Linkset, and other LOC-I Linksets has links of the form:

```
<STATEMENT_ID_N>
  rdf:subject <DATATASET_A_OBJECT_ID_AA> ;
  rdf:predicate <PREDICATE_X> ;
  rdf:object <DATASET_B_OBJECT_ID_BB> ;
  loci:hadGenerationMethod <METHOD_M> .
```

showing that `OBJECT_AA` is related to `OBJECT_BB` via `PREDICATE_X` but that the relation has an identifier, `STATEMENT_N` allowing it to be directly referenced and any amount of other metadata, such as a reference to the method used to generate this link, in this case `METHOD_M` indicated by the predicate `loci:hadGenerationMethod`.

This is an example of <a href="https://en.wikipedia.org/wiki/Reification_(computer_science)#RDF_and_OWL">RDF reification</a> where a typical RDF relation of a *Subject*, *Predicate* and *Object* is described as an `rdf:Statement` class object with the *Subject*, *Predicate* and *Object* values being indicated by `rdf:subject`, `rdf:predicate` and `rdf:object` properties from the base RDF ontology and other information, such as provenance information, like the reference to the method used to generate the relation here, added to the `rdf:Statement` class just as any RDF information is added to any other class.


## This Linkset's contents
This Linkset consists of the following files:

* [README.md](README.md) - this file, providing an introduction to the Linkset
* [ac.ttl](ac.ttl) - the Linkset data file. A 971MB RDF file, turtle format, encoding the total Linkset header information and data
* 

## License
The content of this API is licensed for use under the [Creative Commons 4.0 License](https://creativecommons.org/licenses/by/4.0/). See the [license deed](LICENSE) all details.


## Contacts
*Author*:  
**Nicholas Car**  
*Senior Experimental Scientist*  
CSIRO Land & Water, Environmental Informatics Group  
<nicholas.car@csiro.au>
