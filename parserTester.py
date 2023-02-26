from pyswip import Prolog

# Load the Prolog code
prolog = Prolog()
prolog.consult('xml_parser.pl')

# Call the parse_xml_file predicate
prolog.query("parse_xml_file('bookstore.xml')")