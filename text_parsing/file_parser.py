import os.path

import textfsm


def fsm_parse(data_file, template_name):

    template_file = os.path.join(os.path.dirname(__file__), 'templates', f'{template_name}.tpl')

    if not os.path.exists(template_file):
        raise FileNotFoundError(f"Template file not found: {template_file}")

    if not os.path.exists(data_file):
        raise FileNotFoundError(f"Data file not found: {data_file}")

    with open(data_file) as data_file:
        content = data_file.read()

    with open(template_file) as tpl:
        re_table = textfsm.TextFSM(tpl)
        data = re_table.ParseText(content)
        headers = re_table.header

    return [dict(zip(headers,entry)) for entry in data]
