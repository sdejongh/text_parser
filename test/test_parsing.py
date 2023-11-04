from text_parsing.file_parser import fsm_parse
from pprint import pprint

file = './lldp.txt'

pprint(fsm_parse(data_file=file, template_name='lldp'))